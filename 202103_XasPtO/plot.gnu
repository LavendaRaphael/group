array pic[100]
do for [i=1:100] {pic[i]=0}

             #  goto_pto_work.'Pt/
# pic[2]=1   #      Pt_eos_kpoints.pdf
# pic[1]=1   #      Pt_eos_cutoff.pdf

             #  goto_pto_work_111.'Pt.111.x4y4z4_O4_vac15/
# pic[31]=1  #      aimd/temperature_time.pdf
# pic[30]=1  #      aimd/energy_time.pdf
             #      qe_hch_scf/
# pic[38]=1  #          scf_1/xspectra.desmooth.pdf
# pic[37]=1  #          scf_1/xspectra.terminator.pdf
# pic[36]=1  #          scf_1/xspectra.cutocc.pdf
# pic[46]=1  #          scf_1/xspectra.epsilon_exp.pdf
# pic[32]=1  #          scf_1/xspectra.epsilon.pdf
# pic[23]=1  #          xspectra.xniter.pdf
# pic[18]=1  #          xspectra.xgamma.pdf
# pic[17]=1  #          xspectra.kpoints.pdf
             #      vasp_sch/
# pic[53]=1  #          atom_1/sch.x_y.tm.exp.pdf
# pic[50]=1  #          atom_1/sch.x_y.z.exp.pdf
# pic[8]=1   #          atom_1/sch.pdf
# pic[57]=1  #          polarzation/polarzation_*.pdf
# pic[42]=1  #      xspectra.hch_fch_nch.pdf

             #  goto_pto_work_111.'Pt.111.x4y4z4_alpha.PtO2.001.x4y3z1_vac15/vasp_sch/
# pic[52]=1  #      sch.x_y.z.pdf
# pic[49]=1  #      atom_*/sch.pdf

             #  goto_pto_work_110.'Pt.110.x12y2z4.5_O22_vac15/
# pic[48]=1  #      aimd/aimd.pdf
             #      qe_hch_scf/
# pic[34]=1  #          scf_11/xspectra.epsilon.pdf
# pic[33]=1  #          scf_1/xspectra.epsilon.pdf
# pic[58]=1  #      vasp_sch.aimd2_932/polarzation/polarzation_*.pdf
             #      vasp_sch/
# pic[59]=1  #          polarization/polarization_*.pdf
# pic[51]=1  #          sch.x.y.z.exp.pdf
# pic[15]=1  #          atom_*/sch.pdf
  pic[63]=1  #          xas_mix.a20.pdf
             #          a40.pdf

# pic[59]=1  #  goto_pto_work_110.
             #      'Pt.110.x2y3z4.5_O1_vac15/'
             #      'Pt.110.x2y3z4.5_O2.12_vac15/'
             #      'Pt.110.x2y3z4.5_O2.13_vac15/'
             #      'Pt.110.x2y3z4.5_O2.14_vac15/'
             #      'Pt.110.x2y3z4.5_O3.123_vac15/'
             #      'Pt.110.x2y3z4.5_O3.135_vac15/'
             #      'Pt.110.x2y3z4.5_O3.136_vac15/'
             #      'Pt.110.x2y3z4.5_O4.v56_vac15/'
             #      'Pt.110.x2y3z4.5_O5_vac15/'
             #      'Pt.110.x2y3z4.5_O6_vac15/'
             #      'Pt.110.x2y4z4.5_O2.15_vac15/'
             #      'Pt.110.x2y4z4.5_O2.16_vac15/'
             #      'Pt.110.x2y4z4.5_O3.137_vac15/'
             #      'Pt.110.x2y4z4.5_O3.148_vac15/'
             #      'Pt.110.x2y4z4.5_O4.1237_vac15/'
             #      'Pt.110.x2y4z4.5_O4.1458_vac15/'
             #      'Pt.110.x2y4z4.5_O6.v56_vac15/'
             #      'Pt.110.x4y3z4.5_O2.12_vac15/'
             #          vasp_sch/polarization/polarization_*.pdf
             #      'Pt.110.x2y6z4.5_O2.17_vac15/'
             #          vasp_sch.xm/
             #          vasp_sch.xp/
             #          vasp_sch.ym/
             #          vasp_sch.zm/
             #          vasp_sch.zp/


             #  goto_pto_work_110.
# pic[60]=1  #      'Pt.110.x2y3z4.5_O1_vac15'
             #          atom_*/vasp_sch/polarization/polarization_*.pdf

             #  goto_pto_work_110.
# pic[61]=1  #      correlation/
             #          polarization/polarization_*.pdf

# pic[62]=1  #  ~/group/202103_XasPtO/doc/
             #      exp.pdf


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

homedir="~/"
     goto_pto_exp=homedir.'group/202103_XasPtO/exp/'
goto_pto_work_110=homedir.'group/202103_XasPtO/server/Pt.110_O_vac/'

#=====================================================================================[]

#-------------------------------------------------------------------------------------[]
#if (pic[63]==1) {

array array_str=['20','41']
str_i=array_str[1]

work_dir='Pt.110.x12y2z4.5_O22_vac15/'
work_dir=goto_pto_work_110.work_dir.'vasp_sch/'

out_dir=work_dir
outfile=out_dir.'xas_mix.a'.str_i.'.pdf'

array array_datfile=['','b90','b45','frac']
num_datfile=|array_datfile|
array_datfile[1]=goto_pto_exp.'20210512.Pt.110_norm.dat'
do for [i=2:num_datfile] {
    array_datfile[i]=work_dir.'xas_mix.a'.str_i.'_'.array_datfile[i].'.dat'
}

num_titl=num_datfile
array array_titl=['','horizon','plane','0.7+0.3']
array_titl[1]='Exp.'
do for [i=2:num_titl] {
    array_titl[i]='Theory '.array_titl[i]
}

