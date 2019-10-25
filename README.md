---
title: "README"
author: "Ehsan Ullah"
date: "October 23, 2019"
output: html_document
---


Crx_goodpeaks_mm9.narrowPeak_liftover_human_grch37.bed
was intersected to gnomad/release-2.1/vcf/genomes/gnomad.genomes.r2.1.sites.vcf.bgz.

The resultant vcf file was annotated with gnomAD allele frequency and allele counts as well as phyloP_100way and cadd_phred scores for conservation. 

The vcf file was converted to .tsv file and further wrangling was done in Rstudio. 

We calculated, following for each region.

1.	sigmaAF: Sigma allele frequency.
2.	meanAF: Mean allele frequency.
3.	medianAF: Median allele frequency.
4.	maxAF : Maximum allele frequency.

Then we adjusted and scaled (1-4) by simply dividing each variable by the "region size" and multiplying each by an arbitrary number i.e. 1000 and called them adj_sigmaAF, adj_meanAF, adj_medianAF and adj_maxAF.

5.	sigmaAF_popmax: sigma allele frequency, population maximum.
6.	meanAF_popmax: mean allele frequency, population maximum.
7.	medianAF_popmax: median allele frequency, population maximum.
8.	maxAF_popmax: max allele frequency, population maximum.

Then we adjusted and scaled (5-8) by simply dividing each variable by the "region size" and multiplying each by an arbitrary number i.e. 1000 and called them adj_sigmaAF_popmax, adj_meanAF_popmax, adj_medianAF_popmax and adj_maxAF_popmax.

We calculated same summary stats for AC (allele count) and cadd_phred scores. But adjusted values were calculated only by dividing the variable by the region size, we didn't multiply them with any arbitrary number.

We also calculated summary stats for phyloP-100way in similar manner. The values were adjusted by dividing them by the corresponding "region size" and were scaled by multiplying them by an arbitrary number 10. 

 