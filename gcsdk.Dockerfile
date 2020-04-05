FROM google/cloud-sdk:latest

RUN git clone --depth=1 https://github.com/kemingy/dotfile.git ~/.dotfile
RUN cd ~/.dotfile && sh bootstrap.sh
RUN echo 'mkdir -p $HOME/.config/fish; cp $HOME/.dotfile/config.fish $HOME/.config/fish/config.fish' >> $HOME/.bashrc
RUN rm ~/Downloads/*
