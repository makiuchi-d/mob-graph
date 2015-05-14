スクフェス モブキャラ 相関図
============================

## 相関図の生成

### アイコン画像の準備

1. アルバム画面のスクリーンショットをページ送りしながらひたすら集める
2. アルバム画像を連番png画像として album ディレクトリに投げ込む
3. go run albumslice.go
4. iconsディレクトリにバラされたアイコンが生成されていれば成功！


### 画像生成

```BASH
$ m4 graph.m4 | fdp -Tpng -o mobgraph.png
```

## graph.m4 の書き方 (mob.m4 マクロリファレンス)

### MOB(name, grade, `icon list,...', cluster)

* name キャラクター名
* grade 学年
* `icon list,...' アイコン番号 (カンマ区切り)
* cluster 所属 (optional)

キャラクタを定義します。
所属を入力することで各キャラを所属クラスタ(後述)に登録できます。


### OUTPUT_CLUSTERS

MOB()で登録された所属クラスタを出力します。


### SS(from, to, text, [options...])

* from キャラ名
* to   キャラ名
* text 表示テキスト
* options edgeのオプション(dir=both で双方向矢印など) (optional)

サイドストーリーで明かされた二者の関係を記述します。
赤矢印で表示されます。

### HOME(from, to, text, [options...])

ホーム画面のセリフで明かされる二者の関係を記述します。
青矢印で表示される他はSS()と同じです。
