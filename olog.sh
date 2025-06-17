#!/bin/bash

cd "$(dirname "$0")"

DATE=$(date +%Y-%m-%d)
FILENAME="docs/$DATE.md"

if [ -f "$FILENAME" ]; then
  echo "⚠️  $FILENAME はすでに存在しています。"
else
  cat <<EOF > "$FILENAME"
# $DATE 休日ログ

## 🎯 目的
翌日の集中に繋がるような“意図ある休息”を主導権を持って実現すること

## 午前の行動
- ジムへ行く
- 昼食まで軽く作業をする

## 午後の行動
- 自由

## 禁止事項
- 24時以降の活動
- SNS,ゲーム,Youtube,漫画,目的の無い動画視聴

## 🗓 明日のTODO
- 
- 

## 💬 一言メモ（気分や内省）
- 
EOF

  echo "✅ $FILENAME を作成しました！"
fi

code -w "$FILENAME"

git add "$FILENAME"
git commit -m "Add offday log for $DATE"
git push origin main

echo "🚀 push完了！草が生えた！🌱"