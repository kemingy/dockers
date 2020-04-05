FROM google/cloud-sdk:latest

RUN git clone --depth=1 https://github.com/kemingy/dotfile.git ~/.dotfile
RUN cd ~/.dotfile && sh bootstrap.sh

VOLUME ["/root/.config", "/root/.kube"]