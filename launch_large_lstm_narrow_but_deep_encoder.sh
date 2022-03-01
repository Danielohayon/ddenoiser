# here we will set the base line for a 1mil parameter model
#hurting the depth but not the width
#[2022-03-01 08:19:15,408][__main__][INFO] - Size: 4.4 MB
#[2022-03-01 08:19:15,409][__main__][INFO] - num params 1.157665
#[2022-03-01 08:19:15,409][__main__][INFO] - Field: 2.3 ms
#[2022-03-01 08:19:15,410][__main__][INFO] - enc 0.28248, dec 0.282289, lstm 0.592896 in mil

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
  demucs.growth=1.35 \
  demucs.lstm_depth=4 \
  ddp=1 $@