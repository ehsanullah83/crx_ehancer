#!/bin/bash
#SBATCH --mail-type=BEGIN,END,FAIL
module load gemini
sed 's/^chr//' /data/OGVFB/crx_enhancer/ChenHufnagelCollab_CRXsites/mm9_bedfiles/Crx_goodpeaks_mm9.narrowPeak_liftover_human_grch37.bed | parallel --colsep "\t" 'gemini query --header --show-samples --format sampledetail --region {1}:{2}-{3} -q "select * from variants" /data/OGVFB/UK10K/EGAD00001002656_2019.GATK.PED_EGAD00001002656_GATK.gemini.db' >> /data/OGVFB/crx_enhancer/ChenHufnagelCollab_CRXsites/UK10K_variants/Crx_goodpeaks_mm9.narrowPeak_liftover_human_grch37.tsv
