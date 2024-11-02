#!/bin/sh

set -e

# プロジェクトのセットアップを実行
./setup.sh

echo "Current working directory: $(pwd)"
# サーバーの起動準備
rm -f tmp/pids/server.pid
rails s -p 3000 -b '0.0.0.0'

exec "$@"