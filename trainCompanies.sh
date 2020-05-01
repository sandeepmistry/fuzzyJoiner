#!/bin/sh

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-9.0/lib64/

mkdir -p mydata

python3 build_model.py --input companies_to_cleanse/companies.txt --loss_function our-loss --use_l2_norm False --num_layers 3 --entity_type companies --model mymodel1 --data mydata/data
