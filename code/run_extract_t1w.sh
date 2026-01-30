#!/bin/bash
#SBATCH --account=rrg-pbellec
#SBATCH --job-name=extract_tseries
#SBATCH --output=/home/mstlaure/links/scratch/neuromod/things.timeseries/slurm_files/slurm-%A_%a.out
#SBATCH --error=/home/mstlaure/links/scratch/neuromod/things.timeseries/slurm_files/slurm-%A_%a.err
#SBATCH --time=12:00:00
#SBATCH --cpus-per-task=24
#SBATCH --mem-per-cpu=4000M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=marie.stl@gmail.com

# activate project's virtual env
source /home/mstlaure/links/projects/rrg-pbellec/mstlaure/cneuromod_extract_tseries/env/bin/activate

cd cneuromod_extract_tseries

# launch job
python -m timeseries.run dataset="things" parcellation="gm_epi" subject_list=["${1}"] output_dir="../.." data_dir="../../sourcedata"


