# 概要
ローカル環境を汚さないように、`Docker` 及び `Docker-compose` でGoプロジェクトを開始するためのテンプレートです。

`VsCode` の `devcontainer` を利用して、自動フォーマットやデバックのメリットを受けることができます

- 保存時自動フォーマット
- 自動補完
- インテリセンス（メソッドやstructの内容をマウスオーバーで見えたり）
- 簡単にデバック環境が作れる

## 使用方法

- まず本プロジェクトを `git clone` 
- VsCodeで `Remote Container` の拡張をインストールしておく
  - [リンク](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
  - ↑は `Remote ssh` 等の拡張も一緒にインストールできて便利です
- VSCodeでcloneしてきたフォルダを開く
- VSCodeの以下緑になってい箇所をクリック
<img width="651" alt="スクリーンショット 2021-01-02 15 11 38" src="https://user-images.githubusercontent.com/73948280/103451929-5cb1c580-4d0d-11eb-8b6c-5c1d4eebfbf7.png">

- `Remote Containers: Reopen in Container` をクリックする

![image](https://user-images.githubusercontent.com/73948280/103451980-f0839180-4d0d-11eb-86d1-5a339d337647.png)

- クリックすると イメージのビルド及びコンテナの作成が始まります

<img width="1517" alt="スクリーンショット 2021-01-02 15 24 35" src="https://user-images.githubusercontent.com/73948280/103452059-cda5ad00-4d0e-11eb-804a-de5ea937133f.png">

- コンテナ作成に成功すると以下のようにコンテナにアタッチされます（ローカルで開いているようになります）

![image](https://user-images.githubusercontent.com/73948280/103452136-705e2b80-4d0f-11eb-9054-1b31f7e71538.png)

- インテリセンスや自動補完等が効くようになります（）

![画面収録 2021-01-02 15 38 38](https://user-images.githubusercontent.com/73948280/103452332-a2708d00-4d11-11eb-8eeb-5f2183876e3f.gif)

## 補足

モジュール管理を行う場合は、 `go mod init` を実行してください。
go run で実行する際に自動で `go get` してくれるようになります。
