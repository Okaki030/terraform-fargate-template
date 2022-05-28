# terraform-fargate-template

## ディレクトリ追加時に実施すること

```
$ ln -fs ../../provider.tf 
$ ln -fs ../../shared_locals.tf
$ terraform init
```

## Tips
### NATゲートウェイを複数を作成する
コスト削減のためNATゲートウェイの数を1つにしたい場合は、以下のコマンドでapplyする。

```
terraform-fargate-template/network/main $ terraform apply -var='single_nat_gateway=true'
```