#!/bin/bash

cd "$(dirname "$0")"  # スクリプトの場所＝リポジトリ直下に自動で移動

DATE=$(date +%Y-%m-%d)
FILENAME="docs/$DATE.md"

if [ -f "$FILENAME" ]; then
  echo "⚠️  $FILENAME はすでに存在しています。"
else
  cat <<EOF > "$FILENAME"
# $DATE 学習ログ

## 今日やったこと
- 
- 
- 

## 気づき・学び
- 
- 
- 

## 明日のTODO
- 
- 
- 

## 一言メモ
- 
EOF
  echo "✅ $FILENAME を作成しました！"
fi

code -w "$FILENAME"

git add "$FILENAME"
git commit -m "Add $DATE log"
git push origin main

echo "🚀 push完了！草が生えた！🌱"