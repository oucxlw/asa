#!/bin/bash 

set -eu
checkpoint=./exp/conv_tasnet/cd_adap/   	 
gpuid=-1	# whether to use the gpu
data_root=./data/tt		
mix_scp=$data_root/mix.scp
ref_scp=$data_root/ref.scp 
aux_scp=$data_root/aux.scp
cal_sdr=1
fs=8000
dump_dir=$checkpoint/dump_dir 

if [ $stage -le 1 ]; then 
	./nnet/evaluate.py \
		--checkpoint $checkpoint \
		--gpuid $gpuid \
		--mix_scp $mix_scp \
		--ref_scp $ref_scp \
		--aux_scp $aux_scp \
		--cal_sdr $cal_sdr \
		> $1.eva.log 2>&1
fi

echo "Decoding done!"





			
