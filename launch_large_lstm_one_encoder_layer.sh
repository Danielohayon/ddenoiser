# here we will set the base line for a 1mil parameter model
# Two layers of encoder with deep lstm
#[2022-03-02 10:30:58,827][__main__][INFO] - num params 1.115674
#[2022-03-02 10:30:58,827][__main__][INFO] - Field: 0.6 ms
#[2022-03-02 10:30:58,827][__main__][INFO] - enc 0.088341, dec 0.088213, lstm 0.93912 in mil

python train.py \
  dset=valentini \
  demucs.causal=1 \
  demucs.hidden=48 \
  bandmask=0.2 \
  shift_same=True \
  stft_loss=True \
  stft_sc_factor=0.1 stft_mag_factor=0.1 \
  segment=4.5 \
  stride=0.5 \
  restart=True \
  batch_size=256 \
  demucs.depth=2 \
  demucs.growth=2.7 \
  demucs.lstm_depth=7 \
  ddp=1 $@