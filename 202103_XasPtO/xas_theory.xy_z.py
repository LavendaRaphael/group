#!/bin/env python
import math
from from_xas_modules import *
import os

def def_weight (alpha,beta):
    alpha = math.radians (alpha)
    beta = math.radians (beta)
    result = []
    result.append (0.5 * (math.cos(beta)**2 + math.sin(alpha)**2 * math.sin(beta)**2))
    result.append (result[0])
    result.append (math.cos(alpha)**2 * math.sin(beta)**2)
    return result

list_dirs=[]
list_dirs.append('Pt.110.x12y2z4.5_O22_vac15/')
list_dirs.append('Pt.110.x2y3z4.5_O1_vac15/')
list_dirs.append('Pt.110.x2y3z4.5_O2.13_vac15/')
list_dirs.append('Pt.110.x2y4z4.5_O3.137_vac15/')
list_dirs.append('Pt.110.x2y3z4.5_O3.135_vac15/')
list_dirs.append('Pt.110.x2y3z4.5_O2.12_vac15/')
list_dirs.append('Pt.110.x2y3z4.5_O2.14_vac15/')
list_dirs.append('Pt.110.x2y4z4.5_O3.148_vac15/')
list_dirs.append('Pt.110.x2y4z4.5_O4.1458_vac15/')
list_dirs.append('Pt.110.x2y3z4.5_O3.123_vac15/')
list_dirs.append('Pt.110.x2y4z4.5_O4.1237_vac15/')
list_dirs.append('Pt.110.x2y3z4.5_O4.v56_vac15/')
list_dirs.append('Pt.110.x2y4z4.5_O6.v56_vac15/')
list_dirs.append('Pt.110.x2y3z4.5_O6_vac15/')

for str_dir in list_dirs:
    str_dir = '/home/faye/group/202103_XasPtO/server/Pt.110_O_vac/'+str_dir+'vasp_sch/'
    os.chdir(str_dir)
    
    #----------------------------------[Pt.111]
    #str_datfile = 'xas.dat'
    #float_onset = 530.1
    
    #----------------------------------[Pt.110]
    str_datfile = 'xas_ave.dat'
    float_onset = 529.6
    
    #--------------------------------------------------[extract]
    int_xcolumn = 0
    list_ycolumns = [1,2,3]
    _, _, list_xdata_origin, list_ydatas_origin = def_xas_extract( str_datfile=str_datfile, int_xcolumn=int_xcolumn, list_ycolumns=list_ycolumns )
    
    #--------------------------------------------------[sft]
    list_datas = [ (list_xdata_origin, list_ydatas_origin, [2], 1.0) ]
    list_xdata_mix, list_ydatas_mix = def_xas_mix( list_datas=list_datas )
    
    list_xdata = list_xdata_mix
    list_ydatas = list_ydatas_mix
    float_relheight = 0.4
    float_relprominence = 0.02
    list_peaks = def_xas_findpeaks( list_xdata=list_xdata, list_ydatas=list_ydatas, float_relheight=float_relheight, float_relprominence=float_relprominence )
    
    list_xdata = list_xdata_mix
    float_sft = float_onset - list_peaks[0]
    list_xdata_sft = def_xas_sft( list_xdata=list_xdata, float_sft=float_sft)
    #--------------------------------------------------[norm]
    alpha=20
    beta = 90
    list_xdata = list_xdata_sft
    list_ydatas = list_ydatas_origin
    list_weight = def_weight (alpha,beta)
    list_datas = []
    list_datas.append( (list_xdata, list_ydatas, [0], list_weight[0]) )
    list_datas.append( (list_xdata, list_ydatas, [1], list_weight[1]) )
    list_datas.append( (list_xdata, list_ydatas, [2], list_weight[2]) )
    list_xdata_mix, list_ydatas_mix = def_xas_mix( list_datas=list_datas)
    
    list_xdata = list_xdata_mix
    list_ydatas = list_ydatas_mix
    tuple_xrange = (527.0, 540.0)
    float_area = def_xas_findarea( list_xdata=list_xdata, list_ydatas=list_ydatas, tuple_xrange=tuple_xrange)
    
    list_ydatas = list_ydatas_origin
    float_normarea = 20.0
    float_scaling = float_normarea/float_area
    list_datas=[]
    list_datas.append( [list_xdata, list_ydatas, [0,1,2], float_scaling] )
    list_xdata_mix, list_ydatas_mix = def_xas_mix( list_datas )
    #--------------------------------------------------[mix]
    list_xdata_save = list_xdata_mix
    list_ydatas_save = list_ydatas_mix
    list_alpha=[90,0]
    list_beta=[45,90]
    
    #----------------------------------[XY]
    #alpha = 90
    #beta = 45
    #----------------------------------[Z]
    #alpha = 0
    #beta = 90
    
    for i in range(len(list_alpha)):
        alpha = list_alpha[i]
        beta = list_beta[i]
        str_outfile = 'xas_a'+str(alpha)+'_b'+str(beta)+'.csv'
        
        list_xdata = list_xdata_save
        list_ydatas = list_ydatas_save
    
        list_weight = def_weight (alpha,beta)
        list_datas = []
        list_datas.append( (list_xdata, list_ydatas, [0], list_weight[0]) )
        list_datas.append( (list_xdata, list_ydatas, [1], list_weight[1]) )
        list_datas.append( (list_xdata, list_ydatas, [2], list_weight[2]) )
        list_xdata_mix, list_ydatas_mix = def_xas_mix( list_datas=list_datas)
        
        list_xdata = list_xdata_mix
        list_ydatas = list_ydatas_mix
        str_xheader = 'E(eV)'
        list_yheaders = ['Intensity(a'+str(alpha)+'b'+str(beta)+')']
        def_xas_writedata( list_xdata=list_xdata, list_ydatas=list_ydatas, str_xheader=str_xheader, list_yheaders=list_yheaders, str_outfile=str_outfile)