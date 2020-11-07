# 概要
ローカル環境を汚さないように、`Docker` 及び `Docker-compose` でGoプロジェクトを開始するためのテンプレートです。

`VsCode` の `devcontainer` を利用して、エディターの保存時フォーマットの恩恵を受けながら、コンテナ内で開発を進めます。

## 基本的な使用方法

- まず本プロジェクトを `git clone` 
- ダウンロードしたフォルダに移動し、 `docker-compose up -d` 
- VsCodeで `Remote Container` の拡張をインストールしておく
  - [リンク](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
  - ↑は よく利用する `Remote ssh` 等の拡張も一緒にインストールできます
- Macの場合VScode上で `cmd + shift + P` を入力
  - `Remote-Containers: Attach to Running Container...` を選択
  - 稼働中のコンテナを選択
- VsCodeの新しいWindowが開いて、起動中のコンテナに接続できたら成功
  - `main.go` を適当に修正してください。
  - ファイルの保存時に自動でフォーマッターが整形してくれていれば、コンテナ内でのVscodeの設定もできています
