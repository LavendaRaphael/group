array pic[100]
do for [i=1:100] {pic[i]=0}

array nplot=[30,31]
do for [i=1:|nplot|] {pic[nplot[i]]=1}

# 42 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/xspectra.hch_fch_nch.pdf
# 41 Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/xspectra.epsilon100.pdf
# 40 Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/xspectra.epsilon010.pdf
# 39 Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/xspectra.epsilon001.pdf
# 38 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra.desmooth.pdf
# 37 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra.terminator.pdf
# 36 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra.cutocc.pdf
# 35 Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/scf_3/xspectra.epsilon.pdf
# 34 Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/scf_11/xspectra.epsilon.pdf
# 33 Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/scf_1/xspectra.epsilon.pdf
# 32 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra.epsilon.pdf
# 31 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/aimd/temperature_time.pdf
# 30 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/aimd/energy_time.pdf
# 29 Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/xspectra.theory-O1-O11_exp.pdf
# 28 Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/xspectra.theory-O11_exp.pdf
# 27 Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/xspectra.theory-O1_exp.pdf
# 26 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.theory_exp.pdf
# 25 ../zrsun/Pt-111.miller_prl_2011.pdf
# 24 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.wfc_rho.pdf
# 23 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.xniter.pdf
# 22 Pt-111_O_vac/xspectra.supercell.pdf
# 21 ../asist/20210511.2011_prl_miller_ysft.pdf
# 20 ../asist/20210511.2011_prl_miller.pdf
# 19 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.nband.pdf
# 18 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.xgamma.pdf
# 17 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.kpoints.pdf
# 16 Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/test.time_vs_ncore.pdf
# 15 Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac/xas/xas.Pt-110a12b2_O22_vac.O.pdf
# 14 Pt-110_O_vac/Xas.Pt-110_O_vac.O22_O6.pdf
# 13 Pt-111_O_vac/Pt-111p16c4_O4_vac15/Xas.Pt-111p16_O4_vac.fch_hch.pdf
# 12 Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/Xas.Pt-110p12_O6_vac.fch_hch.pdf
# 11 Pt-111_O_vac/Xas_Pt-111_O_vac_O1.pdf
# 10 Pt-110_O_vac/Xas_Pt-110_O_vac_O1.pdf
# 9 Pt-111_O_vac/Pt-111p48c4_O12_vac15/xas/Xas_Pt-111p48_O12_vac.pdf
# 8 Pt-111_O_vac/Pt-111p16c4_O4_vac15/xas/Xas_Pt-111p16_O4_vac.pdf
# 7 Pt-110_O_vac/Pt-110p48c4.5_O24_vac15/xas/Xas_Pt-110p48_O24_vac.pdf
# 6 Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/xas/Xas_Pt-110p12_O6_vac.pdf
# 5 Xas_Pt_O_vac.pdf
# 4 Pt-110_O_vac/Xas_Pt-110_O_vac.pdf
# 3 Pt-111_O_vac/Xas_Pt-111_O_vac.pdf
# 2 Pt/Pt_eos_kpoints.pdf
# 1 Pt/Pt_eos_cutoff.pdf

array colors2=['#FE7D6A', '#81B8E9']
array colors3=['#4D85BD', '#F7903D', '#59A95A']
array colors3_1=['#D22027', '#384589', '#7FA5B7']
array colors4=['#817F00','#FB7E03','#01FD01','#00FFFF']
array colors6=['#EE3624','#323293','#62BB47','#BC8EC0','#8EDAF8','#C7811F']

set samples 500
# set key box
set key samplen 2
set key width 2
set key height 0.5
set key noautotitle
set encoding iso_8859_1
set style data lines

datdir="~/group/202103_XasPtO/server/"
outdir="~/group/202103_XasPtO/log/server/"




#-------------------------------------------------------------------------------------[]
if (pic[42]==1) {
subdir='Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/'
outfile=outdir.subdir.'xspectra.hch_fch_nch.pdf'

array mid=['qe_hch_scf','qe_fch_scf.ppold','qe_nch_scf']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]=mid[i].'/scf_1/xspectra.epsilon010/xanes.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl=['HCH','FCH','No CH']