colornum=num_titl
# colornum=7
array colo[colornum]
colo[1]='black'
colorstart=1
colorwant=colornum-colorstart
do for [i=1:colorwant] {
    if (colorwant==2 || colorwant==1) {colo[colorstart+i]=colors2[i]}
    if (colorwant==3) {colo[colorstart+i]=colors3[i]}
    if (colorwant==4) {colo[colorstart+i]=colors4[i]}
    if (colorwant==5 || colorwant==6) {colo[colorstart+i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 7*1,5*1
set style line 1 lw 2
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [527:540]
set yrange [0:10]
p \
    array_datfile[1] u 1:2 w p pt 6 ps 0.5 lw 2 lc colo[1] t array_titl[1],\
    for [i=2:num_datfile] array_datfile[i] ls 1 lc ''.colo[i] t array_titl[i],\

#}

#-------------------------------------------------------------------------------------[]

# sample
$cube << EOD
-1 -1   0
 1 -1   0
 1  1   0
-1  1   0
-1 -1   0

-1 -1 -.5
 1 -1 -.5
 1  1 -.5
-1  1 -.5
-1 -1 -.5

-1 -1   0
 1 -1   0
 1 -1 -.5
-1 -1 -.5
-1 -1   0

-1  1   0
 1  1   0
 1  1 -.5
-1  1 -.5
-1  1   0
EOD

if (pic[62]==1) {

out_dir='~/group/202103_XasPtO/doc/'
# outfile=out_dir.'exp.pdf'
# set output outfile 

colornum=3
array colo[colornum]
colo[1]='black'
colorstart=1
colorwant=colornum-colorstart
do for [i=1:colorwant] {
    if (colorwant==2 || colorwant==1) {colo[colorstart+i]=colors2[i]}
    if (colorwant==3) {colo[colorstart+i]=colors3[i]}
    if (colorwant==4) {colo[colorstart+i]=colors4[i]}
    if (colorwant==5 || colorwant==6) {colo[colorstart+i]=colors6[i]}
}
#set term x11 persist
set term pdfcairo font "Arial,25" size 5*1,5*1
set style line 1 lw 2
set angles degrees
set view equal xyz
unset tics
unset border
scaling=1.4
set size scaling,scaling
set origin .5-scaling/2.0,.5-scaling/2.0

set label 1 'x' at 1.3,  0,-.1 center
set label 2 'y' at   0,1.3,  0 center
set label 3 'z' at -.1,  0,1.3 center
set arrow from 0,0,0 to 1.2,0,0
set arrow from 0,0,0 to 0,1.2,0
set arrow from 0,0,0 to 0,0,1.2

alpha=20.0

polarx(degr)=cos(degr)
polary(degr)=sin(degr)*sin(alpha)
polarz(degr)=sin(degr)*cos(alpha)

# x-ray
set arrow from 0,-cos(alpha),sin(alpha) to 0,0,0 linecolor ''.colo[2]
degl=0.4
set label 6 'X-ray' at .2,-cos(alpha)+0.2,sin(alpha)+0.2 center textcolor ''.colo[2]

# polarization
beta=90.0
set arrow from 0,0,0 to polarx(beta),polary(beta),polarz(beta) lc ''.colo[3]
set label 7 'Polarization' at polarx(beta)-0.4,polary(beta)+0.1,polarz(beta) center textcolor ''.colo[3]
#---------------------------------------------------[]
outfile=out_dir.'labframe_tv.pdf'
set output outfile
set view azimuth 90
set view 270,270
set label 4 '{/Symbol a}' at 0,-(degl+0.1)*cos(alpha*0.5),(degl+0.1)*sin(alpha*0.5) center textcolor ''.colo[2]

splot \
    sample [degr=0:360] '+' using (polarx(degr)):(polary(degr)):(polarz(degr)) lw 2 lc ''.colo[3],\
    [degr=0:alpha] '+' using (0):(-degl*cos(degr)):(degl*sin(degr)) lw 2 lc ''.colo[2],\
    $cube u 1:2:3 lw 2 lc ''.colo[1],\

unset label 4

#---------------------------------------------------[]
outfile=out_dir.'labframe_sv.pdf'
set output outfile
set view azimuth 0
set view 0,0
set label 5 '{/Symbol b}' at (degl+0.15)*polarx(beta*0.5),(degl+0.15)*polary(beta*0.5),(degl+0.15)*polarz(beta*0.5) center textcolor ''.colo[3]

splot \
    $cube u 1:2:3 lw 2 lc ''.colo[1] ,\
    [degr=0:360] '+' using (polarx(degr)):(polary(degr)):(polarz(degr)) lw 2 lc ''.colo[3] ,\
    [degr=0:beta] '+' using (degl*polarx(degr)):(degl*polary(degr)):(degl*polarz(degr)) lw 2 lc ''.colo[3],\

# splot NaN
# pause -1
}
#-------------------------------------------------------------------------------------[]
if (pic[61]==1) {

# out_dir='correlation/'
# array work_dir=['Pt.110.x2y3z4.5_O1_vac15/','Pt.110.x4y3z4.5_O2.12_vac15/','Pt.110.x2y4z4.5_O2.15_vac15/','Pt.110.x2y4z4.5_O2.16_vac15/']

# out_dir='neighbor_y/'
# array work_dir=['Pt.110.x2y3z4.5_O1_vac15/','Pt.110.x2y3z4.5_O2.13_vac15/','Pt.110.x2y4z4.5_O3.137_vac15/','Pt.110.x2y3z4.5_O3.135_vac15/']

# out_dir='neighbor_x/'
# array work_dir=['Pt.110.x2y3z4.5_O1_vac15/','Pt.110.x2y3z4.5_O2.12_vac15/']

# out_dir='neighbor_xy/'
# array work_dir=['Pt.110.x2y3z4.5_O1_vac15/','Pt.110.x2y3z4.5_O2.14_vac15/','Pt.110.x2y4z4.5_O3.148_vac15/','Pt.110.x2y4z4.5_O4.1458_vac15/']

# out_dir='neighbor_mix/'
# array work_dir=['Pt.110.x2y3z4.5_O1_vac15/','Pt.110.x2y3z4.5_O3.123_vac15/','Pt.110.x2y4z4.5_O4.1237_vac15/','Pt.110.x2y3z4.5_O4.v56_vac15/','Pt.110.x2y4z4.5_O6.v56_vac15/','Pt.110.x2y3z4.5_O6_vac15/']

# out_dir=goto_pto_work_110.out_dir.'polarization/'
# worknum=|work_dir|

# datfilenum=1+worknum
# array datfile[datfilenum]
# datfile[1]=goto_pto_exp.'20210512.Pt.110_norm.dat'
# do for [i=1:worknum] {
#     datfile[1+i]=goto_pto_work_110.work_dir[i].'vasp_sch/xas_sym.dat'
# }

# array array_index=['a','b','c','d','e','f']

#---------------------------------->
work_dir='Pt.110.x2y6z4.5_O2.17_vac15/'
array array_datfile=['','','xm/','xp/','ym/','zm/','zp/']
num_datfile=|array_datfile|

out_dir=goto_pto_work_110.work_dir.'polarization/'

array_datfile[1]=goto_pto_exp.'20210512.Pt.110_norm.dat'
array_datfile[2]=goto_pto_work_110.'Pt.110.x2y3z4.5_O1_vac15/vasp_sch/xas_sym.dat'
do for [i=3:num_datfile] {
    array_datfile[i]=goto_pto_work_110.work_dir.'vasp_sch.'.array_datfile[i].'xas_sym.dat'
}

num_titl=num_datfile
array array_titl=['','origin','x+','x-','y','z+','z-']
#----------------------------------<

array_titl[1]='Exp.'
do for [i=2:num_titl] {
    array_titl[i]='Theory '.array_titl[i]
}

# colornum=titlnum
  colornum=7
array colo[colornum]
colo[1]='black'
colorstart=1
colorwant=colornum-colorstart
do for [i=1:colorwant] {
    if (colorwant==2 || colorwant==1) {colo[colorstart+i]=colors2[i]}
    if (colorwant==3) {colo[colorstart+i]=colors3[i]}
    if (colorwant==4) {colo[colorstart+i]=colors4[i]}
    if (colorwant==5 || colorwant==6) {colo[colorstart+i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 7*1,5*1
set style line 1 lw 2

set angles degrees
npiece=2
piece=180.0/npiece

ax(theta,phi)=(sin(theta))**2.0*(cos(phi))**2.0
ay(theta,phi)=(sin(theta))**2.0*(sin(phi))**2.0
az(theta,phi)=(cos(theta))**2.0
axy(theta,phi)=(sin(theta))**2.0*(sin(phi))*(cos(phi))
ayz(theta,phi)=(sin(theta))*(cos(theta))*(sin(phi))
azx(theta,phi)=(sin(theta))*(cos(theta))*(cos(phi))
r=1.0
rx(theta,phi)=r*sin(theta)*cos(phi)
ry(theta,phi)=r*sin(theta)*sin(phi)
rz(theta)=r*cos(theta)

ifile=0
# do for [ipath=1:3]{
do for [ipath=1:1]{
    array npiece_end=[npiece-1,npiece/2-1,npiece/2-1]
    do for [ipiece=0:npiece_end[ipath]]{
        array ntheta=[90.0,90.0-piece*ipiece,piece*ipiece]
        array nphi=[piece*ipiece,180.0,0.0]
        theta=ntheta[ipath]
        phi=nphi[ipath]
        f(x,y,z,xy,yz,zx)=ax(theta,phi)*x+ay(theta,phi)*y+az(theta,phi)*z+2.0*axy(theta,phi)*xy+2.0*ayz(theta,phi)*yz+2.0*azx(theta,phi)*zx

        outfile=out_dir.'polarization_'.ifile.'.pdf'
        ifile=ifile+1
        set output outfile
                
        set multiplot
        
        set size 1,1
        set origin 0,0
        set xlabel "Energy (eV)" offset 0,0
        set ylabel "Intensity (Arb. Units)" offset 1,0
        set xrange [527:540]
        set yrange [0:10]
        p \
            array_datfile[1] u 1:2 w p pt 6 ps 0.5 lw 2 lc colo[1] t array_titl[1],\
            for [i=2:num_datfile] array_datfile[i] u 1:(f($2,$3,$4,$5,$6,$7)) ls 1 lc ''.colo[i] t array_titl[i],\

        set size 0.5, 0.5
        set origin 0.25,0.5
        set view equal xyz
        unset xlabel
        unset ylabel
        unset zlabel
        set label 'x' at 1,0,0
        set label 'y' at 0,1.2,0
        set label 'z' at 0,0,1.2
        set xrange [-1:1]
        set yrange [-1:1]
        set zrange [-1:1]
#        theta=sprintf('%4.1f',theta)
#        phi=sprintf('%4.1f',phi)
#        label_angle='{/Symbol q}='.theta.', {/Symbol f}='.phi
#        set label label_angle at -5,0,0
        set arrow to rx(theta,phi),ry(theta,phi),rz(theta) ls 1
        set zeroaxis
        set xyplane at 0
        unset tics
        unset border
        splot NaN
        
        unset multiplot
        set border
        set tics
        unset arrow
        unset label
    }
}
}

#-------------------------------------------------------------------------------------[]
if (pic[60]==1) {

  work_dir='Pt.110.x2y3z4.5_O1_vac15/'

array natom=['1']
latom=natom[1]
subdir=work_dir.'vasp_sch/atom_'.latom.'/'

datdir=goto_pto_work_110.subdir
outdir=datdir.'peak_1/'

datfilenum=3
array datfile[datfilenum]
datfile[1]=goto_pto_exp.'20210512.Pt.110_norm.dat'
datfile[2]=datdir.'xas_alignorm.dat'
datfile[3]=datdir.'xas.tm_align.dat'

# array band=[271,287,291,324]
# array kpoint=[6,6,2,5]
# outdir=datdir.'peak_1/'
# array band=[271,271,278]
# array kpoint=[6,5,2]
# outdir=datdir.'peak_2/'
# array band=[291,287,297]
# array kpoint=[2,6,4]
 outdir=datdir.'peak_3/'
 array band=[312,322,324]
 array kpoint=[2,4,5]
kpoint_test=5
bandnum=|band|
scaling=1.5e3

titlnum=datfilenum+bandnum
array titl[titlnum]
titl[1]='Exp.'
titl[2]='Theory O'.latom
titl[3]='TM O'.latom
do for [i=1:bandnum] {
    titl[datfilenum+i]='BAND-'.band[i].' K-'.kpoint[i]
}

colornum=titlnum
array colo[colornum]
colo[1]='black'
colorstart=1
colorwant=colornum-colorstart
do for [i=1:colorwant] {
    if (colorwant==2 || colorwant==1) {colo[colorstart+i]=colors2[i]}
    if (colorwant==3) {colo[colorstart+i]=colors3[i]}
    if (colorwant==4) {colo[colorstart+i]=colors4[i]}
    if (colorwant==5 || colorwant==6) {colo[colorstart+i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 7*1,5*1
set style line 1 lw 2

set angles degrees
npiece=2
piece=180.0/npiece

ax(theta,phi)=(sin(theta))**2.0*(cos(phi))**2.0
ay(theta,phi)=(sin(theta))**2.0*(sin(phi))**2.0
az(theta,phi)=(cos(theta))**2.0
axy(theta,phi)=(sin(theta))**2.0*(sin(phi))*(cos(phi))
ayz(theta,phi)=(sin(theta))*(cos(theta))*(sin(phi))
azx(theta,phi)=(sin(theta))*(cos(theta))*(cos(phi))
r=1.0
rx(theta,phi)=r*sin(theta)*cos(phi)
ry(theta,phi)=r*sin(theta)*sin(phi)
rz(theta)=r*cos(theta)

ifile=0
do for [ipath=1:1]{
    array npiece_end=[npiece-1,npiece/2-1,npiece/2-1]
    do for [ipiece=0:npiece_end[ipath]]{
        array ntheta=[90.0,90.0-piece*ipiece,piece*ipiece]
        array nphi=[piece*ipiece,180.0,0.0]
        theta=ntheta[ipath]
        phi=nphi[ipath]
        f(x,y,z,xy,yz,zx)=ax(theta,phi)*x+ay(theta,phi)*y+az(theta,phi)*z+2.0*axy(theta,phi)*xy+2.0*ayz(theta,phi)*yz+2.0*azx(theta,phi)*zx
 
        outfile=outdir.'polarization_'.ifile.'.pdf'
        ifile=ifile+1
        set output outfile
        
        set multiplot
        
        set size 1,1
        set origin 0,0
        set xlabel "Energy (eV)" offset 0,0
        set ylabel "Intensity (Arb. Units)" offset 1,0
        set xrange [527:540]
        set yrange [0:10]
        p \
            datfile[1] u 1:2 w p pt 6 ps 0.5 lw 2 lc colo[1] t titl[1],\
            datfile[2] u 1:(f($2,$3,$4,$5,$6,$7)) ls 1 lc ''.colo[2] t titl[2],\
            datfile[3] u 1:(scaling*f($2,$3,$4,$5,$6,$7)) w p pt 7 ps 0.5 lw 2 lc ''.colo[3] t titl[3],\
            for [i=1:bandnum] datfile[3] every ::(band[i]-1):(kpoint[i]-1):(band[i]-1):(kpoint[i]-1) u 1:(scaling*f($2,$3,$4,$5,$6,$7)) w p pt 4 ps 1 lw 2 lc ''.colo[i+3] t titl[i+3],\
#            datfile[3] every :::(kpoint_test-1)::(kpoint_test-1) u 1:(scaling*f($2,$3,$4,$5,$6,$7)) w p pt 9 ps 1 lw 2 lc ''.colo[3]

        set size 0.5, 0.5
        set origin 0.25,0.5
        set view equal xyz
        unset xlabel
        unset ylabel
        unset zlabel
        set label 'x' at 1,0,0
        set label 'y' at 0,1.2,0
        set label 'z' at 0,0,1.2
        set xrange [-1:1]
        set yrange [-1:1]
        set zrange [-1:1]
        set arrow to rx(theta,phi),ry(theta,phi),rz(theta) ls 1
        set zeroaxis
        set xyplane at 0
        unset tics
        unset border
        splot NaN
        
        unset multiplot
        set border
        set tics
        unset arrow
        unset label
    }
}
}

#-------------------------------------------------------------------------------------[]
if (pic[59]==1) {

 array atom=['1']
# work_dir='Pt.110.x2y3z4.5_O1_vac15/'
# work_dir='Pt.110.x2y3z4.5_O2.12_vac15/'
# work_dir='Pt.110.x2y3z4.5_O2.13_vac15/'
# work_dir='Pt.110.x2y3z4.5_O2.14_vac15/'
# work_dir='Pt.110.x2y3z4.5_O3.135_vac15/'
# work_dir='Pt.110.x2y3z4.5_O4.v56_vac15/'
# work_dir='Pt.110.x2y3z4.5_O6_vac15/'
# work_dir='Pt.110.x2y4z4.5_O2.15_vac15/'
# work_dir='Pt.110.x2y4z4.5_O2.16_vac15/'
# work_dir='Pt.110.x2y4z4.5_O4.1458_vac15/'
# work_dir='Pt.110.x4y3z4.5_O2.12_vac15/'

# array atom=['1','2']
# work_dir='Pt.110.x2y4z4.5_O3.148_vac15/'
# work_dir='Pt.110.x2y4z4.5_O3.137_vac15/'
# work_dir='Pt.110.x2y6z4.5_O2.17_vac15/'
#   work_dir=work_dir.'vasp_sch.xm/'
#   work_dir=work_dir.'vasp_sch.xp/'
#   work_dir=work_dir.'vasp_sch.ym/'
#   work_dir=work_dir.'vasp_sch.zm/'
#   work_dir=work_dir.'vasp_sch.zp/'

 array atom=['1','3']
# work_dir='Pt.110.x2y3z4.5_O3.136_vac15/'
 work_dir='Pt.110.x2y4z4.5_O6.v56_vac15/'

# array atom=['1','11']
# work_dir='Pt.110.x12y2z4.5_O22_vac15/'

# array atom=['1','2','3']
# work_dir='Pt.110.x2y3z4.5_O3.123_vac15/'
# work_dir='Pt.110.x2y4z4.5_O4.1237_vac15/'

# array atom=['1','2','5']
# work_dir='Pt.110.x2y3z4.5_O5_vac15/'

 work_dir=work_dir.'vasp_sch/'
 work_dir=goto_pto_work_110.work_dir
atomnum=|atom|

datfilenum=2+atomnum
array datfile[datfilenum]
datfile[1]=goto_pto_exp.'20210512.Pt.110_norm.dat'
datfile[2]=work_dir.'xas_sym.dat'
do for [i=1:atomnum] {
    datfile[2+i]=work_dir.'atom_'.atom[i].'/xas_alignorm.dat'
}

titlnum=datfilenum
array titl[titlnum]
titl[1]='Exp.'
titl[2]='Theory'
do for [i=1:atomnum] {
    titl[2+i]='Oxygen'.atom[i]
}

# colornum=titlnum
  colornum=6
array colo[colornum]
colo[1]='black'
colorstart=1
colorwant=colornum-colorstart
do for [i=1:colorwant] {
    if (colorwant==2 || colorwant==1) {colo[colorstart+i]=colors2[i]}
    if (colorwant==3) {colo[colorstart+i]=colors3[i]}
    if (colorwant==4) {colo[colorstart+i]=colors4[i]}
    if (colorwant==5 || colorwant==6) {colo[colorstart+i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 7*1,5*1
set style line 1 lw 2

set angles degrees
npiece=2
piece=180.0/npiece

ax(theta,phi)=(sin(theta))**2.0*(cos(phi))**2.0
ay(theta,phi)=(sin(theta))**2.0*(sin(phi))**2.0
az(theta,phi)=(cos(theta))**2.0
axy(theta,phi)=(sin(theta))**2.0*(sin(phi))*(cos(phi))
ayz(theta,phi)=(sin(theta))*(cos(theta))*(sin(phi))
azx(theta,phi)=(sin(theta))*(cos(theta))*(cos(phi))
r=1.0
rx(theta,phi)=r*sin(theta)*cos(phi)
ry(theta,phi)=r*sin(theta)*sin(phi)
rz(theta)=r*cos(theta)

ifile=0
# do for [ipath=1:3]{
do for [ipath=1:1]{
    array npiece_end=[npiece-1,npiece/2-1,npiece/2-1]
    do for [ipiece=0:npiece_end[ipath]]{
        array ntheta=[90.0,90.0-piece*ipiece,piece*ipiece]
        array nphi=[piece*ipiece,180.0,0.0]
        theta=ntheta[ipath]
        phi=nphi[ipath]
        f(x,y,z,xy,yz,zx)=ax(theta,phi)*x+ay(theta,phi)*y+az(theta,phi)*z+2.0*axy(theta,phi)*xy+2.0*ayz(theta,phi)*yz+2.0*azx(theta,phi)*zx

        outfile=work_dir.'polarization/polarization_'.ifile.'.pdf'
        ifile=ifile+1
        set output outfile
                
        set multiplot
        
        set size 1,1
        set origin 0,0
        set xlabel "Energy (eV)" offset 0,0
        set ylabel "Intensity (Arb. Units)" offset 1,0
        set xrange [527:540]
        set yrange [0:10]
        p \
            datfile[1] u 1:2 w p pt 6 ps 0.5 lw 2 lc colo[1] t titl[1],\
            for [i=2:datfilenum] datfile[i] u 1:(f($2,$3,$4,$5,$6,$7)) ls 1 lc ''.colo[i] t titl[i],\

        set size 0.5, 0.5
        set origin 0.25,0.5
        set view equal xyz
        unset xlabel
        unset ylabel
        unset zlabel
        set label 'x' at 1,0,0
        set label 'y' at 0,1.2,0
        set label 'z' at 0,0,1.2
        set xrange [-1:1]
        set yrange [-1:1]
        set zrange [-1:1]
#        theta=sprintf('%4.1f',theta)
#        phi=sprintf('%4.1f',phi)
#        label_angle='{/Symbol q}='.theta.', {/Symbol f}='.phi
#        set label label_angle at -5,0,0
        set arrow to rx(theta,phi),ry(theta,phi),rz(theta) ls 1
        set zeroaxis
        set xyplane at 0
        unset tics
        unset border
        splot NaN
        
        unset multiplot
        set border
        set tics
        unset arrow
        unset label
    }
}
}

#-------------------------------------------------------------------------------------[]
if (pic[58]==1) {

subdir='Pt.110.x12y2z4.5_O22_vac15/'

datfilenum=3
array datfile[datfilenum]
datfile[1]=goto_pto_exp.'20210512.Pt.110_norm.dat'
outdir=goto_pto_work_110.subdir.'vasp_sch.aimd2_932/'
datfile[2]=goto_pto_work_110.subdir.'vasp_sch/xas_sym.dat'
datfile[3]=goto_pto_work_110.subdir.'vasp_sch.aimd2_932/xas_sym.dat'

titlnum=datfilenum
array titl[titlnum]
titl[1]='Exp.'
titl[2]='Theory 0K'
titl[3]='Theory 473K (1 snapshot)'

colornum=titlnum
array colo[colornum]
colo[1]='black'
colorstart=1
colorwant=colornum-colorstart
do for [i=1:colorwant] {
    if (colorwant==2 || colorwant==1) {colo[colorstart+i]=colors2[i]}
    if (colorwant==3) {colo[colorstart+i]=colors3[i]}
    if (colorwant==4) {colo[colorstart+i]=colors4[i]}
    if (colorwant==5 || colorwant==6) {colo[colorstart+i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 7*1,5*1
set style line 1 lw 2

ax(theta,phi)=(sin(theta))**2.0*(cos(phi))**2.0
ay(theta,phi)=(sin(theta))**2.0*(sin(phi))**2.0
az(theta,phi)=(cos(theta))**2.0
axy(theta,phi)=(sin(theta))**2.0*(sin(phi))*(cos(phi))
ayz(theta,phi)=(sin(theta))*(cos(theta))*(sin(phi))
azx(theta,phi)=(sin(theta))*(cos(theta))*(cos(phi))

set angles degrees
npiece=2
piece=180.0/npiece

r=1.0
rx(theta,phi)=r*sin(theta)*cos(phi)
ry(theta,phi)=r*sin(theta)*sin(phi)
rz(theta)=r*cos(theta)

ifile=0
# do for [ipath=1:3]{
do for [ipath=1:1]{
    array npiece_end=[npiece-1,npiece/2-1,npiece/2-1]
    do for [ipiece=0:npiece_end[ipath]]{
        array ntheta=[90.0,90.0-piece*ipiece,piece*ipiece]
        array nphi=[piece*ipiece,180.0,0.0]
        theta=ntheta[ipath]
        phi=nphi[ipath]
        theta=sprintf('%4.1f',theta)
        phi=sprintf('%4.1f',phi)
        label_angle='{/Symbol q}='.theta.', {/Symbol f}='.phi
        
        outfile=outdir.'polarization/polarization_'.ifile.'.pdf'
        ifile=ifile+1
        set output outfile
        
        f(x,y,z,xy,yz,zx)=ax(theta,phi)*x+ay(theta,phi)*y+az(theta,phi)*z+2.0*axy(theta,phi)*xy+2.0*ayz(theta,phi)*yz+2.0*azx(theta,phi)*zx
        
        set multiplot
        
        set size 1,1
        set origin 0,0

        set xlabel "Energy (eV)" offset 0,0
        set ylabel "Intensity (Arb. Units)" offset 1,0
        set xrange [527:540]
        set yrange [0:10]

        p \
            datfile[1] u 1:2 w p pt 6 ps 0.5 lw 2 lc colo[1] t titl[1],\
            datfile[2] u 1:(f($2,$3,$4,$5,$6,$7)) ls 1 lc ''.colo[2] t titl[2],\
            datfile[3] u 1:(f($2,$3,$4,$5,$6,$7)) ls 1 lc ''.colo[3] t titl[3],\

        set size 0.5, 0.5
        set origin 0.5,0.25

        set view equal xyz

        unset xlabel
        unset ylabel
        unset zlabel
        set label 'x' at 1,0,0
        set label 'y' at 0,1.2,0
        set label 'z' at 0,0,1.2
        set label label_angle at -5,0,0

        set xrange [-1:1]
        set yrange [-1:1]
        set zrange [-1:1]

        set arrow to rx(theta,phi),ry(theta,phi),rz(theta) ls 1
        
        set zeroaxis
        set xyplane at 0
        unset tics
        unset border

        splot NaN
        
        unset multiplot
        set border
        set tics
        unset arrow
        unset label
    }
}
}
#-------------------------------------------------------------------------------------[]
if (pic[53]==1) {
subdir='Pt.111_p2t2.O_vac/Pt.111.a4b4c4_O4_vac15/vasp_sch/atom_1/'
outfile=outdir.subdir.'sch.x_y.tm.exp.pdf'

array datfile[3]
datfile[1]='20210512.Pt-111_ysft.norm.dat'
datfile[2]='xas.x_y.dat'
datfile[3]='MYCARXAS'
do for [i=1:3] {datfile[i]=datdir.subdir.datfile[i]}


titlnum=6
array titl[titlnum]
titl[1]='Exp.'
titl[2]='Theory X\_Y'
titl[3]='Theory TM X'
titl[4]='Theory TM Y'
array band=[343,416]
array kpoint=[4,4]
array tm123=[1,1]
array tmxyz=['X','Y','Z']
titl[5]='BAND-'.band[1].' K-'.kpoint[1].' '.tmxyz[tm123[1]]
titl[6]='BAND-'.band[2].' K-'.kpoint[2].' '.tmxyz[tm123[2]]

colornum=3
array colo[colornum]
do for [i=1:colornum] {
    if (colornum==1) {colo[i]='black'}
    if (colornum==2) {colo[i]=colors2[i]}
    if (colornum==3) {colo[i]=colors3[i]}
    if (colornum==4) {colo[i]=colors4[i]}
    if (colornum==5 || colornum==6) {colo[i]=colors6[i]}
}
  sft=530.2114084673-515.2624082258
# sft=0
scaling=1e3

#set term X11 persist
set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [510+sft:530+sft]
set yrange [0:*]
set style line 1 lw 2

p \
datfile[1] u ($1+sft):($2*scaling) w p pt 6 ps 0.5 lw 2 lc 'black' t titl[1],\
datfile[2] u ($1+sft):($2*scaling) ls 1 lc ''.colo[1] t titl[2],\
datfile[3] u ($1+sft):($2*scaling*5) w p pt 7 ps 0.5 lw 2 lc ''.colo[2] t titl[3],\
datfile[3] u ($1+sft):($3*scaling*5) w p pt 7 ps 0.5 lw 2 lc ''.colo[3] t titl[4],\
datfile[3] every ::(band[1]-1):(kpoint[1]-1):(band[1]-1):(kpoint[1]-1) u ($1+sft):($2*scaling*5) w p pt 9 ps 1 lw 2 lc ''.colo[tm123[1]+1] t titl[5],\
datfile[3] every ::(band[2]-1):(kpoint[2]-1):(band[2]-1):(kpoint[2]-1) u ($1+sft):($2*scaling*5) w p pt 11 ps 1 lw 2 lc ''.colo[tm123[2]+1] t titl[6],\
}
#pause -1
#-------------------------------------------------------------------------------------[]
if (pic[52]==1) {
subdir='Pt-111_PtO2-001_vac/Pt-111a4b4c4_PtO2-001a4b3c1_vac15/vasp_sch/'
outfile=outdir.subdir.'sch.x_y.z.pdf'

array mid=['x_y','z']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]='xas_ave.'.mid[i].'.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]='Theory '.mid[i]}
#titl[1]='Theory x\_y'
titl[1]='Theory In-plane'
titl[2]='Theory Out-of-plane'

array colo[num]
if (num==1) {
    do for [i=1:num] {colo[i]='black'}
}
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

onset=516.0133792198
scaling=1e5

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [onset-5.0:onset+15.0]
set yrange [0:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:($2*scaling) ls 1 lc ''.colo[i] t titl[i],\
}

#-------------------------------------------------------------------------------------[]
if (pic[51]==1) {

subdir='Pt.110.x12y2z4.5_O22_vac15/vasp_sch/'

outfile=goto_pto_log_110.subdir.'sch.x.y.z.exp.pdf'

datfilenum=4
array datfile[datfilenum]
datfile[1]=goto_pto_exp.'20210512.Pt.110_norm.dat'
datdir=goto_pto_work_110.subdir
do for [i=2:datfilenum] {datfile[i]=datdir.'xas_alignorm.dat'}

titlnum=datfilenum
array titl=['','X','Y','Z']
titl[1]='Exp.'
do for [i=2:titlnum] {titl[i]='Theory '.titl[i]}

colornum=titlnum
array colo[colornum]
colo[1]='black'
colorstart=1
colorwant=colornum-colorstart
do for [i=1:colorwant] {
    if (colorwant==2 || colornum==1) {colo[colorstart+i]=colors2[i]}
    if (colorwant==3) {colo[colorstart+i]=colors3[i]}
    if (colorwant==4) {colo[colorstart+i]=colors4[i]}
    if (colorwant==5 || colornum==6) {colo[colorstart+i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [527.0:540.0]
set yrange [0:*]
set style line 1 lw 2

p \
datfile[1] u 1:2 w p pt 6 ps 0.5 lw 2 lc colo[1] t titl[1],\
for [i=2:datfilenum] datfile[i] u 1:i ls 1 lc ''.colo[i] t titl[i],\
}

#-------------------------------------------------------------------------------------[]
if (pic[50]==1) {
subdir='Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/vasp_sch/atom_1/'
outfile=outdir.subdir.'sch.x_y.z.exp.pdf'

array mid=['X_Y','Z']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]='CORE_DIELECTRIC_IMAG.'.mid[i].'.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}
expfile=datdir.subdir.'20210512.Pt-111_ysft.norm.dat'

array titl[num]
do for [i=1:num] {titl[i]='Theory '.mid[i]}
#titl[1]='Theory X\_Y'
titl[1]='Theory In-plane'
titl[2]='Theory Out-of-plane'
exptitl='Exp.'

array colo[num]
if (num==1) {
    do for [i=1:num] {colo[i]='black'}
}
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

sft=14.9755022276
scaling=1e5

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [510.2359062397+sft:530.2359062397+sft]
set yrange [0:*]
set style line 1 lw 2

p \
expfile u ($1+sft):($2*scaling) w p pt 6 ps 0.5 lw 2 lc 'black' t exptitl,\
for [i=1:num] datfile[i] u ($1+sft):($2*scaling) ls 1 lc ''.colo[i] t titl[i],\
}

#-------------------------------------------------------------------------------------[]
if (pic[49]==1) {

array middir=['1','3']
num1=|middir|
do for [j=1:num1] {

subdir='Pt-111_PtO2-001_vac/Pt-111a4b4c4_PtO2-001a4b3c1_vac15/vasp_sch/atom_'.middir[j].'/'
outfile=outdir.subdir.'sch.pdf'

array mid=['Z','Y','X','XY','YZ','ZX']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]='CORE_DIELECTRIC_IMAG.'.mid[i].'.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]=mid[i]}

array colo[num]
if (num==1) {
    do for [i=1:num] {colo[i]='black'}
}
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

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [512:532]
set yrange [*:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colo[i] t titl[i],\
}
}


#-------------------------------------------------------------------------------------[]
if (pic[48]==1) {

subdir='Pt.110_p12t2.O22_vac/Pt.110.a12b2c4.5_O22_vac15/aimd/'
outfile=gotolog_2.'aimd/aimd.pdf'

array mid=['aimd1','aimd2']
num=|mid|

datdir=gotowork_2.'aimd/'
array datfile[num]
do for [i=1:num] {datfile[i]=mid[i].'/step.dat'}
do for [i=1:num] {datfile[i]=datdir.datfile[i]}

array titl=['Free energy','Temperature']

array num1=[0,377]

colornum=2
array colo[colornum]
if (colornum==1) {
    do for [i=1:colornum] {colo[i]='black'}
}
if (colornum==2) {
    do for [i=1:colornum] {colo[i]=colors2[i]}
}
if (colornum==3) {
    do for [i=1:colornum] {colo[i]=colors3[i]}
}
if (colornum==4) {
    do for [i=1:colornum] {colo[i]=colors4[i]}
}
if (colornum==5 || colornum==6) {
    do for [i=1:colornum] {colo[i]=colors6[i]}
}

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "time (fs)" offset 0,0
set ylabel "Free energy (eV)" offset 1,0
set xrange [*:*]
set yrange [-1306:-1290]
set y2label "Temperature (K)" offset 1,0
set ytics nomirror
set y2tics
set y2range [300:660]
set key r b
set style line 1 lw 2

p \
datfile[1] u ($1*0.5):3 ls 1 lc ''.colo[1] t titl[1] axis x1y1,\
for [i=2:num] datfile[i] u (($1+num1[i])*0.5):3 ls 1 lc ''.colo[1] axis x1y1 ,\
datfile[1] u ($1*0.5):2 ls 1 lc ''.colo[2] t titl[2] axis x1y2 ,\
for [i=2:num] datfile[i] u (($1+num1[i])*0.5):2 ls 1 lc ''.colo[2] axis x1y2 ,\
}

#-------------------------------------------------------------------------------------[]
if (pic[46]==1) {
subdir='Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/qe_hch_scf/scf_1/'
outfile=outdir.subdir.'xspectra.epsilon_exp.pdf'

array mid=['010', '100','110','1-10']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]='xspectra.epsilon'.mid[i].'/xanes.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}
expfile=datdir.'../lixiaobao/20210512.Pt-111_ysft_norm.dat'

array titl[num]
do for [i=1:num] {titl[i]='{/Symbol e} '.mid[i]}
exptitl='Exp.'

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
expfile w p pt 6 ps 0.5 lw 2 lc 'black' t exptitl,\
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colo[i] t titl[i],\
}

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

array mid=['aimd1','aimd2', 'aimd3']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]=mid[i].'/step.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl=['1.0','0.01','0.0025']
do for [i=1:num] {titl[i]='SMASS = '.titl[i]}

array num1=[0,212,212+497]

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

array mid=['aimd1','aimd2', 'aimd3']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]=mid[i].'/step.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl=['1.0','0.01','0.0025']
do for [i=1:num] {titl[i]='SMASS = '.titl[i]}

array num1=[0,212,212+497]

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
if (pic[15]==1) {

array middir=['1','3','5','7','9','11']
num1=|middir|
do for [j=1:num1] {

subdir='Pt-110_O_vac/Pt-110a12b2c4.5_O22_vac15/vasp_sch/atom_'.middir[j].'/'
outfile=outdir.subdir.'sch.pdf'

array mid=['Z','Y','X','XY','YZ','ZX']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]='CORE_DIELECTRIC_IMAG.'.mid[i].'.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]=mid[i]}

array colo[num]
if (num==1) {
    do for [i=1:num] {colo[i]='black'}
}
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

set term pdfcairo font "Arial,25" size 7*1,5*1
set output outfile
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [512:532]
set yrange [*:*]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:2 ls 1 lc ''.colo[i] t titl[i],\
}
}
#-------------------------------------------------------------------------------------[]
if (pic[8]==1) {
subdir='Pt-111_O_vac/Pt-111a4b4c4_O4_vac15/vasp_sch/atom_1/'
outfile=outdir.subdir.'sch.pdf'

array mid=['Z','Y','X','XY','YZ','ZX']
num=|mid|

array datfile[num]
do for [i=1:num] {datfile[i]='CORE_DIELECTRIC_IMAG.'.mid[i].'.dat'}
do for [i=1:num] {datfile[i]=datdir.subdir.datfile[i]}

array titl[num]
do for [i=1:num] {titl[i]=mid[i]}

array colo[num]
if (num==1) {
    do for [i=1:num] {colo[i]='black'}
}
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
set xlabel "Energy (eV)" offset 0,0
set ylabel "Intensity (Arb. Units)" offset 1,0
set xrange [510:530]
set yrange [0:0.12]
set style line 1 lw 2

p \
for [i=1:num] datfile[i] u 1:($2*4e3) ls 1 lc ''.colo[i] t titl[i],\
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
datfile1 u ($1**3):($2-E0_1) w p pt 6  ps 0.5 lc ''.colors2[1] lw 1 t titl1,\
f_1(x) w l lc ''.colors2[1] lw 1,\
datfile3 u ($1**3):($2-E0_3) w p pt 10 ps 0.5 lc ''.colors2[2] lw 1 t titl3,\
f_3(x) w l lc ''.colors2[2] lw 1
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
datfile1 u ($1**3):($2-E0_1) w p pt 6  ps 0.5 lc ''.colors2[1] lw 1 t titl1,\
f_1(x) w l lc ''.colors2[1] lw 1,\
datfile3 u ($1**3):($2-E0_3) w p pt 8  ps 0.5 lc ''.colors2[2] lw 1 t titl3,\
f_3(x) w l lc ''.colors2[2] lw 1
}

