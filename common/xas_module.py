#!/bin/env python
#===============================================[README]
# @FeifeiTian
# 2021.10.13
#===============================================<<
import csv
import json
from ase.calculators import vasp
import ase.io
import scipy.signal
import numpy
import copy
import inspect
import math
import os

def def_atom_findpeak( list1d_angle ):
    def_startfunc( locals() )

    _, _, array2d_xdata, array2d_ydata = def_vasp_outcar2xas()

    float_eigcore = -514.703961144

    _, array2d_ydata_alphabeta = def_xas_alphabeta( 
        list2d_angle = [list1d_angle], 
        array2d_ydata = array2d_ydata 
        )
    dict_peaks = def_xas_findpeaks(
        array1d_xdata=array2d_xdata, 
        array1d_ydata=array2d_ydata_alphabeta
        )
    array1d_energy_pcore = dict_peaks[ 'E(eV)' ] + float_eigcore
    def_print_paras( locals(), ['array1d_energy_pcore'])

    def_endfunc()

def def_chgrdf_workflow( 
        str_chgfile
        ):
    def_startfunc( locals() )

    if ( not def_has_numbers(str_chgfile) ):
        str_outfile = 'chgrdf.csv'
    elif ( str_chgfile[:6] == 'PARCHG' ):
        str_outfile = 'chgrdf.B' + str_chgfile[ 7:11] + '_K' + str_chgfile[12:16] + '.csv'
    elif ( str_chgfile[:3] == 'WFN'):
        str_outfile = 'chgrdf.B' + str_chgfile[13:17] + '_K' + str_chgfile[19:23] + '.csv'
    def_print_paras( locals(), ['str_outfile'] )

    array1d_r, array1d_rdf = def_chgrdf( str_chgfile=str_chgfile)

    def_xas_writedata( 
            list2d_header = [ ['r(ang)'], ['chgrdf'] ],
            list3d_data = [ array1d_r, array1d_rdf ],
            str_outfile = str_outfile
            )

    def_endfunc()
    return

def def_has_numbers(inputString):
    return any(char.isdigit() for char in inputString)

