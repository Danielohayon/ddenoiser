# here we will set the base line for a 1mil parameter model
#hurting the width

#[2022-03-01 08:38:48,770][__main__][INFO] - Size: 4.1 MB
#[2022-03-01 08:38:48,770][__main__][INFO] - num params 1.076914
#[2022-03-01 08:38:48,771][__main__][INFO] - Field: 37.3 ms
#[2022-03-01 08:38:48,771][__main__][INFO] - enc 0.538553, dec 0.538361, lstm 0 in mil


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
  demucs.growth=1.42 \
  demucs.use_lstm=False \
  ddp=1 $@