FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        dnsutils \
        git \
        htop \
        iproute2 \
        iputils-ping \
        lsof \
        ncdu \
        net-tools \
        nmap \
        psmisc \
        sudo \
        tar \
        tcpdump \
        tmux \
        traceroute \
        unzip \
        vim \
        wget \
        zip \
    && rm -rf /var/lib/apt/lists/*
RUN wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.2.0/zsh-in-docker.sh | sh -s -- \
        -t https://github.com/denysdovhan/spaceship-prompt \
        -a 'SPACESHIP_PROMPT_ADD_NEWLINE="false"' \
        -a 'SPACESHIP_PROMPT_SEPARATE_LINE="false"' \
        -p git \
        -p https://github.com/zsh-users/zsh-autosuggestions \
        -p https://github.com/zsh-users/zsh-completions \
        -p https://github.com/zsh-users/zsh-syntax-highlighting \
    && rm -rf /var/lib/apt/lists/*
RUN git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime \
    && sh ~/.vim_runtime/install_awesome_vimrc.sh \
    && rm -rf ~/.vim_runtime/.git
CMD ["zsh"]