def def_chgrdf( 
        str_chgfile,    
        float_r0=3, 
        float_slice = 0.05
        ):
    def_startfunc( locals() )

    obj_chgcar = vasp.VaspChargeDensity(filename=str_chgfile)
    obj_atoms = obj_chgcar.atoms[0]
    array3d_chgdens = obj_chgcar.chg[0]

    array1d_cell_ngrid = numpy.array(numpy.shape(array3d_chgdens))
    int_ngrid = 1
    for int_i in array1d_cell_ngrid:
        int_ngrid *= int_i
    float_volume=obj_atoms.get_volume()
    if ( 'CHG' in str_chgfile ):
        float_chgsum = numpy.sum(array3d_chgdens) * float_volume / int_ngrid
    elif ( 'WFN' in str_chgfile ):
        float_chgsum = numpy.sum(array3d_chgdens) * float_volume * 2
    else:
        raise ValueError('str_chgfile not clear!')
    def_print_paras( locals(), ['array1d_cell_ngrid', 'float_volume', 'float_chgsum'] )

    array1d_atom1_pos = obj_atoms.get_positions()[0]
    array1d_cell_paras = obj_atoms.cell.cellpar()[0:3]
    array1d_grid_paras = array1d_cell_paras/array1d_cell_ngrid
    array1d_atom1_ngrid = array1d_atom1_pos/array1d_grid_paras
    def_print_paras( locals(), ['array1d_atom1_pos','array1d_grid_paras', 'array1d_cell_paras','array1d_atom1_ngrid'] )

    int_nslice = int(float_r0 // float_slice) + 1
    array1d_rdf = numpy.zeros( shape=(int_nslice) )
    float_r0_new = float_slice * int_nslice
    array1d_r0_ngrid = float_r0_new/array1d_grid_paras
    def_print_paras( locals(), ['int_nslice','float_r0_new','array1d_r0_ngrid'] )

    array1d_rangel = numpy.ceil(array1d_atom1_ngrid - array1d_r0_ngrid).astype(int)
    array1d_ranger = numpy.floor(array1d_atom1_ngrid + array1d_r0_ngrid).astype(int)
    def_print_paras( locals(), ['array1d_rangel','array1d_ranger'] )

    array1d_ngrid = numpy.empty( shape=(3), dtype=int )
    for array1d_ngrid[0] in range( array1d_rangel[0], array1d_ranger[0] ):
        print(array1d_ngrid[0])
        for array1d_ngrid[1] in range( array1d_rangel[1], array1d_ranger[1] ):
            for array1d_ngrid[2] in range( array1d_rangel[2], array1d_ranger[2] ):
                array1d_dist = ( array1d_ngrid - array1d_atom1_ngrid ) * array1d_grid_paras
                float_dist = numpy.sqrt( array1d_dist.dot( array1d_dist ) )
                if (float_dist >= float_r0_new): continue
                int_temp = int( float_dist // float_slice)
                array1d_ngrid %= array1d_cell_ngrid
                array1d_rdf[ int_temp ] += array3d_chgdens[ array1d_ngrid[0], array1d_ngrid[1], array1d_ngrid[2] ]
    
    if ( 'CHG' in str_chgfile ):
        array1d_rdf *= float_volume / int_ngrid / float_slice
    elif ('WFN' in str_chgfile):
        array1d_rdf *= float_volume * 2 / float_slice

    array1d_r = numpy.linspace( 0, float_r0_new, num=int_nslice, endpoint=False )
    array1d_r += float_slice/2

    def_endfunc()
    return array1d_r, array1d_rdf

def def_tm_findmax( array2d_xdata, array2d_ydata, array2d_kb, float_onset, str_abname, int_ntm=2, float_xwidth=0.5 ):
    def_startfunc( locals(), ['array2d_xdata', 'array2d_ydata','array2d_kb'] )

    str_jsonfile = 'xas_tm.'+str_abname+'.findtm.json'
    list1d_index_xwidth = []
    for int_i in range( numpy.shape(array2d_xdata)[0] ):
        float_x = array2d_xdata[ int_i ][0]
        if ( float_x < float_onset-float_xwidth or float_x > float_onset+float_xwidth): continue
        list1d_index_xwidth.append( int_i )
    list1d_index_xwidth_topn = numpy.argpartition( array2d_ydata[ list1d_index_xwidth ][:,0], -int_ntm )[-int_ntm:]
    list1d_index_topn = [ list1d_index_xwidth[int_i] for int_i in list1d_index_xwidth_topn ]

    array2d_xdata_topn = array2d_xdata[ list1d_index_topn ]
    array2d_ydata_topn = array2d_ydata[ list1d_index_topn ]
    array2d_kb_topn = array2d_kb[ list1d_index_topn ]
    def_print_paras( locals(), ['array2d_xdata_topn', 'array2d_ydata_topn', 'array2d_kb_topn'] )

    dict_jsonfile = {}
    dict_jsonfile[ 'array2d_xdata_topn' ] = array2d_xdata_topn
    dict_jsonfile[ 'array2d_ydata_topn' ] = array2d_ydata_topn
    dict_jsonfile[ 'array2d_kb_topn' ] = array2d_kb_topn
    with open( str_jsonfile, 'w' ) as obj_jsonfile:
        json.dump( obj=dict_jsonfile, fp=obj_jsonfile, indent=4, cls=NumpyEncoder )

    def_endfunc()
    return array2d_xdata_topn, array2d_ydata_topn, array2d_kb_topn

def def_xas_atom_abworkflow(  str_jsonfile, list2d_angle, list2d_atom, float_tm_scaling=5.0):
#----------------------------------------------[]
#----------------------------------------------[]
    def_startfunc( locals() )

    dict_jsonfile={}
    with open(str_jsonfile) as obj_jsonfile:
        dict_jsonfile = json.load( fp=obj_jsonfile )
    float_align = dict_jsonfile['float_align']
    float_scaling = dict_jsonfile['float_scaling']

    str_chdir=list2d_atom[0][0]
    os.chdir(str_chdir)
    print(os.getcwd())
    float_finalenergy_1 = def_vasp_finalenergy()
    os.chdir('..')

    int_l=str_jsonfile.find('.')
    int_r=str_jsonfile.rfind('.')
    str_abname=str_jsonfile[(int_l+1):int_r]
    def_print_paras( locals(), ['str_abname'] )
    for list1d_atom in list2d_atom:
        str_chdir = list1d_atom[0]
        os.chdir(str_chdir)
        print(os.getcwd())
        #----------------------------------------------[alignscaling]
        array2d_xdata_align, array2d_ydata_scaling, array2d_tm_xdata_align, array2d_tm_ydata_scaling, array2d_tm_kb = def_xas_atom_alignscaling( float_align=float_align, float_scaling=float_scaling, float_finalenergy_1=float_finalenergy_1 )
        #----------------------------------------------[
        array2d_ydata = array2d_ydata_scaling
        list1d_yheader, array2d_ydata_alphabeta = def_xas_alphabeta( list2d_angle=list2d_angle, array2d_ydata=array2d_ydata )

        list2d_header = [['E(eV)'], list1d_yheader]
        list3d_data = [array2d_xdata_align, array2d_ydata_alphabeta]
        str_outfile = 'xas.'+str_abname+'.csv'
        def_xas_writedata( list2d_header=list2d_header, list3d_data=list3d_data, str_outfile=str_outfile)
        #----------------------------------------------[
        array2d_ydata = array2d_tm_ydata_scaling
        _, array2d_tm_ydata_alphabeta = def_xas_alphabeta( list2d_angle=list2d_angle, array2d_ydata=array2d_ydata )

        list2d_header = [ ['Kpoint', 'Band'] ] + list2d_header
        list3d_data = [ array2d_tm_kb, array2d_tm_xdata_align, array2d_tm_ydata_alphabeta * float_tm_scaling]
        str_outfile = 'xas_tm.'+str_abname+'.csv'
        def_xas_writedata( list2d_header=list2d_header, list3d_data=list3d_data, str_outfile=str_outfile)
        os.chdir('..')

    def_endfunc()

def def_xas_atom_alignscaling(float_align, float_scaling, float_finalenergy_1):
#----------------------------------------------[]
#----------------------------------------------[]
    def_startfunc( locals() )

    #----------------------------------------------[extract]
    _, _, array2d_xdata, array2d_ydata = def_vasp_outcar2xas()
    #----------------------------------------------[alignscaling]
    float_finalenergy = def_vasp_finalenergy()
    float_sft = float_finalenergy-float_finalenergy_1
    float_sft += float_align
    array2d_xdata_align = array2d_xdata + float_sft
    array2d_ydata_scaling = array2d_ydata * float_scaling
    #----------------------------------------------[tm]
    array2d_tm_xdata, array2d_tm_ydata, array2d_tm_kb = def_xas_tm_extract()
    array2d_tm_xdata_align = array2d_tm_xdata + float_sft
    array2d_tm_ydata_scaling = array2d_tm_ydata * float_scaling

    def_endfunc()
    return array2d_xdata_align, array2d_ydata_scaling, array2d_tm_xdata_align, array2d_tm_ydata_scaling, array2d_tm_kb

def def_xas_tm_extract( str_datfile='MYCARXAS' ):
#------------------------------[]
#------------------------------[]
    def_startfunc( locals() )
    
    list1d_column = [0]
    str_datfile = str_datfile
    _, array2d_tm_xdata = def_xas_extract( str_datfile=str_datfile, list1d_column=list1d_column, log_head=False)
    
    list1d_column = [1,2,3]
    str_datfile = str_datfile
    _, array2d_tm_ydata = def_xas_extract( str_datfile=str_datfile, list1d_column=list1d_column, log_head=False)

    list1d_column = [7]
    str_datfile = str_datfile
    _, array2d_tm_band = def_xas_extract( str_datfile=str_datfile, list1d_column=list1d_column, log_head=False, dtype=int )

    int_lenline = numpy.shape( array2d_tm_band )[0]
    int_nb = numpy.amax( array2d_tm_band )
    int_nk = int_lenline//int_nb
    def_print_paras( locals(), ['int_lenline','int_nb','int_nk'] )
    array2d_tm_kb = numpy.empty( shape=(int_lenline, 2), dtype= int )
    array2d_tm_kb[:,1:2] = array2d_tm_band
    for int_k in range(int_nk):
        array2d_tm_kb[ int_nb*int_k:int_nb*(int_k+1) ,0].fill( int_k+1 )

    def_endfunc()
    return array2d_tm_xdata, array2d_tm_ydata, array2d_tm_kb

def def_xas_exp_xyfit( list2d_alpha, str_outfile='xas_exp.xyfit.csv' ):
#----------------------------------------------[]
# list2d_alpha = []
# list2d_alpha.append( [20, '20210924.Pt.110.a20.csv'] )
# list2d_alpha.append( [41, '20210924.Pt.110.a41.csv'] )
#----------------------------------------------[]
    def_startfunc( locals() )

    int_lenalpha = len(list2d_alpha)
    array1d_alpha = numpy.empty( shape=(int_lenalpha) )
    list2d_data = []
    for int_i in range(int_lenalpha):
        array1d_alpha[int_i] = list2d_alpha[ int_i ][ 0 ]
        str_datfile = list2d_alpha[ int_i ][ 1 ]
        str_xheader, list1d_yheader, array1d_xdata, array2d_ydata = def_xas_extract( str_datfile=str_datfile, int_xcolumn=0, list1d_ycolumn=[1] )
        list2d_data.append( [ array1d_xdata, array2d_ydata] )

    array1d_sinalpha2 = numpy.sin( numpy.radians( array1d_alpha ) ) **2
    def_print_paras( locals(), ['array1d_sinalpha2'] )

    array1d_xdata_interp, list1d_ydata_interp = def_xas_interp( list2d_data )

    int_len1dxdata = len( array1d_xdata_interp )
    def_print_paras( locals(), ['int_len1dxdata'] )

    array1d_ydata_fit = numpy.empty( shape=(int_len1dxdata) )    
    array1d_temp = numpy.empty( shape=(int_lenalpha) )
    for int_i in range( int_len1dxdata ):
        for int_j in range( int_lenalpha ):
            array1d_temp[int_j] = list1d_ydata_interp[int_j][int_i]
        polyfit = numpy.polynomial.Polynomial.fit( array1d_sinalpha2, array1d_temp, 1 )
        array1d_ydata_fit[ int_i ] = numpy.sum( polyfit.convert().coef )

    array2d_ydata = numpy.reshape( array1d_ydata_fit, newshape=( int_len1dxdata,1 ) )
    def_xas_writedata( array1d_xdata=array1d_xdata_interp, array2d_ydata=array2d_ydata, str_xheader='E(eV)', list1d_yheader=['sigma_xyfit'], str_outfile=str_outfile)

class class_structures(object):

    @property
    def str_chdir(self):
        return self._str_chdir
    @str_chdir.setter
    def str_chdir(self, str_temp):
        self._str_chdir = str_temp
  
    @property
    def list2d_atom(self):
        return self._list2d_atom

    @list2d_atom.setter
    def list2d_atom(self, list_temp):
        float_sum = 0
        for list_i in list_temp: float_sum += list_i[1]
        for list_i in list_temp: list_i[1] /= float_sum
        for list_i in list_temp: list_i[0] = 'atom_'+str(list_i[0])
        self._list2d_atom = list_temp

def def_xas_ave( list2d_atom, str_outfile = 'xas.ave.csv'):
#----------------------------------------------[]
# list2d_atom = []
# list2d_atom.append([ 1,2.0])
#----------------------------------------------[]
    def_startfunc( locals() )

    str_chdir=list2d_atom[0][0]
    os.chdir(str_chdir)
    print(os.getcwd())
    float_finalenergy_1 = def_vasp_finalenergy()
    os.chdir('..')

    list2d_data = []
    for list1d_atom in list2d_atom:

        str_chdir = list1d_atom[0]
        float_scaling = list1d_atom[1]
        os.chdir(str_chdir)
        print(os.getcwd())

        str_xheader, list1d_yheader, array1d_xdata, array2d_ydata = def_vasp_outcar2xas()

        float_finalenergy = def_vasp_finalenergy()
        float_sft = float_finalenergy-float_finalenergy_1 
        array1d_xdata_sft = def_xas_sft( array1d_xdata=array1d_xdata, float_sft=float_sft)

        array1d_xdata = array1d_xdata_sft
        list_ycolums = list(range(len(array2d_ydata[0])))
        list2d_data.append( [ array1d_xdata, array2d_ydata, list_ycolums, float_scaling ] )

        os.chdir('..')

    array1d_xdata_mix, array2d_ydata_mix = def_xas_mix(list2d_data=list2d_data)
    def_xas_writedata( array1d_xdata=array1d_xdata_mix, array2d_ydata=array2d_ydata_mix, str_xheader=str_xheader, list1d_yheader=list1d_yheader, str_outfile=str_outfile)

def def_xas_abworkflow( list1d_alignangle, list1d_scalingangle, float_onset, list2d_angle, str_outfile, str_datfile='xas.ave.csv'):
#----------------------------------------------[]
# list_alignangle = [ alpha0, beta0 ]
# list_scalingangle = [ alpha1, beta1 ]
# float_onset = 530.6
#----------------------------------------------[]
    def_startfunc( locals() )
    
    #--------------------------------------------------[extract]
    int_xcolumn = 0
    list1d_ycolumn = [1,2,3]
    str_xheader, _, array1d_xdata_origin, array2d_ydata_origin = def_xas_extract( str_datfile=str_datfile, int_xcolumn=int_xcolumn, list1d_ycolumn=list1d_ycolumn )
    
    #--------------------------------------------------[alignscaling]
 
    str_abname = def_abname( alpha=list1d_scalingangle[0], beta=list1d_scalingangle[1])
    str_jsonfile = 'xas.'+str_abname+'.json'
    array1d_xdata = array1d_xdata_origin
    array2d_ydata = array2d_ydata_origin
    array1d_xdata_align, array2d_ydata_scaling = def_xas_alignscaling( array1d_xdata=array1d_xdata, array2d_ydata=array2d_ydata, list1d_alignangle=list1d_alignangle, list1d_scalingangle=list1d_scalingangle, float_onset=float_onset, str_jsonfile=str_jsonfile )
    
    array2d_ydata = array2d_ydata_scaling
    list1d_yheader, array2d_ydata_alphabeta = def_xas_alphabeta( list2d_angle=list2d_angle, array2d_ydata=array2d_ydata )

    array1d_xdata = array1d_xdata_align
    array2d_ydata = array2d_ydata_alphabeta
    def_xas_writedata( array1d_xdata=array1d_xdata, array2d_ydata=array2d_ydata, str_xheader=str_xheader, list1d_yheader=list1d_yheader, str_outfile=str_outfile)

    def_endfunc() 
    return

def def_xas_alignscaling( array1d_xdata, array2d_ydata, list1d_alignangle, list1d_scalingangle, float_onset,str_jsonfile, tuple_xrange = (527.0, 540.0), float_scalingarea = 20.0 ):
#----------------------------------------------[]
# list_alignangle = [ alpha0, beta0 ]
# list_scalingangle = [ alpha1, beta1 ]
# float_onset = 530.6
#----------------------------------------------[]
    def_startfunc( locals(), ['array1d_xdata', 'array2d_ydata'] )
    
    array1d_xdata_origin = array1d_xdata
    array2d_ydata_origin = array2d_ydata
    #--------------------------------------------------[align]
    list2d_angle=[ list1d_alignangle ]
    _, array2d_ydata_alphabeta = def_xas_alphabeta( list2d_angle=list2d_angle, array2d_ydata=array2d_ydata )
    
    array1d_xdata = array1d_xdata_origin
    array2d_ydata = array2d_ydata_alphabeta
    list1d_peakx = def_xas_findpeaks( array1d_xdata=array1d_xdata, array2d_ydata=array2d_ydata)
    
    array1d_xdata = array1d_xdata_origin
    float_align = float_onset - list1d_peakx[0]
    array1d_xdata_align = array1d_xdata + float_align
    dict_jsonfile = {}
    dict_jsonfile[ 'float_align' ] = float_align
    #--------------------------------------------------[scaling]
    list2d_angle = [ list1d_scalingangle ] 
    array2d_ydata = array2d_ydata_origin
    _, array2d_ydata_alphabeta = def_xas_alphabeta(list2d_angle=list2d_angle, array2d_ydata=array2d_ydata )
    
    array1d_xdata = array1d_xdata_align
    array2d_ydata = array2d_ydata_alphabeta
    print( array2d_ydata )
    float_area = def_xas_findarea( array1d_xdata=array1d_xdata, array2d_ydata=array2d_ydata, tuple_xrange=tuple_xrange)
    float_scaling = float_scalingarea/float_area
    dict_jsonfile[ 'float_scaling' ] = float_scaling

    array2d_ydata_scaling=array2d_ydata_origin*float_scaling
    #--------------------------------------------------[output]
    with open( str_jsonfile, 'w' ) as obj_jsonfile:
        json.dump( obj=dict_jsonfile, fp=obj_jsonfile, indent=4 )

    def_endfunc()
    return array1d_xdata_align, array2d_ydata_scaling

def def_xas_alphabeta( list2d_angle, array2d_ydata ):
#----------------------------------------------[]
# list2d_angle = []
# list2d_angle.append( [alpha1, beta1] )
# list2d_angle.append( [alpha2, beta2] )
# array2d_ydata:
#   x,y,z
#   ...
#----------------------------------------------[]
    def_startfunc( locals(), ['array2d_ydata'] )

    int_shape2dydata0 = numpy.shape(array2d_ydata)[0]
    def_print_paras( locals(), ['int_shape2dydata0'] )
    array2d_ydata_alphabeta = numpy.empty( shape=(int_shape2dydata0, len(list2d_angle)) )
    list1d_yheader = []
    for int_i in range(len(list2d_angle)):
        alpha, beta = list2d_angle[int_i]
        str_yheader = 'a'+str(alpha)+'_b'+str(beta)
        list1d_yheader.append( str_yheader )
    
        array1d_weight = def_weight (alpha,beta)
        array1d_ydata_dot = numpy.dot(array2d_ydata, array1d_weight)

        array2d_ydata_alphabeta[:,int_i] = array1d_ydata_dot

    return list1d_yheader, array2d_ydata_alphabeta

def def_weight (alpha,beta):
#----------------------------------------------[]
# Suitable for Dichroism.
#-------------------------[in]
# alpha: float, degree angle
# beta:  float, degree angle
#-------------------------[out]
# array1d_weight:  list, shape(3)
#               array1d_weight[1] = array1d_weight[0]
#               sigma = [sigma_x, sigma_y, sigma_z]*array1d_weight
#----------------------------------------------[]
    alpha = math.radians (alpha)
    beta = math.radians (beta)
    array1d_weight = numpy.empty( shape=(3) )
    array1d_weight[0]= (0.5 * (math.cos(beta)**2 + math.sin(alpha)**2 * math.sin(beta)**2))
    array1d_weight[1]= (array1d_weight[0])
    array1d_weight[2]= (math.cos(alpha)**2 * math.sin(beta)**2)
    return array1d_weight

def def_vasp_finalenergy():
    def_startfunc( locals() )

    float_finalenergy = ase.io.read( filename='OUTCAR' ).get_total_energy()
    print( json.dumps({'float_finalenergy': float_finalenergy}, indent=4))

    def_endfunc()
    return float_finalenergy

def def_vasp_outcar2xas():
    def_startfunc( locals() )

    str_tempfile = 'outcar2xas.tmp'
    with open( 'OUTCAR', 'r' ) as obj_datfile:
        for str_line in obj_datfile:
            if (str_line.strip() == 'frequency dependent IMAGINARY DIELECTRIC FUNCTION (independent particle, no local field effects) density-density'):
                break
        with open( str_tempfile, mode='w' ) as obj_tmp: 
            str_line = next(obj_datfile)
            obj_tmp.write( str_line )
            str_line = next(obj_datfile)
            for str_line in obj_datfile:
                if (not str_line.strip()): break
                obj_tmp.write( str_line )

    list1d_column = [0]
    str_datfile = str_tempfile
    list1d_xheader, array2d_xdata = def_xas_extract( str_datfile=str_datfile, list1d_column=list1d_column )

    list1d_column = [1,2,3]
    list1d_yheader, array2d_ydata = def_xas_extract( str_datfile=str_datfile, list1d_column=list1d_column )

    int_shapexdata = numpy.shape(array2d_xdata)[0]
    def_print_paras( locals(),['int_shapexdata'] )
    for int_i in range(int_shapexdata):
        array2d_ydata[int_i,:] *= array2d_xdata[int_i][0]

    os.remove( str_tempfile )

    def_endfunc()
    return list1d_xheader, list1d_yheader, array2d_xdata, array2d_ydata

def def_xas_sft( array1d_xdata, float_sft):
    def_startfunc( locals(), ['array1d_xdata'] )

    array1d_xdata_sft = array1d_xdata + float_sft

    def_endfunc()
    return array1d_xdata_sft

def def_xas_writedata( list2d_header, list3d_data, str_outfile):
    def_startfunc( locals(), ['list3d_data'] )

    with open( str_outfile, 'w', newline='' ) as obj_outfile:
        obj_outwriter = csv.writer( obj_outfile, delimiter=',' )
        # header
        list1d_header = []
        for list1d_temp in list2d_header: 
            list1d_header.extend( list1d_temp )
        obj_outwriter.writerow( list1d_header )
        
        int_lenline = numpy.shape( list3d_data[0] )[0]
        def_print_paras( locals(),['int_lenline'] )
        for int_i in range(len(list3d_data)):
            if ( list3d_data[int_i].ndim == 2 ): continue
            list3d_data[int_i] = list3d_data[int_i].reshape(int_lenline,1)
        for int_i in range(int_lenline):
            list1d_data = []
            for array2d_temp in list3d_data:
                list1d_data.extend( array2d_temp[int_i]  ) 
            obj_outwriter.writerow( list1d_data )

    def_endfunc()
    return

def def_xas_findarea( array1d_xdata, array2d_ydata, tuple_xrange):
    def_startfunc( locals(), ['array1d_xdata', 'array2d_ydata'] )

    array_ydata = numpy.reshape( a=array2d_ydata, newshape=-1 )
 
    array_x_new=[]
    array_y_new=[]

    for int_i in range(len(array1d_xdata)):
        float_x = array1d_xdata[int_i]
        float_y = array_ydata[int_i]
        if ( float_x > tuple_xrange[0] and float_x < tuple_xrange[1] ):
            array_x_new.append( float_x )
            array_y_new.append( float_y )

    float_area = numpy.trapz( y=array_y_new, x=array_x_new )
    print(json.dumps( obj={'float_area':float_area}, indent=4))

    def_endfunc()
    return float_area

def def_xas_findpeaks( 
        array1d_xdata, 
        array1d_ydata, 
        float_relheight = 0.4, 
        float_relprominence = 0.02
        ):
#------------------------------[]
#------------------------------[]
    def_startfunc( locals(), ['array1d_xdata', 'array1d_ydata'] )

    array1d_xdata = numpy.reshape( a=array1d_xdata, newshape=-1 )
    array1d_ydata = numpy.reshape( a=array1d_ydata, newshape=-1 )

    float_y_max = max(array1d_ydata)

    array1d_peak_indices, dict_properties = scipy.signal.find_peaks( 
        array1d_ydata, 
        height = float_relheight * float_y_max, 
        prominence = float_relprominence * float_y_max
        )
    
    dict_peaks = {}
    dict_peaks[ 'E(eV)' ] = array1d_xdata[ array1d_peak_indices ]
    dict_peaks[ 'relheight' ] = dict_properties[ 'peak_heights' ] / float_y_max
    dict_peaks[ 'relprominence' ] = dict_properties[ 'prominences' ] / float_y_max
    def_print_paras( locals(),['dict_peaks'])

    def_endfunc()
    return dict_peaks

def def_xas_interp(list2d_data):
#------------------------------[]
# list2d_data = []
# list_data.append( [ array1d_xdata, array2d_ydata ] )
#------------------------------[]
    def_startfunc()

    float_xl = float('-inf')
    float_xr = float('+inf')
    for list1d_data in list2d_data:
        array1d_xdata = list1d_data[0]
        float_xl = max( float_xl, numpy.amin( array1d_xdata ))
        float_xr = min( float_xr, numpy.amax( array1d_xdata ))

    dict_json = {}
    dict_json[ 'float_xl' ] = float_xl
    dict_json[ 'float_xr' ] = float_xr
    print( json.dumps( dict_json, indent=4 ) )

    int_shape1dxdata = numpy.shape(list2d_data[0][0])[0]
    dict_json = {}
    dict_json[ 'int_shape1dxdata' ] = int_shape1dxdata
    print( json.dumps( dict_json, indent=4 ) )

    array1d_xdata_interp = numpy.linspace( start=float_xl, stop=float_xr, num=int_shape1dxdata )

    list1d_ydata_interp = []
    for list1d_data in list2d_data:
        array1d_xdata = list1d_data[0]
        array2d_ydata = list1d_data[1]
        int_shape2dydata_1 = numpy.shape( array2d_ydata )[1]
        array2d_temp = numpy.empty( shape=(int_shape1dxdata, int_shape2dydata_1) )
        for int_i in range(int_shape2dydata_1):
            array2d_temp[:,int_i] = numpy.interp( x=array1d_xdata_interp, xp=array1d_xdata, fp=array2d_ydata[:,int_i] )

        list1d_ydata_interp.append( array2d_temp )

    def_endfunc()
    return array1d_xdata_interp, list1d_ydata_interp

def def_xas_mix(list2d_data):
#------------------------------[]
# list2d_data = []
# list2d_data.append( [ array1d_xdata, array2d_ydata, [0,2], 0.7 ] )
#------------------------------[]
    dict_args = copy.deepcopy(locals()) 
    for list_temp in dict_args['list2d_data']:
        del list_temp[0:2]
    def_startfunc( dict_args )

    list2d_xydata = []
    for list1d_data in list2d_data:
        list2d_xydata.append( [ list1d_data[0], list1d_data[1] ] )
    array1d_xdata_interp, list1d_ydata_interp = def_xas_interp( list2d_xydata )

    int_len1dxdata = len( array1d_xdata_interp )
    int_lenycolumn = len( list2d_data[0][2] )
    array2d_ydata_mix = numpy.zeros( shape=(int_len1dxdata, int_lenycolumn) )

    int_len2ddata = len(list2d_data)
    for int_i in range(int_len2ddata):
        list1d_ycolumn = list2d_data[int_i][2]
        array2d_ydata = list1d_ydata_interp[ int_i][:, list1d_ycolumn ]
        float_scaling = list2d_data[int_i][3]
        array2d_ydata_mix += array2d_ydata * float_scaling

    def_endfunc()
    return array1d_xdata_interp, array2d_ydata_mix

def def_xas_extract( str_datfile, list1d_column, log_head=True, dtype=float ):
#------------------------------[]
#------------------------------[]
    def_startfunc( locals() )

    with open( str_datfile, 'r', newline='' ) as obj_datfile:
        obj_datreader = csv.reader( filter( lambda row: (row.strip() and (row.strip()[0]!='#')), obj_datfile ), delimiter= ' ', skipinitialspace=True )
        if log_head:
            list1d_line = next(obj_datreader)
        list1d_line = next(obj_datreader)
        if (',' in list1d_line[0]):
            delimiter=','
        else:
            delimiter=' '
    def_print_paras( locals(),['delimiter'] )

    list1d_header = []
    list2d_data = []
    with open( str_datfile, 'r', newline='' ) as obj_datfile:
        obj_datreader = csv.reader( filter( lambda row: (row.strip() and (row.strip()[0]!='#')), obj_datfile ), delimiter=delimiter, skipinitialspace=True )
        if log_head:
            list1d_line = next(obj_datreader)
            list1d_header = [ list1d_line[i] for i in list1d_column ]
        else:
            list1d_header = [ '' for i in list1d_column ]
        def_print_paras( locals(),['list1d_header'] )

        for list1d_line in obj_datreader:
            if ( not list1d_line[ list1d_column[0] ] ): continue
            list_temp = []
            for int_i in list1d_column:
                list_temp.append( list1d_line[int_i] )
            list2d_data.append( list_temp )
    array2d_data = numpy.array( list2d_data, dtype=dtype )
    tup_shapedata = numpy.shape(array2d_data)
    def_print_paras( locals(),['tup_shapedata'] )
 
    def_endfunc()
    return list1d_header, array2d_data

def def_abname( alpha, beta ):
    str_abname = 'a'+str(alpha)+'_b'+str(beta)
    return str_abname

def def_print_paras( dict_localpara, list_paraname ):
    dict_paraprint = {}
    for str_paraname in list_paraname:
        dict_paraprint[ str_paraname ] = dict_localpara[ str_paraname ]
    print(json.dumps( dict_paraprint, indent=4, cls=NumpyEncoder ))

class NumpyEncoder(json.JSONEncoder):
#----------------------------------------------[]
# https://stackoverflow.com/questions/26646362/numpy-array-is-not-json-serializable
#----------------------------------------------[]
    """ Special json encoder for numpy types """
    def default(self, obj):
        if isinstance(obj, numpy.integer):
            return int(obj)
        elif isinstance(obj, numpy.floating):
            return float(obj)
        elif isinstance(obj, numpy.ndarray):
            return obj.tolist()
        elif isinstance(obj, type):
            return str(obj)
        return json.JSONEncoder.default(self, obj)

def def_startfunc( dict_args={}, list1d_del=[] ):
    this_function_name = inspect.currentframe().f_back.f_code.co_name
    print("#"+'-'*20+"["+this_function_name+"]\n")
    for str_del in list1d_del:
        del dict_args[ str_del ]
    print(json.dumps( obj=dict_args, indent=4, cls=NumpyEncoder ))

def def_endfunc():
    print("#"+'-'*20+"<<\n")