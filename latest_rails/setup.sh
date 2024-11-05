#!/bin/sh

set -e

# フォルダの有無を調査
if [ -d "app" ]; then
  echo "フォルダが存在するので、Rails newコマンドをスキップ"
else
  echo "フォルダが存在しないので、Rails newコマンドを実行"
  rails new . --skip  --database=postgresql
fi

if rails db:version >/dev/null 2>&1; then
  echo "既にDBが存在しているので、「rails db:create」等の処理をスキップ"
  break
else
  echo "DBが存在しないので、DB初期化処理を実行"
  echo "コマンド「rails db:create」を実行して処理待ち"
  rails db:create
  echo "コマンド「rails db:migrate」を実行して処理待ち"
  rails db:migrate
  echo "コマンド「rails db:seed」を実行して処理待ち"
  rails db:seed

  while true; do
    if rails db:version >/dev/null 2>&1; then
      break
    else
      echo "DBの初期化待ち（15秒）"
      sleep 15
    fi
  done
fi

exec "$@"
