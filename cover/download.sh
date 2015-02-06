#CAGE
dcc=http://hgdownload.cse.ucsc.edu/goldenPath/hg19/encodeDCC
wget $dcc/wgEncodeRikenCage/wgEncodeRikenCageH1hescCellPapAlnRep1.bam
wget $dcc/wgEncodeRikenCage/wgEncodeRikenCageH1hescCellPapAlnRep2.bam
samtools index wgEncodeRikenCageH1hescCellPapAlnRep1.bam
samtools index wgEncodeRikenCageH1hescCellPapAlnRep2.bam

#RNA pol II ChIP-Seq
wget $dcc/wgEncodeHaibTfbs/wgEncodeHaibTfbsH1hescPol2V0416102PkRep1.broadPeak.gz
wget $dcc/wgEncodeHaibTfbs/wgEncodeHaibTfbsH1hescPol2V0416102RawRep1.bigWig
wget $dcc/wgEncodeHaibTfbs/wgEncodeHaibTfbsH1hescPol2V0416102PkRep2.broadPeak.gz
wget $dcc/wgEncodeHaibTfbs/wgEncodeHaibTfbsH1hescPol2V0416102RawRep2.bigWig

#DNase
wget $dcc/wgEncodeOpenChromDnase/wgEncodeOpenChromDnaseH1hescPk.narrowPeak.gz
wget $dcc/wgEncodeUwDnase/wgEncodeUwDnaseH1hescPkRep1.narrowPeak.gz

#conservation
wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/phyloP46way/vertebrate/chr22.phyloP46way.wigFix.gz
wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/phastCons46way/vertebrate/chr22.phastCons46way.wigFix.gz

mv chr22.phyloP46way.wigFix.gz chr22.phyloP46way.wig.gz
mv chr22.phastCons46way.wigFix.gz chr22.phastCons46way.wig.gz
