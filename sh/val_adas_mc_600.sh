#!/bin/bash
NET=detnet59
DATASET=adas
BATCH_SIZE=1
CHECKPOINT=362000
vGPU=2

CHECKEPOCH=2
CHECKSESSION=1
THRESH=0.5

#EXP_NAME='tired_tday_flip_720'
EXP_NAME='adas_mc_600'

echo "######### test ########"
CUDA_VISIBLE_DEVICES=${vGPU} /usr/bin/python val_net.py ${EXP_NAME} \
                --dataset ${DATASET} \
                --net ${NET} \
                --checksession ${CHECKSESSION} \
                --checkepoch ${CHECKEPOCH} --checkpoint ${CHECKPOINT} \
                --bs ${BATCH_SIZE} \
                --thresh ${THRESH} \
                --cag \
                --cuda \
                --vis
