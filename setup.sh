#!/bin/bash
# SuperClaude開発環境 自動セットアップスクリプト

echo "🚀 SuperClaude開発環境をセットアップ中..."

# 必要なディレクトリ作成
echo "📁 ディレクトリ構成を作成中..."
mkdir -p ~/Documents/00_プロジェクト管理
mkdir -p ~/.claude

# SuperClaude Framework ファイルをホームディレクトリにコピー
echo "🎛️ SuperClaude Framework を設定中..."
if [ ! -f ~/.claude/CLAUDE.md ]; then
    cat > ~/.claude/CLAUDE.md << 'EOF'
# SuperClaude Entry Point

This file serves as the entry point for the SuperClaude framework.
You can add your own custom instructions and configurations here.

The SuperClaude framework components will be automatically imported below.

# ═══════════════════════════════════════════════════
# SuperClaude Framework Components
# ═══════════════════════════════════════════════════

# Core Framework
@FLAGS.md
@PRINCIPLES.md
@RULES.md
EOF
    echo "✅ CLAUDE.md を作成しました"
fi

# Claude Code バージョン確認
echo "🔍 Claude Code バージョンを確認中..."
if command -v claude &> /dev/null; then
    claude --version
    echo "✅ Claude Code インストール済み"
else
    echo "❌ Claude Code がインストールされていません"
    echo "   https://claude.ai/code からインストールしてください"
fi

# Git 設定確認
echo "📝 Git 設定を確認中..."
if git config --global user.name &> /dev/null; then
    echo "✅ Git ユーザー名: $(git config --global user.name)"
else
    echo "❓ Git ユーザー名が未設定です"
    echo "   git config --global user.name 'Your Name' で設定してください"
fi

if git config --global user.email &> /dev/null; then
    echo "✅ Git メールアドレス: $(git config --global user.email)"
else
    echo "❓ Git メールアドレスが未設定です"
    echo "   git config --global user.email 'your@email.com' で設定してください"
fi

# Node.js バージョン確認
echo "🟢 Node.js バージョンを確認中..."
if command -v node &> /dev/null; then
    echo "✅ Node.js: $(node --version)"
else
    echo "❌ Node.js がインストールされていません"
    echo "   https://nodejs.org/ からインストールしてください"
fi

# npm バージョン確認
if command -v npm &> /dev/null; then
    echo "✅ npm: $(npm --version)"
else
    echo "❌ npm がインストールされていません"
fi

echo ""
echo "🎉 SuperClaude開発環境のセットアップが完了しました！"
echo ""
echo "📋 次のステップ:"
echo "1. 開発環境セットアップ.md を確認"
echo "2. 認証情報を設定"  
echo "3. Claude Code で開発開始"
echo ""
echo "💡 使い方:"
echo "   claude code --think '開発環境セットアップ.mdを参照して、○○を作ってください'"
echo ""