FROM tatooi/local-ubuntu:noble
ADD ./Miniconda3-latest-Linux-x86_64.sh /install-miniconda3.sh
#
# RUN apt-get update && apt-get install -y curl gpg
# # Install our public GPG key to trusted store
# RUN curl https://repo.anaconda.com/pkgs/misc/gpgkeys/anaconda.asc | gpg --dearmor > conda.gpg
# RUN install -o root -g root -m 644 conda.gpg /usr/share/keyrings/conda-archive-keyring.gpg
#
# # Check whether fingerprint is correct (will output an error message otherwise)
# RUN gpg --keyring /usr/share/keyrings/conda-archive-keyring.gpg --no-default-keyring --fingerprint 34161F5BF5EB1D4BFBBB8F0A8AEB4F8B29D82806
#
# # Add our Debian repo
# RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/conda-archive-keyring.gpg] https://repo.anaconda.com/pkgs/misc/debrepo/conda stable main" > /etc/apt/sources.list.d/conda.list
# # Install conda
# RUN apt-get update && apt install -y conda
RUN bash /install-miniconda3.sh -b
RUN bash -c "source ~/miniconda3/bin/activate && conda init --all" 
