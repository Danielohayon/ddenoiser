# here we will set the base line for a 1mil parameter model
# Two layers of encoder with deep lstm
#[2022-03-02 11:04:07,706][__main__][INFO] - Size: 3.9 MB
#[2022-03-02 11:04:07,707][__main__][INFO] - num params 1.028554
#[2022-03-02 11:04:07,707][__main__][INFO] - Field: 0.6 ms
#[2022-03-02 11:04:07,708][__main__][INFO] - enc 0.136293, dec 0.136117, lstm 0.756144 in mil
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
  restart=False \
  batch_size=64 \
  demucs.depth=2 \
  demucs.growth=3.7 \
  demucs.lstm_depth=3 \
  ddp=1 $@