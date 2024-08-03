#!/bin/bash

# ホストのGIDが存在しない場合のみグループを追加
if ! getent group ${HOST_GID}; then
  groupadd -g ${HOST_GID} hostgroup
fi

# ホストのUIDが存在しない場合のみユーザーを追加
if ! id -u ${HOST_UID} > /dev/null 2>&1; then
  useradd -u ${HOST_UID} -g ${HOST_GID} -m hostuser
fi

# 作業ディレクトリの所有権を変更
chown -R hostuser:hostgroup /work

# 指定されたユーザーでコマンドを実行
exec gosu hostuser "$@"
