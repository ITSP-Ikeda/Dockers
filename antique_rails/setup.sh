#!/bin/sh

set -e

# フォルダの有無を調査
if [ -d "app" ]; then
  echo "フォルダが存在するので、Rails newコマンドをスキップ"
else
  echo "フォルダが存在しないので、Rails newコマンドを実行"
  rails new . --skip
fi

if [ -f "db/development.sqlite3" ]; then
  echo "既にDBが存在しているので、「rails db:create」等の処理をスキップ"
  break
else
  echo "DBが存在しないので、DB初期化処理を実行"
  echo "コマンド「rake db:create」を実行して処理待ち"
  rake db:create
  echo "コマンド「rake db:migrate」を実行して処理待ち"
  rake db:migrate
  echo "コマンド「rake db:seed」を実行して処理待ち"
  rake db:seed
fi

exec "$@"
