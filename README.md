# README
## 設計

controllers
リクエストを受け取る、レスポンスを返すが役割。何をしているかは知らない。
forms
受け取ったリクエストパラメーターの精査・構築が役割。DBレイヤーに関連しないバリデーションもここで行う。
handlers
一つもしくは複数のservicesを呼びcontrollers特有のロジックを組み立てる。
services
ビジネスロジックの役割。Usecaseの立ち位置。
models
scopeやenum, バリデーションなどが役割。
validators
カスタムバリデーションを行う役割。
responses
レスポンス整形の役割。
