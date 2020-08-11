mkdir -p /data/scripts /data/bin
chmod 755 /data/scripts /data/bin

rsync --inplace -a rsync://hgdownload.soe.ucsc.edu/genome/admin/exe/linux.x86_64/ /data/bin/
git archive --remote=git://genome-source.soe.ucsc.edu/kent.git \
    --prefix=kent/ HEAD src/hg/utils/automation \
    | tar vxf - -C /data/scripts --strip-components=5 \
        --exclude='kent/src/hg/utils/automation/incidentDb' \
        --exclude='kent/src/hg/utils/automation/configFiles' \
        --exclude='kent/src/hg/utils/automation/ensGene' \
        --exclude='kent/src/hg/utils/automation/genbank' \
        --exclude='kent/src/hg/utils/automation/lastz_D' \
        --exclude='kent/src/hg/utils/automation/openStack'
wget -O /data/bin/bedSingleCover.pl 'http://genome-source.soe.ucsc.edu/gitlist/kent.git/raw/master/src/utils/bedSingleCover.pl'
