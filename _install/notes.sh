#/bin/bash
conda update -n base -c defaults conda
conda install -y jupyter
conda create --name tensorflow2 python=3.9
conda activate tensorflow2
conda install numpy
conda install pandas
conda install matplotlib
conda install scikit-learn
conda install xlrd
conda install openpyxl
conda install lxml
conda install sqlalchemy
conda install seaborn
conda install -c plotly chart-studio
conda install -c conda-forge cufflinks-pyb
conda install pandas-datareader
conda install pydot
conda install graphviz
conda install -v pyspark
conda install pip
conda install conda-forge::tensorflow-datasets
pip install tensorboard

conda install jupyterlab
python -m ipykernel install --user --name tensorflow --display-name "Python 3.8 (tensorflow2)"

jupyter notebook
jupyter lab
# https://medium.com/@sorenlind/tensorflow-with-gpu-support-on-apple-silicon-mac-with-homebrew-and-without-conda-miniforge-915b2f15425b
brew update
brew install hdf5
pip install tensorflow-macos
pip install tensorflow-metal
python check.py