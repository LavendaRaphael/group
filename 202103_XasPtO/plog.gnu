colors='black red blue green cyan magenta yellow'
set term pdfcairo font "Arial,25" size 6*1,5*1
set samples 500
set key box
set key samplen 2
set key width 2
set key height 0.5
set key noautotitle
set encoding iso_8859_1

#-------------------------------------------------------------------------------------[]
if (0==1) {
workhome0="~/group/202103_XasPtO/server/Pt/"
set output workhome0."Pt_eos_kpoints.pdf"
set xlabel "Volume ({\305}^3)" offset 0,0
set ylabel "E-E0 (eV)" offset 1,0
set xrange [61.5:63.5]
set yrange [:]
set format x "%7.1f"
set format y "%7.4f"
set key t c
set key nobox

folder_1=workhome0."Pt-a1b1c1_e500k0.25/"
E0_1=system("grep '^Murnaghan : E0.*eV'  ".folder_1."eos.log |awk '{print $5}'")
B0_1=system("grep '^Murnaghan : B0.*eV'  ".folder_1."eos.log |awk '{print $5}'")
Bp_1=system("grep '^Murnaghan : Bp'      ".folder_1."eos.log |awk '{print $5}'")
V0_1=system("grep '^Murnaghan : V0.*ang' ".folder_1."eos.log |awk '{print $5}'")

folder_2=workhome0."Pt-a1b1c1_e500k0.20/"
E0_2=system("grep '^Murnaghan : E0.*eV'  ".folder_2."eos.log |awk '{print $5}'")
B0_2=system("grep '^Murnaghan : B0.*eV'  ".folder_2."eos.log |awk '{print $5}'")
Bp_2=system("grep '^Murnaghan : Bp'      ".folder_2."eos.log |awk '{print $5}'")
V0_2=system("grep '^Murnaghan : V0.*ang' ".folder_2."eos.log |awk '{print $5}'")

folder_3=workhome0."Pt-a1b1c1_e500k0.15/"
E0_3=system("grep '^Murnaghan : E0.*eV'  ".folder_3."eos.log |awk '{print $5}'")
B0_3=system("grep '^Murnaghan : B0.*eV'  ".folder_3."eos.log |awk '{print $5}'")
Bp_3=system("grep '^Murnaghan : Bp'      ".folder_3."eos.log |awk '{print $5}'")
V0_3=system("grep '^Murnaghan : V0.*ang' ".folder_3."eos.log |awk '{print $5}'")

f_1(x) = B0_1/Bp_1 * x * ((V0_1/x)**Bp_1/(Bp_1-1.0)+1.0) - V0_1*B0_1/(Bp_1-1.0)
f_2(x) = B0_2/Bp_2 * x * ((V0_2/x)**Bp_2/(Bp_2-1.0)+1.0) - V0_2*B0_2/(Bp_2-1.0)
f_3(x) = B0_3/Bp_3 * x * ((V0_3/x)**Bp_3/(Bp_3-1.0)+1.0) - V0_3*B0_3/(Bp_3-1.0)

p \
folder_1.'e0_a.dat' u ($1**3):($2-E0_1) w p pt 6  ps 0.5 lc ''.word(colors,1) lw 1 t 'KSPACING=0.25 ({\305}^{-1})',\
f_1(x) w l lc ''.word(colors,1) lw 1 t "",\
folder_2.'e0_a.dat' u ($1**3):($2-E0_2) w p pt 8  ps 0.5 lc ''.word(colors,2) lw 1 t 'KSPACING=0.20 ({\305}^{-1})',\
f_2(x) w l lc ''.word(colors,2) lw 1 t "",\
folder_3.'e0_a.dat' u ($1**3):($2-E0_3) w p pt 10 ps 0.5 lc ''.word(colors,3) lw 1 t 'KSPACING=0.15 ({\305}^{-1})',\
f_3(x) w l lc ''.word(colors,3) lw 1 t ""
}

#-------------------------------------------------------------------------------------[]
if (1==1) {
workhome0="~/group/202103_XasPtO/server/Pt/"
set output workhome0."Pt_eos_cutoff.pdf"
set xlabel "Volume ({\305}^3)" offset 0,0
set ylabel "E-E0 (eV)" offset 1,0
set xrange [61.5:63.5]
set yrange [:]
set format x "%7.1f"
set format y "%7.4f"
set key t c
set key nobox

folder_1=workhome0."Pt-a1b1c1_e500k0.25/"
E0_1=system("grep '^Murnaghan : E0.*eV'  ".folder_1."eos.log |awk '{print $5}'")
B0_1=system("grep '^Murnaghan : B0.*eV'  ".folder_1."eos.log |awk '{print $5}'")
Bp_1=system("grep '^Murnaghan : Bp'      ".folder_1."eos.log |awk '{print $5}'")
V0_1=system("grep '^Murnaghan : V0.*ang' ".folder_1."eos.log |awk '{print $5}'")

folder_2=workhome0."Pt-a1b1c1_e600k0.25/"
E0_2=system("grep '^Murnaghan : E0.*eV'  ".folder_2."eos.log |awk '{print $5}'")
B0_2=system("grep '^Murnaghan : B0.*eV'  ".folder_2."eos.log |awk '{print $5}'")
Bp_2=system("grep '^Murnaghan : Bp'      ".folder_2."eos.log |awk '{print $5}'")
V0_2=system("grep '^Murnaghan : V0.*ang' ".folder_2."eos.log |awk '{print $5}'")

folder_3=workhome0."Pt-a1b1c1_e700k0.25/"
E0_3=system("grep '^Murnaghan : E0.*eV'  ".folder_3."eos.log |awk '{print $5}'")
B0_3=system("grep '^Murnaghan : B0.*eV'  ".folder_3."eos.log |awk '{print $5}'")
Bp_3=system("grep '^Murnaghan : Bp'      ".folder_3."eos.log |awk '{print $5}'")
V0_3=system("grep '^Murnaghan : V0.*ang' ".folder_3."eos.log |awk '{print $5}'")

f_1(x) = B0_1/Bp_1 * x * ((V0_1/x)**Bp_1/(Bp_1-1.0)+1.0) - V0_1*B0_1/(Bp_1-1.0)
f_2(x) = B0_2/Bp_2 * x * ((V0_2/x)**Bp_2/(Bp_2-1.0)+1.0) - V0_2*B0_2/(Bp_2-1.0)
f_3(x) = B0_3/Bp_3 * x * ((V0_3/x)**Bp_3/(Bp_3-1.0)+1.0) - V0_3*B0_3/(Bp_3-1.0)

p \
folder_1.'e0_a.dat' u ($1**3):($2-E0_1) w p pt 6  ps 0.5 lc ''.word(colors,1) lw 1 t 'ENCUT=500 (eV)',\
f_1(x) w l lc ''.word(colors,1) lw 1 t "",\
folder_3.'e0_a.dat' u ($1**3):($2-E0_3) w p pt 8  ps 0.5 lc ''.word(colors,3) lw 1 t 'ENCUT=700 (eV)',\
f_3(x) w l lc ''.word(colors,3) lw 1 t ""
}
