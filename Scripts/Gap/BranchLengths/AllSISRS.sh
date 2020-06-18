#!/bin/bash
#SBATCH --job-name="BL_AllSISRS-raxml"
#SBATCH --time=150:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_BL-raxml_ALLSISRS"
#SBATCH --error="err_BL-raxml_ALLSISRS"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE

cd $SLURM_SUBMIT_DIR

module load raxml/8.2.3

raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_AllSISRS.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m0_AllSISRS -w /home/erenada/BirdTree/Analyses/BranchLengths
raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_AllSISRS.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m1_AllSISRS -w /home/erenada/BirdTree/Analyses/BranchLengths
raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_AllSISRS.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m2_AllSISRS -w /home/erenada/BirdTree/Analyses/BranchLengths
raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_AllSISRS.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m3_AllSISRS -w /home/erenada/BirdTree/Analyses/BranchLengths
raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_AllSISRS.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m4_AllSISRS -w /home/erenada/BirdTree/Analyses/BranchLengths
raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_AllSISRS.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m5_AllSISRS -w /home/erenada/BirdTree/Analyses/BranchLengths
