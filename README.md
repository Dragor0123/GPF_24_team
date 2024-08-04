1. 환경 설정
python            3.9.19
cuda               11.3
pytorch           1.12.1
networkx           2.6.3
numpy              1.26.4
pandas             2.2.2
rdkit              2022.3.4
scikit-learn       1.5.1
scipy              1.13.1
tensorboardX       2.6.2.2
torch              1.11.0
torch_cluster      1.6.3
torch_geometric    2.0.4
torch_scatter      2.1.2
torch-sparse       0.6.13
torch_spline_conv  1.2.2
torchaudio         0.11.0
torchvision        0.12.0
tqdm               4.66.4

2. 데이터셋
pretrain-gnns 디렉토리에 있는 README.md 를 읽고 필요한 데이터셋을 다운받습니다.
https://snap.stanford.edu/gnn-pretrain/data/chem_dataset.zip
https://snap.stanford.edu/gnn-pretrain/data/bio_dataset.zip

단, 다운 받은 데이터셋에서 processed 폴더의 geometric_data_processed.pt는 파이썬 3.7버전으로 프로세싱된 바이너리이기 때문에 그대로 사용할 수 없습니다.
geometric_data_processed.pt 을 지우고 프로그램을 실행해야 합니다.

3. pretrain-gnns
해당 디렉토리의 read.me를 읽으면
#### 1. Self-supervised pre-training, 
#### 2. Supervised pre-training
#### 3. Fine-tuning
세 단계가 있는데, GPF를 돌릴 때에는 "3. Fine-tuning"은 불필요합니다.
pretrain에서 "pretrain_contextpred.py, pretrain_deepgraphinfomax.py, pretrain_edgepred.py, pretrain_masking.py" 중 하나를 선택하여 
Self-supervised pre-traininig을 먼저 수행한 다음에 "pretrain_supervised.py"를 사용하여 supervised_pretrain 아웃풋 파일을 만드십시오.
그리고 해당 아웃풋 파일을 GPF 프로그램을 통해 prompt tuning을 하면 됩니다!
