#!/bin/bash
#SBATCH --job-name=bot-sort
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --time=01:00:00
#SBATCH --partition=short
#SBATCH --output=bot-sort_%j.out

# Load necessary modules
module load python/3.x
# If other specific modules are needed, load them here

# Change to the directory containing your BoT-SORT project
cd /path/to/BoT-SORT_dir

# Run the tracking script
python3 tools/track.py /path/to/datasets/MOT17 --default-parameters --with-reid --benchmark "MOT17" --eval "test" --fp16 --fuse

# Run the interpolation script
python3 tools/interpolation.py --txt_path /path/to/track_result
