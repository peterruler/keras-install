
# Tensorflow / Keras with M1 Mac Apple Metal GPU support

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

# reinstall miniconda with env tensorflow
- Download miniconda M1 Arm Mac 64 bits pkg:
- from: https://docs.anaconda.com/free/miniconda/
- Then in a terminal run all these commands
- `conda install -y jupyter`
- `conda create --name tensorflow python=3.9`
- `conda activate tensorflow`
- `conda install -c conda-forge nb_conda`
- `conda install -c anaconda tensorflow-gpu`
- `conda env update --file /path/to/tools.yml`
- or
- `conda env update --file tools-m1-udemy.yml`
- and
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
