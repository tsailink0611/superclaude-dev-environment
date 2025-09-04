# 🎯 SuperClaude統合開発環境

**現代的な開発環境のテンプレート・設定一式**

## 📋 概要

このリポジトリは、効率的な開発を実現するSuperClaude統合開発環境の設定ファイル一式です。

- **Claude Code v1.0.102** + **SuperClaude Framework v4.0.8**
- **GitHub Actions** 対応
- **AWS Amplify / Vercel / Hostinger** 対応
- **Sentry / エラー監視** 対応
- **n8n ワークフロー** 対応

## 🚀 使い方

### 新規環境構築
```bash
# このリポジトリをクローン
git clone https://github.com/yourusername/superclaude-dev-environment.git
cd superclaude-dev-environment

# 環境構築スクリプト実行
./setup.sh

# SuperClaude フレームワーク適用
./install-superclaude.sh
```

### 開発開始
```bash
# Claude Code で以下を実行
claude code --think "このリポジトリを参照して、○○を開発してください"
```

## 📁 ファイル構成

```
superclaude-dev-environment/
├── 📄 開発環境セットアップ.md     ← メイン設定ファイル
├── 📄 よく使うコマンド.md          ← コピペ用コマンド集
├── 📄 認証情報テンプレート.txt      ← 認証情報テンプレート
├── 📄 setup.sh                   ← 環境構築自動化スクリプト
├── 📄 install-superclaude.sh     ← SuperClaude 自動インストール
├── 📁 templates/                 ← プロジェクトテンプレート
│   ├── vercel-template/
│   ├── amplify-template/
│   └── hostinger-template/
└── 📁 scripts/                   ← ユーティリティスクリプト
    ├── deploy-vercel.sh
    ├── deploy-amplify.sh
    └── setup-monitoring.sh
```

## 🎯 対応プラットフォーム

| プラットフォーム | 用途 | テンプレート |
|---|---|---|
| **AWS Amplify** | セキュア案件・企業向け | ✅ |
| **Vercel** | 一般案件・高速デプロイ | ✅ |
| **Hostinger** | n8nワークフロー・VPS | ✅ |

## 🤖 自動化機能

- **GitHub Actions**: 全プラットフォーム対応デプロイ
- **環境構築**: ワンコマンドで完了
- **エラー監視**: Sentry 自動設定
- **認証管理**: 安全な環境変数管理

## 📞 サポート

詳細は `開発環境セットアップ.md` を参照してください。

---

**💡 このリポジトリを使えば、どこでも同じ高品質な開発環境を5分で構築できます！**