array colo[num]
if (num==2) {
    do for [i=1:num] {colo[i]=colors2[i]}
}
if (num==3) {
    do for [i=1:num] {colo[i]=colors3[i]}
}
if (num==4) {
    do for [i=1:num] {colo[i]=colors4[i]}
}
if (num==5 || num==6) {
    do for [i=1:num] {colo[i]=colors6[i]}
}


array colornum=[1,2,3,4,5,6]

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colo[i] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[41]==1) {
subdir='Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/'
outfile=outdir.subdir.'xspectra.epsilon100.pdf'

array numx=['1','3','11']
num=|numx|

array datfile[num]
do for [i=1:num] {datfile[i]='scf_'.numx[i].'/xspectra.epsilon100/xanes.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]='O\_'.numx[i]}

array colornum=[1,2,3,4,5,6]

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colors3[colornum[i]] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[40]==1) {
subdir='Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/'
outfile=outdir.subdir.'xspectra.epsilon010.pdf'

array numx=['1','3','11']
num=|numx|

array datfile[num]
do for [i=1:num] {datfile[i]='scf_'.numx[i].'/xspectra.epsilon010/xanes.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]='O\_'.numx[i]}

array colornum=[1,2,3,4,5,6]

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colors3[colornum[i]] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[39]==1) {
subdir='Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/'
outfile=outdir.subdir.'xspectra.epsilon001.pdf'

array numx=['1','3','11']
num=|numx|

array datfile[num]
do for [i=1:num] {datfile[i]='scf_'.numx[i].'/xspectra/xanes.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]='O\_'.numx[i]}

array colornum=[1,2,3,4,5,6]

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colors3[colornum[i]] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[38]==1) {
subdir='Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/'
outfile=outdir.subdir.'xspectra.desmooth.pdf'

array datfile=['xspectra/','xspectra.desmooth/']
num=|datfile|
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i].'xanes.dat'}

array titl=['cut\_desmooth = 0.1','default (1.d-2)']
array colornum=[1,2,5]

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]

p \
for [i=1:num] datfile[i] u 1:2 lw 1 lc ''.colors[colornum[i]] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[37]==1) {
subdir='Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/'
outfile=outdir.subdir.'xspectra.terminator.pdf'

array datfile=['xspectra/','xspectra.terminator/']
num=|datfile|
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i].'xanes.dat'}

array titl=['terminator = .true.','default']
array colornum=[1,2,5]

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]

p \
for [i=1:num] datfile[i] u 1:2 lw 1 lc ''.colors[colornum[i]] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[36]==1) {
subdir='Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/'
outfile=outdir.subdir.'xspectra.cutocc.pdf'

array datfile=['xspectra/','xspectra.cutocc/']
num=|datfile|
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i].'xanes.dat'}

array titl=['cut\_occ\_states = .true.','default']
array colornum=[1,2,5]

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]

p \
for [i=1:num] datfile[i] u 1:2 lw 1 lc ''.colors[colornum[i]] t titl[i]
}
#-------------------------------------------------------------------------------------[]
if (pic[35]==1) {
subdir='Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/scf_3/'
outfile=outdir.subdir.'xspectra.epsilon.pdf'

array mid=['001','010', '100','110','1-10']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]='xspectra.epsilon'.mid[i].'/xanes.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]='{/Symbol e} '.mid[i]}

array colo[num]
if (num==2) {
    do for [i=1:num] {colo[i]=colors2[i]}
}
if (num==3) {
    do for [i=1:num] {colo[i]=colors3[i]}
}
if (num==4) {
    do for [i=1:num] {colo[i]=colors4[i]}
}
if (num==5 || num==6) {
    do for [i=1:num] {colo[i]=colors6[i]}
}


set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colo[i] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[34]==1) {
subdir='Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/scf_11/'
outfile=outdir.subdir.'xspectra.epsilon.pdf'

array mid=['001','010', '100','110','1-10']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]='xspectra.epsilon'.mid[i].'/xanes.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]='{/Symbol e} '.mid[i]}

