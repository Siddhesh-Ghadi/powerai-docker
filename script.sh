#!/usr/bin/env bash

set -xeuo pipefail
export PATH=/opt/anaconda/bin:$PATH

cat >~/.condarc <<CONDARC
conda-build:
 root-dir: /home/conda/feedstock_root/build_artifacts
CONDARC

conda config --prepend channels https://public.dhe.ibm.com/ibmdl/export/pub/software/server/ibm-ai/conda/
export IBM_POWERAI_LICENSE_ACCEPT=yes

conda install --yes --quiet conda-forge-ci-setup=2 conda-build=3.19.2 -c conda-forge

conda install -y git
