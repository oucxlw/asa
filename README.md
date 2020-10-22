# Attention-based scaling adaptation for target speech extraction

The codes here are implementations of attention-based scaling adaptation (ASA), which introduces a special attention mechanism to investigate the dynamic interaction between different mixtures and the target speaker to exploit the discriminative target speaker clues.
Under the same network configurations, the ASA in a single-channel condition can achieve competitive performance gains as that achieved from two-channel mixtures with inter-microphone phase difference (IPD) features.
 
To optimize the memory during training process, the [memonger](https://github.com/Lyken17/pytorch-memonger) technology is applied.

# Data 

- Mixtures, `cd ./data/anechoic`, modify corresponding data path and run `sh run_data_generation.sh`.
- Reverberation, `cd ./data/reverberate`, modify  corresponding data path and run `sh launch_spatialize.sh`.

    
# Usage

- Training: configure the [conf.py](https://github.com/jyhan03/asa/blob/master/nnet/conf.py) and run `sh train.sh 0 asa`.	
- Evaluate: modify the corresponding data of [decode.sh](https://github.com/jyhan03/asa/blob/master/decode.sh) and run `sh decode.sh asa`.

# Results

| System | FF | MM | FM | Avg |
| :------ |:--:|:--:|:--:|:--: |   
|(0) TSB  | 9.43 / 8.84 | 10.02 / 9.52 | 12.54 / 12.06 | 11.26 / 10.76 |
|(1) TSB (IPD)    | 10.01 / 9.46 | 10.51 / 10.02 | 12.80 / 12.31 | 11.65 / 11.15 |
|(2) ASA  | 9.78 / 9.23 | 10.36 / 9.86 | 12.78 / 12.29 | 11.55 / 11.05|
|(3) ASA (MP) | 9.83 / 9.26 | 10.47 / 9.97 | 12.89 / 12.40 | 11.65 / 11.15 |


# Contact
Email: jyhan03@163.com

# Reference
- Code & Scripts
    - [Mixture data](https://github.com/xuchenglin28/speaker_extraction)
    - [Reverberate data](https://www.merl.com/demos/deep-clustering)
    - [Conv-TasNet implementation](https://github.com/funcwj/conv-tasnet)
- Paper
    -  [M. Delcroix, T. Ochiai, K. Zmolikova, K. Kinoshita, N. Tawara, T.Nakatani, and S. Araki, “Improving speaker discrimination of target speech extraction with time-domain speakerbeam,” in Proc. ICASSP. IEEE, 2020, pp. 691–695.](https://arxiv.org/abs/2001.08378)







 
