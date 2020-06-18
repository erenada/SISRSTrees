#!/bin/bash
#SBATCH --job-name="BL_genic-other_nogap-raxml"
#SBATCH --time=150:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_BL-raxml_genic-other_nogap"
#SBATCH --error="err_BL-raxml_genic-other_nogap"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE

cd $SLURM_SUBMIT_DIR

module load raxml/8.2.3

raxmlHPC -f e -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m0/Jarvis_pi_m0_genic-other_nogap.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m0_genic-other_nogap -w /home/erenada/BirdTree/Analyses/BranchLengths -asc-­corr=lewis
raxmlHPC -f e -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m1/Jarvis_pi_m1_genic-other_nogap.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m1_genic-other_nogap -w /home/erenada/BirdTree/Analyses/BranchLengths -asc-­corr=lewis
raxmlHPC -f e -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m2/Jarvis_pi_m2_genic-other_nogap.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m2_genic-other_nogap -w /home/erenada/BirdTree/Analyses/BranchLengths -asc-­corr=lewis
raxmlHPC -f e -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m3/Jarvis_pi_m3_genic-other_nogap.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m3_genic-other_nogap -w /home/erenada/BirdTree/Analyses/BranchLengths -asc-­corr=lewis
raxmlHPC -f e -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m4/Jarvis_pi_m4_genic-other_nogap.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m4_genic-other_nogap -w /home/erenada/BirdTree/Analyses/BranchLengths -asc-­corr=lewis
raxmlHPC -f e -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m5/Jarvis_pi_m5_genic-other_nogap.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m5_genic-other_nogap -w /home/erenada/BirdTree/Analyses/BranchLengths -asc-­corr=lewis
