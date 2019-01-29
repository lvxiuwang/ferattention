#!/bin/bash


# parameters
DATABACK='~/.datasets/coco'
DATA='~/.datasets'
NAMEDATASET='bu3dfe' #bu3dfe, ferblack
PROJECT='../out'
EPOCHS=500
BATCHSIZE=240
LEARNING_RATE=0.0001
MOMENTUM=0.5
PRINT_FREQ=75
WORKERS=20
RESUME='chk000350.pth.tar' #chk000010, model_best
GPU=0
ARCH='atentionresnet34'
LOSS='attgmm'
OPT='adam'
SCHEDULER='step'
NUMCLASS=7 #7, 8
NUMCHANNELS=3
DIM=32
SNAPSHOT=10
IMAGESIZE=128
KFOLD=0
NACTOR=10
EXP_NAME='fer_'$ARCH'_'$LOSS'_'$OPT'_'$NAMEDATASET'_dim'$DIM'_preactresnet18x64_fold'$KFOLD'_003'


rm -rf $PROJECT/$EXP_NAME/$EXP_NAME.log
rm -rf $PROJECT/$EXP_NAME/
mkdir $PROJECT    
mkdir $PROJECT/$EXP_NAME  


python ../train.py \
$DATA \
--databack=$DATABACK \
--name-dataset=$NAMEDATASET \
--project=$PROJECT \
--name=$EXP_NAME \
--epochs=$EPOCHS \
--kfold=$KFOLD \
--nactor=$NACTOR \
--batch-size=$BATCHSIZE \
--learning-rate=$LEARNING_RATE \
--momentum=$MOMENTUM \
--image-size=$IMAGESIZE \
--channels=$NUMCHANNELS \
--dim=$DIM \
--num-classes=$NUMCLASS \
--print-freq=$PRINT_FREQ \
--snapshot=$SNAPSHOT \
--workers=$WORKERS \
--resume=$RESUME \
--gpu=$GPU \
--loss=$LOSS \
--opt=$OPT \
--scheduler=$SCHEDULER \
--arch=$ARCH \
--parallel \
--finetuning \
2>&1 | tee -a $PROJECT/$EXP_NAME/$EXP_NAME.log \

