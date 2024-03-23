#!/bin/bash

conda activate your_conda_env_name
conda install anaconda-clean
anaconda-clean # add `--yes` to avoid being prompted to delete each one
sudo rm -r ~/miniconda/
vi ~/.bashrc
# -> Search for conda and delete the lines containing it
# -> If you're not sure if the line belongs to conda, comment it instead of deleting it just to be safe
source ~/.bashrc
rm -rf ~/.anaconda_backup