
# Tensorflow / Keras with M1 Mac Apple Metal GPU and Intel Mac support
## Steps to install miniconda with tensorflow2 / Keras on Mac M1 with GPU support and Intel Mac Python 3.7 support

- explanation: https://www.youtube.com/watch?v=o4-bI_iZKPA

- activate cli on Mac once per Mac: `xcode-select --install`

# remove miniconda
```
conda activate your_conda_env_name
conda install anaconda-clean
anaconda-clean # add `--yes` to avoid being prompted to delete each one
sudo rm -r ~/miniconda/
vi ~/.bashrc
# -> Search for conda and delete the lines containing it
# -> If you're not sure if the line belongs to conda, comment it instead of deleting it just to be safe
source ~/.bashrc
rm -rf ~/.anaconda_backup
```

# reinstall miniconda with env tensorflow m1 mac
- Download miniconda M1 Arm Mac 64 bits pkg:
- from: https://docs.anaconda.com/free/miniconda/
- Then in a terminal run all these commands
- `conda install -y jupyter`
- `conda create --name tensorflow python=3.9`
- `conda activate tensorflow`
- `conda install -c conda-forge nb_conda`
- `conda env update --file /path/to/tensorflow-m1mac.yml`
- `conda install -c conda-forge cufflinks-pyb`
- then as usual, test with
- `jupyter notebook`
- and
- `python check.py`
```
# run: python check.py - with contents of the check.py file:
# in base env:
# conda installtensorflow
# What version of Python do you have?
import sys

import tensorflow as tf
import keras

print(f"Tensor Flow Version: {tf.__version__}")
print(f"Keras Version: {keras.__version__}")
print(f"Python {sys.version}")
gpu = len(tf.config.list_physical_devices('GPU'))>0
print("GPU is", "available" if gpu else "NOT AVAILABLE")
```

# Kurs Deep Learning mit Keras und Tensorflow 2
- https://www.udemy.com/course/deep-learning-tensorflow
# Jeff Heaton installation intel mac Python <= 3.8
- https://www.youtube.com/watch?v=mcIKDJYeyFY
- https://github.com/jeffheaton/t81_558_deep_learning/blob/master/install/manual_setup.ipynb
```
# conda env remove -y --name nameof-env
conda env create -v -f tensorflow-intelmac.yml
# conda create -y --name tensorflow python=3.6
source activate tensorflow
conda install -y numpy &&
conda install -y pandas &&
conda install -y matplotlib &&
conda install -y scikit-learn &&
conda install -y xlrd &&
conda install -y openpyxl &&
conda install -y lxml &&
conda install -y sqlalchemy &&
conda install -y seaborn &&
conda install -y -c plotly chart-studio &&
conda install -y -c conda-forge cufflinks-pyb &&
conda install -y pandas-datareader &&
conda install -y pydot &&
conda install -y raphviz &&
conda install -y -v pyspark &&
conda install -y pip &&
conda install -y conda-forge::tensorflow-datasets &&
conda install -y jupyter
conda install -y -c conda-forge cufflinks-pyb
conda update -y --all

pip install --upgrade tensorflow==2.2.0
pip install --upgrade keras==2.2.4

python -m ipykernel install --user --name tensorflow --display-name "Python 3.6 (tensorflow)"
```
