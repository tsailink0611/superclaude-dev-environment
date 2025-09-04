# 🚀 SuperClaude統合環境 クイックスタートガイド

**目的**: 5分でSuperClaude環境を使いこなす  
**対象**: 新規プロジェクト開始・環境確認時  
**更新日**: 2025年9月3日  

---

## ⚡ **1分でできる環境確認**

### **基本動作確認**
```bash
# Claude Code バージョン確認
claude --version
# 期待値: 1.0.102 (Claude Code)

# SuperClaude フレームワーク確認  
ls C:\Users\tsail\.claude\
# 期待値: CLAUDE.md FLAGS.md PRINCIPLES.md RULES.md
```

### **MCPサーバー確認**
```bash
# 利用可能なMCPサーバー確認
claude config list | grep mcp
# 期待値: 5つのMCPサーバー表示
```

---

## 🎯 **新プロジェクト開始 (3分)**

### **Step 1: プロジェクトフォルダ作成**
```bash
# プロジェクト管理フォルダに移動
cd "C:\Users\tsail\Documents\00_プロジェクト管理"

# 新プロジェクトフォルダ作成 (番号は既存+1)
mkdir "03_新プロジェクト名"
cd "03_新プロジェクト名"

# 標準フォルダ構成作成
mkdir "認証情報" "マニュアル" "開発環境" "プロジェクト固有設定"
```

### **Step 2: 基本設定ファイル作成**
```bash
# 基本認証情報ファイル
touch "認証情報/すべての認証情報.txt"

# プロジェクト固有設定
touch "プロジェクト固有設定/sentry-config.md"
touch "プロジェクト固有設定/github-actions-config.md"  
touch "プロジェクト固有設定/deployment-settings.md"
```

### **Step 3: 開発コード場所準備**
```bash
# デスクトップに実開発フォルダ作成
cd "C:\Users\tsail\Desktop"
mkdir "新プロジェクト名"
cd "新プロジェクト名"

# Git初期化
git init
git branch -M main
```

---

## 🚩 **SuperClaudeフラグ活用 (1分)**

### **よく使うフラグ組み合わせ**

#### **新機能開発時**
```
claude code --think --task-manage --seq
```
- `--think`: 構造化分析実行
- `--task-manage`: 多段階タスク管理  
- `--seq`: Sequential思考サーバー活用

#### **コード分析・リファクタリング時**
```
claude code --think-hard --morph --validate
```
- `--think-hard`: 深度分析実行
- `--morph`: バルクコード変換
- `--validate`: 品質ゲート有効化

#### **UI作成時**
```  
claude code --magic --browser --loop
```
- `--magic`: 21st.dev UIパターン活用
- `--browser`: ブラウザテスト自動化
- `--loop`: 反復改善サイクル

#### **緊急対応・効率重視時**
```
claude code --uc --orchestrate --safe-mode  
```
- `--uc`: 超圧縮通信モード
- `--orchestrate`: 並列処理最適化
- `--safe-mode`: 安全優先実行

---

## 📋 **日常開発パターン**

### **朝一の開発環境確認**
```bash
# 1. プロジェクト状況確認
cd "プロジェクト開発フォルダ"
git status
git branch

# 2. SuperClaude環境確認  
claude code --introspect
# → 環境状況の透明な表示

# 3. 今日のタスク整理
claude code --task-manage
# → TodoWrite でタスク管理開始
```

### **新機能実装フロー**
```bash
# 1. 要件分析
claude code --brainstorm --think

# 2. 設計・実装
claude code --task-manage --seq --validate  

# 3. テスト・改善
claude code --browser --loop --iterations 3
```

### **コードレビュー・品質向上**
```bash
# 1. 深度分析
claude code --think-hard --morph

# 2. セキュリティ・品質チェック
claude code --validate --safe-mode

# 3. 最終品質確認
claude code --ultrathink --all-mcp
```

---

## 🔍 **情報参照のクイックアクセス**

### **プロジェクト情報確認**
```bash
# SuperClaude統合状況
open "C:\Users\tsail\Documents\00_プロジェクト管理\00_SuperClaude統合プロジェクト\SuperClaude開発環境一覧.md"

# MCP設定確認
open "C:\Users\tsail\Documents\00_プロジェクト管理\99_共通設定情報\グローバルツール設定\MCP-サーバー共通設定.md"

# CDKデプロイ手順
open "C:\Users\tsail\Documents\00_プロジェクト管理\99_共通設定情報\共通マニュアル\CDK_DEPLOYMENT_MANUAL.md"
```

### **認証情報参照**
```bash  
# 現在プロジェクトの認証情報
open "認証情報/すべての認証情報.txt"

# 共通認証情報
open "C:\Users\tsail\Documents\00_プロジェクト管理\99_共通設定情報\共通認証情報\"
```

---

## ⚠️ **よくある落とし穴と回避法**

### **❌ やってはいけないこと**
```bash
# 1. メインブランチで直接作業
git checkout main  # ← これをやらない

# 2. フラグなしの複雑タスク  
claude code "複雑な機能を作って"  # ← --thinkフラグを使う

# 3. 認証情報をコードに含める
const apiKey = "sk-xxx..."  # ← 環境変数を使う
```

### **✅ 推奨パターン**
```bash
# 1. 必ずfeatureブランチを作成
git checkout -b feature/新機能名

# 2. 適切なフラグで開始
claude code --think --task-manage "新機能を実装して"

# 3. 認証情報は環境変数
const apiKey = process.env.API_KEY
```

---

## 🆘 **トラブル時の3ステップ対処法**

### **Step 1: 基本確認 (30秒)**
```bash
# Claude Code動作確認
claude --version

# MCPサーバー接続確認  
claude config list
```

### **Step 2: SuperClaude再初期化 (1分)**
```bash
# フレームワーク再読み込み
cd C:\Users\tsail\.claude\
claude code --introspect

# 設定リロード
claude config reload
```

### **Step 3: 詳細診断 (2分)**
```bash
# 詳細デバッグモード
export SUPERCLAUDE_DEBUG=true
claude code --verbose

# トラブルシューティングガイド参照
open "C:\Users\tsail\Documents\00_プロジェクト管理\00_SuperClaude統合プロジェクト\リファレンス\troubleshooting.md"
```

---

## 🎯 **まとめ: 5分でマスターするポイント**

### **✅ 覚えるべき3つのコマンド**
```bash
1. claude code --think --task-manage    # 標準開発開始
2. claude code --introspect            # 環境状況確認  
3. claude config list                  # 設定状況確認
```

### **✅ 知っておくべき3つの場所**
```
1. C:\Users\tsail\.claude\                    # フレームワーク本体
2. 00_プロジェクト管理\00_SuperClaude統合プロジェクト\  # 統合情報
3. 99_共通設定情報\                           # 共通設定・マニュアル
```

### **✅ 意識すべき3つの習慣**
```
1. 適切なフラグで効率化
2. TodoWrite でタスク管理  
3. 品質ゲートで安全確保
```

---

**💡 このガイドをブックマークして、SuperClaude環境を最大限活用してください！**