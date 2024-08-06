FROM ubuntu:22.04

# 必要なツールをインストール
RUN apt-get update && apt-get install -y \
    sudo \
    gosu \
    cmake \
    wget \
    lsb-release \
    software-properties-common \
    gnupg

RUN wget https://apt.llvm.org/llvm.sh

RUN chmod u+x llvm.sh

RUN sudo ./llvm.sh 18 && \
    apt-get install -y \
    clang-format-18

# バージョンの確認
RUN clang-18 --version

# シンボリックリンクの作成
RUN ln -s /usr/bin/clang-18 /usr/bin/clang
RUN ln -s /usr/bin/clang++-18 /usr/bin/clang++
RUN ln -s /usr/bin/clangd-18 /usr/bin/clangd
RUN ln -s /usr/bin/clang-format-18 /usr/bin/clang-format

# ホストのUIDとGIDを持つユーザーを作成するスクリプトを追加
COPY docker/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# エントリーポイントを設定
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["bash"]
