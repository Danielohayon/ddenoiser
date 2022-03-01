# here we will set the base line for a 1mil parameter model
# Two layers of encoder with deep lstm
#[2022-03-01 23:27:33,103][__main__][INFO] - Size: 4.2 MB
#[2022-03-01 23:27:33,104][__main__][INFO] - num params 1.089793
#[2022-03-01 23:27:33,104][__main__][INFO] - Field: 0.6 ms
#[2022-03-01 23:27:33,104][__main__][INFO] - enc 0.06072, dec 0.060625, lstm 0.968448 in mil
python train.py \
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
  demucs.depth=2 \
  demucs.lstm_depth=13 \
  ddp=1 $@