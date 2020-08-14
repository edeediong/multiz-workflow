mkdir /data/genomes/dm6
cd /data/genomes/dm6
rsync -avzP \
    rsync://hgdownload.soe.ucsc.edu/goldenPath/dm6/bigZips/dm6.2bit .
rsync -avzP \
    rsync://hgdownload.soe.ucsc.edu/goldenPath/dm6/bigZips/dm6.chrom.sizes .
mkdir /data/genomes/dm6/trackData/GCF_000005575.2_AgamP3
cd /data/genomes/dm6/trackData/GCF_000005575.2_AgamP3
rsync -L -a -P rsync://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/575/GCF_000005575.2_AgamP3/GCF_000005575.2_AgamP3_genomic.fna.gz ./
rsync -L -a -P \
    rsync://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/575/GCF_000005575.2_AgamP3/GCF_000005575.2_AgamP3_assembly_report.txt ./
faToTwoBit GCF_000005575.2_AgamP3_genomic.fna.gz GCF_000005575.2_AgamP3.2bit
twoBitInfo GCF_000005575.2_AgamP3.2bit stdout | sort -k2,2nr > GCF_000005575.2_AgamP3.chrom.sizes