FROM llvm:18

RUN apt-get update && apt-get install -y \
    sudo \
    gosu \
    cmake

# ホストのUIDとGIDを持つユーザーを作成するスクリプトを追加
COPY docker/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# エントリーポイントを設定
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["bash"]
