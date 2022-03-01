# here we will set the base line for a 1mil parameter model
#hurting the width

#[2022-03-01 08:29:21,418][__main__][INFO] - Size: 4.5 MB
#[2022-03-01 08:29:21,418][__main__][INFO] - num params 1.188025
#[2022-03-01 08:29:21,419][__main__][INFO] - Field: 37.3 ms
#[2022-03-01 08:29:21,419][__main__][INFO] - enc 0.398154, dec 0.397999, lstm 0.391872 in mil

python train.py \
  wandb=True\
  dset=valentini \
  demucs.causal=1 \
  demucs.hidden=48 \
  bandmask=0.2 \
  remix=1 \
  shift=8000 \
  shift_same=True \
  stft_loss=True \
  stft_sc_factor=0.1 stft_mag_factor=0.1 \
  segment=4.5 \
  stride=0.5 \
  restart=True \
  batch_size=256 \
  demucs.growth=1.35 \
  demucs.use_lstm=True \
  ddp=1 $@