#!/bin/tcsh -f

set file=$1

cp /eos/user/m/malvesga/miniaod/$file input.root 
root -b -l <<EOS
.L ntp1-miniaod_MC.C
run()
.q
EOS
mv output_cut.root histos_MC/$file
rm input.root