# terraform-fargate-template

![ecs](https://user-images.githubusercontent.com/36916494/170874309-649d2534-fa5f-41eb-96db-c40babfd9e77.png)

## 使い方

整備中

## コンポーネント

整備中

## Tips
## コンポーネント追加時に実施すること

```
$ ln -fs ../../provider.tf 
$ ln -fs ../../shared_locals.tf
$ terraform init
```

### NATゲートウェイとEIPを複数作成する
デフォルトではコスト削減のためNATゲートウェイとEIPの数を1つに制限している。
各アベイラビリティゾーンごとに作成したい場合は、以下のコマンドを入力する。

```
terraform-fargate-template/network/main $ terraform apply -var='single_nat_gateway=false'
```
