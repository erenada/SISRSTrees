#!/bin/bash
#SBATCH --job-name="BL_AllUniquelyMapped-raxml"
#SBATCH --time=150:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_BL-raxml_AllUniquelyMapped"
#SBATCH --error="err_BL-raxml_AllUniquelyMapped"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE

cd $SLURM_SUBMIT_DIR

module load raxml/8.2.3

raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_AllUniquelyMapped.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m0_AllUniquelyMapped -w /home/erenada/BirdTree/Analyses/BranchLengths --asc-corr=lewis
raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_AllUniquelyMapped.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m1_AllUniquelyMapped -w /home/erenada/BirdTree/Analyses/BranchLengths --asc-corr=lewis
raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_AllUniquelyMapped.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m2_AllUniquelyMapped -w /home/erenada/BirdTree/Analyses/BranchLengths --asc-corr=lewis
raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_AllUniquelyMapped.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m3_AllUniquelyMapped -w /home/erenada/BirdTree/Analyses/BranchLengths --asc-corr=lewis
raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_AllUniquelyMapped.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m4_AllUniquelyMapped -w /home/erenada/BirdTree/Analyses/BranchLengths --asc-corr=lewis
raxmlHPC -f x -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_AllUniquelyMapped.phylip-relaxed -m GTRGAMMA -t /home/erenada/BirdTree/Analyses/JarvisConverted.nwk -n BR_Jarvis_pi_m5_AllUniquelyMapped -w /home/erenada/BirdTree/Analyses/BranchLengths --asc-corr=lewis
