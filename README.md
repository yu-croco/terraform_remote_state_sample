# Terraform terraform_remote_stateについて軽く触るやつ
## コレは何？
- `terraform_remote_state` を使ったので備忘録を兼ねた簡単なサンプルを作成しました(providerはAWS)。
- 独立して実行管理されているIAM Roleを管理するディレクトリ（`iam` と `iam2`があり、 `iam` 実行後に `iam2` が実行される）があり、 `iam2` 側で `iam` の実行結果に依存する情報を使用したいケースを想定しています。

## 構成

```
.
├── Makefile
├── README.md
├── main // tfファイルを扱うエントリポイント
│   ├── iam
│   └── iam2
└── resource // mainが参照するリソース置き場
    ├── iam
    └── iam2
```

## セットアップ
```
# tfenvをインストールしていない場合に実行
$ brew install tfenv

# `tfenv install min-require` と `terraform init` が実行される
$ make init
```

## 動作確認
```
# iamのリソースが追加される
$ make iam/apply

# 上記で作成したiamのnameを利用してiam2が作成される
$ make iam2/apply
```

## 後片付け

```
$ make iam2/destroy
$ make iam/destroy
# S3のファイルをすべて削除した上で以下を実行する
$ s3/destroy
```
