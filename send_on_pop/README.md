# sendonpop
遷移先から戻る時に値を渡すサンプル

---
SnackBar 表示時に
```
Scaffold.of() called with a context that does not contain a Scaffold
```
が発生。

=> Scaffold 自身の context だとダメっぽい。子の context を作ってそれを渡す。

---

`..` でつなげる謎構文

カスケード記法というらしい。
同一レシーバを対象にメソッドを呼びたい時に使うみたい。
https://makicamel.hatenablog.com/entry/2019/03/27/184508

```dart
Scaffold.of(context).removeCurrentSnackBar();
Scaffold.of(context).showSnackBar(
  SnackBar(
    content: Text(result),
  ),
);
```
こうしなくていいってやつみたい。
