
■概要

マスターとなるリポジトリのテンプレートを
他のすべてのリポジトリのテンプレートに反映するバッチ。

GitLabでは、テンプレートファイルを用意することで、
issueやMergeRequestの内容をテンプレート化することができる。
しかし、プロジェクト単位でテンプレートファイルを用意する必要があり、
全プロジェクトで共通のテンプレートを利用する機能がない。
テンプレートファイルを修正した際、他のすべてのプロジェクトのテンプレートを
手作業で修正する必要がある。この手作業を排除する。


■前提条件

Git本体をインストールしていること。
https://git-scm.com/

ローカルPCの任意のルートフォルダを決め、
ルートフォルダ直下に各プロジェクトのリポジトリをcloneする。
ブランチはmasterとする。
本スクリプトも同フォルダに配置する。

root/
　├ product-develop/                   ★このリポジトリをマスターとする
　│　└ .gitlab/
　│　　　├ issue_templates/           ★issueテンプレート
　│　　　│├ Development.md
　│　　　│├ Release.md
　│　　　│└ XXXXX.md
　│　　　└ merge_request_templates/   ★MergeRequestテンプレート
　│　　　　├ Merge.md
　│　　　　└ XXXXX.md
　├ tohoku-epco/
　├ mv-tohoku/
　├ jrefsdl/
　├ loccitane/
　├ XXXXX/                             ★プロジェクト数分cloneしたもの
　├ YYYYY/
　├ ZZZZZ/
　└ UpdateGitIssueTemplate.sh          ★スクリプト

マスターとなるリポジトリを決め、
スクリプト内のマスターリポジトリ名(master_repo_name)に
「product-develop」を設定する。

■スクリプト実行手順

1. マスターとなるリポジトリにテンプレートを追加・修正する。

2. スクリプトをダブルクリックして実行する

■備考

・日本語文字は文字化けする


