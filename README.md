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

### MOB(name, grade, school, `icon list,...', cluster)

* name キャラクター名
* grade 学年
* school 出身校 (青:青藍高校; 東:東雲学院; 千:千歳橋高校; 藤:藤黄学園; 紫:紫苑女学院; YG:Y.G. 国際学園)
* `icon list,...' アイコン番号 (カンマ区切り)
* cluster 所属 (optional. 掛け持ち部や委員会など)

キャラクタを定義します。
所属を入力することで各キャラを所属クラスタ(後述)に登録できます。


### OUTPUT_CLUSTERS

MOB()で登録された所属クラスタを出力します。
OUTPUT_SCOOLSとは同時に使用できません。


### OUTPUT_SCHOOLS

出身校毎にクラスタリングします。
OUTPUT_CLUSTERSとは同時に使用できません。


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