array colo[num]
if (num==2) {
    do for [i=1:num] {colo[i]=colors2[i]}
}
if (num==3) {
    do for [i=1:num] {colo[i]=colors3[i]}
}
if (num==4) {
    do for [i=1:num] {colo[i]=colors4[i]}
}
if (num==5 || num==6) {
    do for [i=1:num] {colo[i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colo[i] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[33]==1) {
subdir='Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/scf_1/'
outfile=outdir.subdir.'xspectra.epsilon.pdf'

array mid=['001','010', '100','110','1-10']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]='xspectra.epsilon'.mid[i].'/xanes.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]='{/Symbol e} '.mid[i]}

array colo[num]
if (num==2) {
    do for [i=1:num] {colo[i]=colors2[i]}
}
if (num==3) {
    do for [i=1:num] {colo[i]=colors3[i]}
}
if (num==4) {
    do for [i=1:num] {colo[i]=colors4[i]}
}
if (num==5 || num==6) {
    do for [i=1:num] {colo[i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colo[i] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[32]==1) {
subdir='Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/'
outfile=outdir.subdir.'xspectra.epsilon.pdf'

array mid=['001','010', '100','110','1-10']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]='xspectra.epsilon'.mid[i].'/xanes.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]='{/Symbol e} '.mid[i]}

array colo[num]
if (num==2) {
    do for [i=1:num] {colo[i]=colors2[i]}
}
if (num==3) {
    do for [i=1:num] {colo[i]=colors3[i]}
}
if (num==4) {
    do for [i=1:num] {colo[i]=colors4[i]}
}
if (num==5 || num==6) {
    do for [i=1:num] {colo[i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colo[i] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[31]==1) {
subdir='Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/aimd/'
outfile=outdir.subdir.'temperature_time.pdf'

array mid=['aimd1','aimd2', 'aimd3','aimd4']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]=mid[i].'/step.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl=['1.0','0.01','0.0025','0.01']
do for [i=1:num] {titl[i]='SMASS = '.titl[i]}

array num1=[0,212,212+497,212+497+2000]

array colo[num]
if (num==2) {
    do for [i=1:num] {colo[i]=colors2[i]}
}
if (num==3) {
    do for [i=1:num] {colo[i]=colors3[i]}
}
if (num==4) {
    do for [i=1:num] {colo[i]=colors4[i]}
}
if (num==5 || num==6) {
    do for [i=1:num] {colo[i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "time (fs)" offset 0,0
set ylabel "Free energy (eV)" offset 1,0
set xrange [*:*]
set yrange [*:*]
set key r b
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u (($1+num1[i])*0.5):3 ls 1 lc ''.colo[i] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[30]==1) {
subdir='Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/aimd/'
outfile=outdir.subdir.'energy_time.pdf'

array mid=['aimd1','aimd2', 'aimd3','aimd4']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]=mid[i].'/step.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl=['1.0','0.01','0.0025','0.01']
do for [i=1:num] {titl[i]='SMASS = '.titl[i]}

array num1=[0,212,212+497,212+497+2000]

array colo[num]
if (num==2) {
    do for [i=1:num] {colo[i]=colors2[i]}
}
if (num==3) {
    do for [i=1:num] {colo[i]=colors3[i]}
}
if (num==4) {
    do for [i=1:num] {colo[i]=colors4[i]}
}
if (num==5 || num==6) {
    do for [i=1:num] {colo[i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "time (fs)" offset 0,0
set ylabel "Temperature (K)" offset 1,0
set xrange [*:*]
set yrange [*:*]
set key r b
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u (($1+num1[i])*0.5):2 ls 1 lc ''.colo[i] t titl[i]
}

#-------------------------------------------------------------------------------------[]
if (pic[29]==1) {
datfile1=datdir.'../zrsun/20210512.Pt-110_ysft.dat'
datfile2=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/scf_1/xspectra/xas_alignorm.dat'
datfile3=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/scf_11/xspectra/xas_alignorm.dat'

# titl1='Exp. (Xiaobao, Li)'
# titl2='Theory-O1 {/Symbol e}-001 (Feifei, Tian)'
# titl3='Theory-O11 {/Symbol e}-001 (Feifei, Tian)'

titl1='Exp.'
titl2='Theory-O1'
titl3='Theory-O11'


outfile=outdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/xspectra.theory-O1-O11_exp.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [526:546]
set yrange [0:*]
p \
datfile3 w l lw 2 lc ''.word(colors,1) t titl3,\
datfile2 w l lw 2 lc ''.word(colors,2) t titl2,\
datfile1 w p pt 6 ps 0.5 lw 1 lc ''.word(colors,5) t titl1,\
}

#-------------------------------------------------------------------------------------[]
if (pic[28]==1) {
datfile1=datdir.'../zrsun/20210512.Pt-110_ysft.dat'
datfile2=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/scf_11/xspectra/xas_alignorm.dat'

titl1='Exp. (Xiaobao, Li)'
titl2='Theory-O11 {/Symbol e}-001 (Feifei, Tian)'

outfile=outdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/xspectra.theory-O11_exp.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [526:546]
set yrange [0:*]
p \
datfile2 w l lw 2 lc ''.word(colors,9) t titl2,\
datfile1 w p pt 6 ps 0.5 lw 2 lc ''.word(colors,8) t titl1,\
}

#-------------------------------------------------------------------------------------[]
if (pic[27]==1) {
datfile1=datdir.'../zrsun/20210512.Pt-110_ysft.dat'
datfile2=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/scf_1/xspectra/xas_alignorm.dat'

titl1='Exp. (Xiaobao, Li)'
titl2='Theory-O1 {/Symbol e}-001 (Feifei, Tian)'

outfile=outdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/qe_hch_scf/xspectra.theory-O1_exp.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [526:546]
set yrange [0:12]
p \
datfile2 w l lw 2 lc ''.word(colors,9) t titl2,\
datfile1 w p pt 6 ps 0.5 lw 2 lc ''.word(colors,8) t titl1,\
}

#-------------------------------------------------------------------------------------[]
if (pic[26]==1) {
datfile1=datdir.'../zrsun/20210512.Pt-111_ysft.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra/xas_alignorm.dat'

# titl1='Exp. (Xiaobao, Li)'
# titl2='Theory {/Symbol e}-001 (Feifei, Tian)'
titl1='Exp.'
titl2='Theory'


outfile=outdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.theory_exp.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [526:546]
set yrange [0:*]
p \
datfile2 w l lw 2 lc ''.word(colors,1) t titl2,\
datfile1 w p pt 6 ps 0.5 lw 1 lc ''.word(colors,5) t titl1,\
}

#-------------------------------------------------------------------------------------[]
if (pic[25]==1) {
datfile1=datdir.'../zrsun/20210513.Pt-111_ysft_norm.dat'
datfile2=datdir.'../asist/20210512.exp_inplane_origin_ysft.dat'
datfile3=datdir.'../asist/20210512.exp_outplane_origin_ysft.dat'

# titl1='Exp. (Xiaobao, Li)'
titl1='Li'
# titl2='Exp. in-plane (Miller PRL 2011)'
titl2='Miller (in-plane)'
# titl3='Exp. out-of-plane (Miller PRL 2011)'
titl3='Miller (out-of-plane)'

outfile=outdir.'../zrsun/Pt-111.miller_prl_2011.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [*:*]
set yrange [0:*]
p \
datfile3 w p pt 6 ps 0.5 lw 2 lc ''.word(colors,1) t titl3,\
datfile2 w p pt 10 ps 0.5 lw 2 lc ''.word(colors,2) t titl2,\
datfile1 w l lw 2 lc ''.word(colors,5) t titl1,\
}

#-------------------------------------------------------------------------------------[]
if (pic[24]==1) {
datfile1=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra/xanes.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/test.wfc50/xspectra/xanes.dat'
datfile3=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/test.wfc40_rho400/xspectra/xanes.dat'

titl1='wfc=40'
titl2='wfc=50'
titl3='wfc=40, rho=400'

outfile=outdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.wfc_rho.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [*:*]
set yrange [0:*]
p \
datfile1 w l lw 1 lc ''.word(colors,1) t titl1,\
datfile2 w l lw 1 lc ''.word(colors,2) t titl2,\
datfile3 w l lw 1 lc ''.word(colors,3) t titl3,\
}

#-------------------------------------------------------------------------------------[]
if (pic[23]==1) {
datfile1=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra/xanes.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra_xniter/xanes.dat'
titl1='xniter=50'
titl2='xniter=2000'
outfile=outdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.xniter.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [*:*]
set yrange [0:*]
p \
datfile1 w l lw 2 lc ''.word(colors,8) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,9) t titl2,\
}

#-------------------------------------------------------------------------------------[]
if (pic[22]==1) {
datfile1=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra/xanes.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111a6b8c4_O12_vac15/qe_hch_scf/scf_1/xspectra/xanes.dat'
titl1='Pt-111a4b4\_O4\_vac'
titl2='Pt-111a6b8\_O12\_vac'
outfile=outdir.'Pt-111_O_vac/xspectra.supercell.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
p \
datfile1 w l lw 2 lc ''.word(colors,1) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,2) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[21]==1) {
datfile1=datdir.'../asist/20210511.exp_inplane_ysft.dat'
datfile2=datdir.'../asist/20210511.exp_outplane_ysft.dat'
datfile3=datdir.'../asist/20210511.theory_inplane_ysft.dat'
datfile4=datdir.'../asist/20210511.theory_outplane_ysft.dat'
titl1='EXP. (in plane)'
titl2='EXP. (out of plane)'
titl3='Theory (in plane)'
titl4='Theory (out of plane)'
outfile=outdir.'../asist/20210511.2011_prl_miller_ysft.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [*:*]
set yrange [*:*]
p \
datfile4 w l lw 2 lc ''.word(colors,1) t titl4,\
datfile3 w l lw 2 lc ''.word(colors,2) t titl3,\
datfile2 w p pt 10 ps 0.5 lw 2 lc ''.word(colors,1) t titl2,\
datfile1 w p pt 6 ps 0.5 lw 2 lc ''.word(colors,2) t titl1
}

#-------------------------------------------------------------------------------------[]
if (pic[20]==1) {
datfile1=datdir.'../asist/20210511.exp_inplane.dat'
datfile2=datdir.'../asist/20210511.exp_outplane.dat'
datfile3=datdir.'../asist/20210511.theory_inplane.dat'
datfile4=datdir.'../asist/20210511.theory_outplane.dat'
titl1='EXP. (in plane)'
titl2='EXP. (out of plane)'
titl3='Theory (in plane)'
titl4='Theory (out of plane)'
outfile=outdir.'../asist/20210511.2011_prl_miller.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [*:*]
set yrange [*:18]
unset ytics
p \
datfile4 w l lw 2 lc ''.word(colors,1) t titl4,\
datfile3 w l lw 2 lc ''.word(colors,2) t titl3,\
datfile2 w p pt 10 ps 0.5 lw 2 lc ''.word(colors,1) t titl2,\
datfile1 w p pt 6 ps 0.5 lw 2 lc ''.word(colors,2) t titl1
}
#-------------------------------------------------------------------------------------[]
if (pic[19]==1) {
datfile1=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra/xanes.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/test.nband664/xspectra/xanes.dat'
titl1='nband = 415'
titl2='nband = 664'
outfile=outdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.nband.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
p \
datfile1 w l lw 1 lc ''.word(colors,1) t titl1,\
datfile2 w l lw 1 lc ''.word(colors,2) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[18]==1) {
datfile1=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra/xanes.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra.xgamma-0.45/xanes.dat'
titl1='xgamma = 0.225'
titl2='xgamma = 0.45'
outfile=outdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.xgamma.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
p \
datfile1 w l lw 2 lc ''.word(colors,1) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,2) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[17]==1) {
datfile1=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra/xanes.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/xspectra.k661/xanes.dat'
titl1='kpoints = 3 3 1'
titl2='kpoints = 6 6 1'
outfile=outdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/xspectra.kpoints.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "hv-E_f (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [-5:15]
set yrange [0:*]
p \
datfile1 w l lw 1 lc ''.word(colors,1) t titl1,\
datfile2 w l lw 1 lc ''.word(colors,2) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[16]==1) {
datfile=datdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/test.time_vs_ncore.dat'
titl=''
outfile=outdir.'Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/test.time_vs_ncore.pdf'
set key t c
set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Core numbers" offset 1,0
set ylabel "Wall time (min)" offset 0,0
set xrange [*:*]
set yrange [0:70]

set style data histogram 
set style fill solid 0.25 noborder
p \
datfile u 2:xtic(1),\
datfile u 0:2:2 w labels offset char 0,0.5
}

#-------------------------------------------------------------------------------------[]
if (pic[15]==1) {
datfile1=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac/xas/O_1/CORE_DIELECTRIC_IMAG.dat'
datfile2=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac/xas/O_3/CORE_DIELECTRIC_IMAG.dat'
datfile3=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac/xas/O_5/CORE_DIELECTRIC_IMAG.dat'
datfile4=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac/xas/O_7/CORE_DIELECTRIC_IMAG.dat'
datfile5=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac/xas/O_9/CORE_DIELECTRIC_IMAG.dat'
datfile6=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac/xas/O_11/CORE_DIELECTRIC_IMAG.dat'
titl1='O1'
titl2='O3'
titl3='O5'
titl4='O7'
titl5='O9'
titl6='O11'
outfile=outdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac/xas/xas.Pt-110a12b2_O22_vac.O.pdf'
set key t c
set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [515:535]
set yrange [0:5e-5]
p \
datfile1 w l lw 2 lc ''.word(colors,1) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,2) t titl2,\
datfile3 w l lw 2 lc ''.word(colors,3) t titl3,\
datfile4 w l lw 2 lc ''.word(colors,4) t titl4,\
datfile5 w l lw 2 lc ''.word(colors,5) t titl5,\
datfile6 w l lw 2 lc ''.word(colors,6) t titl6
}

#-------------------------------------------------------------------------------------[]
if (pic[14]==1) {
datfile1=datdir.'Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac/xas/xas_alignorm.dat'
datfile2=datdir.'Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/xas/xas_alignorm.dat'
titl1='Pt-110a12b2\_O22\_vac'
titl2='Pt-110a3b2\_O6\_vac'
outfile=outdir.'Pt-110_O_vac/Xas.Pt-110_O_vac.O22_O6.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [526:546]
set yrange [0:0.14]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[13]==1) {
datfile1=datdir.'Pt-111_O_vac/Pt-111p16c4_O4_vac15/xas/xas_alignorm.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111p16c4_O4_vac15/xas_hch/xas_alignorm.dat'
titl1='Pt-111p16\_O4\_vac\_fch'
titl2='Pt-111p16\_O4\_vac\_hch'
outfile=outdir."Pt-111_O_vac/Pt-111p16c4_O4_vac15/Xas.Pt-111p16_O4_vac.fch_hch.pdf"

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [526:546]
set yrange [0:0.18]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[12]==1) {
datfile1=datdir.'Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/xas/xas_alignorm.dat'
datfile2=datdir.'Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/xas_hch/xas_alignorm.dat'
titl1='Pt-110p12\_O6\_vac\_fch'
titl2='Pt-110p12\_O6\_vac\_hch'
outfile=outdir."Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/Xas.Pt-110p12_O6_vac.fch_hch.pdf"

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [526:546]
set yrange [0:0.18]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[11]==1) {
datfile1=datdir.'Pt-111_O_vac/Pt-111p16c4_O4_vac15/xas/O_1/CORE_DIELECTRIC_IMAG.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111p48c4_O12_vac15/xas/O_1/CORE_DIELECTRIC_IMAG.dat'
titl1='Pt-111p16\_O4\_vac\_O1'
titl2='Pt-111p48\_O12\_vac\_O1'
outfile=outdir."Pt-111_O_vac/Xas_Pt-111_O_vac_O1.pdf"

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [512:532]
set yrange [0:9e-5]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[10]==1) {
datfile1=datdir.'Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/xas/O_1/CORE_DIELECTRIC_IMAG.dat'
datfile2=datdir.'Pt-110_O_vac/Pt-110p48c4.5_O24_vac15/xas/O_2/CORE_DIELECTRIC_IMAG.dat'
titl1='Pt-110p12\_O6\_vac\_O1'
titl2='Pt-110p48\_O24\_vac\_O2'
outfile=outdir."Pt-110_O_vac/Xas_Pt-110_O_vac_O1.pdf"

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [515:535]
set yrange [0:0.00018]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[9]==1) {

datfile1=datdir.'Pt-111_O_vac/Pt-111p48c4_O12_vac15/xas/xas_ave.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111p48c4_O12_vac15/xas/O_1/CORE_DIELECTRIC_IMAG.dat'
titl1='Pt-111p48\_O12\_vac\_ave'
titl2='Pt-111p48\_O12\_vac\_O1'
outfile=outdir."Pt-111_O_vac/Pt-111p48c4_O12_vac15/xas/Xas_Pt-111p48_O12_vac.pdf"

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [512:532]
set yrange [0:3e-5]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[8]==1) {

datfile1=datdir.'Pt-111_O_vac/Pt-111p16c4_O4_vac15/xas/xas_ave.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111p16c4_O4_vac15/xas/O_1/CORE_DIELECTRIC_IMAG.dat'
titl1='Pt-111p16\_O4\_vac\_ave'
titl2='Pt-111p16\_O4\_vac\_O1'
outfile=outdir.'Pt-111_O_vac/Pt-111p16c4_O4_vac15/xas/Xas_Pt-111p16_O4_vac.pdf'

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [512:532]
set yrange [0:9e-5]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[7]==1) {

datfile1=datdir.'Pt-110_O_vac/Pt-110p48c4.5_O24_vac15/xas/xas_ave.dat'
datfile2=datdir.'Pt-110_O_vac/Pt-110p48c4.5_O24_vac15/xas/O_2/CORE_DIELECTRIC_IMAG.dat'
titl1='Pt-110p48\_O24\_vac\_ave'
titl2='Pt-110p48\_O24\_vac\_O2'
outfile=outdir.'Pt-110_O_vac/Pt-110p48c4.5_O24_vac15/xas/Xas_Pt-110p48_O24_vac.pdf'

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [515:535]
set yrange [0:5e-5]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[6]==1) {

datfile1=datdir.'Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/xas/xas_ave.dat'
datfile2=datdir.'Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/xas/O_1/CORE_DIELECTRIC_IMAG.dat'
titl1='Pt-110p12\_O6\_vac\_ave'
titl2='Pt-110p12\_O6\_vac\_O1'
outfile=outdir.'Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/xas/Xas_Pt-110p12_O6_vac.pdf'

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [515:535]
set yrange [0:0.00018]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[5]==1) {

datfile1=datdir.'Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/xas/xas_alignorm.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111p16c4_O4_vac15/xas/xas_alignorm.dat'
titl1='Pt-110p12\_O6\_vac'
titl2='Pt-111p16\_O4\_vac'
outfile=outdir.'Xas_Pt_O_vac.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [526:546]
set yrange [0:0.14]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[4]==1) {

datfile1=datdir.'Pt-110_O_vac/Pt-110p12c4.5_O6_vac15/xas/xas_alignorm.dat'
datfile2=datdir.'Pt-110_O_vac/Pt-110p48c4.5_O24_vac15/xas/xas_alignorm.dat'
titl1='Pt-110p12\_O6\_vac'
titl2='Pt-110p48\_O24\_vac'
outfile=outdir.'Pt-110_O_vac/Xas_Pt-110_O_vac.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [526:546]
set yrange [0:0.14]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[3]==1) {

datfile1=datdir.'Pt-111_O_vac/Pt-111p16c4_O4_vac15/xas/xas_alignorm.dat'
datfile2=datdir.'Pt-111_O_vac/Pt-111p48c4_O12_vac15/xas/xas_alignorm.dat'
titl1='Pt-111p16\_O4\_vac'
titl2='Pt-111p48\_O12\_vac'
outfile=outdir.'Pt-111_O_vac/Xas_Pt-111_O_vac.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [526:546]
set yrange [0:0.12]
p \
datfile1 w l lw 2 lc ''.word(colors,2) t titl1,\
datfile2 w l lw 2 lc ''.word(colors,3) t titl2
}

#-------------------------------------------------------------------------------------[]
if (pic[2]==1) {

titl1='KSPACING=0.25 ({\305}^{-1})'
titl3='KSPACING=0.15 ({\305}^{-1})'
outfile=outdir.'Pt/Pt_eos_kpoints.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Volume ({\305}^3)" offset 0,0
set ylabel "E-E0 (eV)" offset 1,0
set xrange [61.5:63.5]
set yrange [-0.002:0.014]
set format x "%7.1f"
set format y "%7.4f"
set key t c

folder_1=datdir."Pt/Pt-a1b1c1_e500k0.25/"
E0_1=system("grep '^Murnaghan : E0.*eV'  ".folder_1."eos.log |awk '{print $5}'")
B0_1=system("grep '^Murnaghan : B0.*eV'  ".folder_1."eos.log |awk '{print $5}'")
Bp_1=system("grep '^Murnaghan : Bp'      ".folder_1."eos.log |awk '{print $5}'")
V0_1=system("grep '^Murnaghan : V0.*ang' ".folder_1."eos.log |awk '{print $5}'")
datfile1=folder_1.'e0_a.dat'

folder_3=datdir."Pt/Pt-a1b1c1_e500k0.15/"
E0_3=system("grep '^Murnaghan : E0.*eV'  ".folder_3."eos.log |awk '{print $5}'")
B0_3=system("grep '^Murnaghan : B0.*eV'  ".folder_3."eos.log |awk '{print $5}'")
Bp_3=system("grep '^Murnaghan : Bp'      ".folder_3."eos.log |awk '{print $5}'")
V0_3=system("grep '^Murnaghan : V0.*ang' ".folder_3."eos.log |awk '{print $5}'")
datfile3=folder_3.'e0_a.dat'

f_1(x) = B0_1/Bp_1 * x * ((V0_1/x)**Bp_1/(Bp_1-1.0)+1.0) - V0_1*B0_1/(Bp_1-1.0)
f_3(x) = B0_3/Bp_3 * x * ((V0_3/x)**Bp_3/(Bp_3-1.0)+1.0) - V0_3*B0_3/(Bp_3-1.0)

p \
datfile1 u ($1**3):($2-E0_1) w p pt 6  ps 0.5 lc ''.word(colors,1) lw 1 t titl1,\
f_1(x) w l lc ''.word(colors,1) lw 1,\
datfile3 u ($1**3):($2-E0_3) w p pt 10 ps 0.5 lc ''.word(colors,2) lw 1 t titl3,\
f_3(x) w l lc ''.word(colors,2) lw 1
}

#-------------------------------------------------------------------------------------[]
if (pic[1]==1) {

titl1='ENCUT=500 (eV)'
titl3='ENCUT=700 (eV)'
outfile=outdir.'Pt/Pt_eos_cutoff.pdf'

set term pdfcairo font "Arial,25" size 6*1,5*1
set output outfile
set xlabel "Volume ({\305}^3)" offset 0,0
set ylabel "E-E0 (eV)" offset 1,0
set xrange [61.5:63.5]
set yrange [-0.002:0.014]
set format x "%7.1f"
set format y "%7.4f"
set key t c

folder_1=datdir."Pt/Pt-a1b1c1_e500k0.25/"
E0_1=system("grep '^Murnaghan : E0.*eV'  ".folder_1."eos.log |awk '{print $5}'")
B0_1=system("grep '^Murnaghan : B0.*eV'  ".folder_1."eos.log |awk '{print $5}'")
Bp_1=system("grep '^Murnaghan : Bp'      ".folder_1."eos.log |awk '{print $5}'")
V0_1=system("grep '^Murnaghan : V0.*ang' ".folder_1."eos.log |awk '{print $5}'")
datfile1=folder_1.'e0_a.dat'

folder_3=datdir."Pt/Pt-a1b1c1_e700k0.25/"
E0_3=system("grep '^Murnaghan : E0.*eV'  ".folder_3."eos.log |awk '{print $5}'")
B0_3=system("grep '^Murnaghan : B0.*eV'  ".folder_3."eos.log |awk '{print $5}'")
Bp_3=system("grep '^Murnaghan : Bp'      ".folder_3."eos.log |awk '{print $5}'")
V0_3=system("grep '^Murnaghan : V0.*ang' ".folder_3."eos.log |awk '{print $5}'")
datfile3=folder_3.'e0_a.dat'

f_1(x) = B0_1/Bp_1 * x * ((V0_1/x)**Bp_1/(Bp_1-1.0)+1.0) - V0_1*B0_1/(Bp_1-1.0)
f_3(x) = B0_3/Bp_3 * x * ((V0_3/x)**Bp_3/(Bp_3-1.0)+1.0) - V0_3*B0_3/(Bp_3-1.0)

p \
datfile1 u ($1**3):($2-E0_1) w p pt 6  ps 0.5 lc ''.word(colors,1) lw 1 t titl1,\
f_1(x) w l lc ''.word(colors,1) lw 1,\
datfile3 u ($1**3):($2-E0_3) w p pt 8  ps 0.5 lc ''.word(colors,2) lw 1 t titl3,\
f_3(x) w l lc ''.word(colors,2) lw 1
}

