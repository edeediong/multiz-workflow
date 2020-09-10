FROM alpine:3.12

RUN apk add --no-cache rsync git curl

ENV PATH=$PATH:/data/bin

RUN mkdir -p /data/scripts /data/bin && \
    rsync --inplace -a rsync://hgdownload.soe.ucsc.edu/genome/admin/exe/linux.x86_64/ /data/bin/

RUN git clone --depth=1 git://genome-source.soe.ucsc.edu/kent.git && \
    cd kent && \
    git checkout d4266bc9322e38cdfb07859ab4db8e2671abb4e7 && \
    mv src/hg/utils/automation/* /data/scripts/ && \
    cd / && \
    curl -L http://genome-source.soe.ucsc.edu/gitlist/kent.git/raw/master/src/utils/bedSingleCover.pl -o /data/bin/bedSingleCover.pl && \
    rm -fr kent/

ENTRYPOINT ["doBlastzChainNet.pl"]
CMD ["--help"]
