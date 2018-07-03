FROM sharelatex/sharelatex

RUN cd /usr/local/texlive/2017/
RUN wget http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh
RUN chmod +x ./update-tlmgr-latest.sh
RUN sh update-tlmgr-latest.sh -- --upgrade
RUN tlmgr update --self --all
RUN tlmgr update --self
RUN tlmgr install scheme-full

