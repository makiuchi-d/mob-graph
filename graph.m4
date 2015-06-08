include(`mob.m4')dnl
digraph mob {
	node [ shape=box, style=rounded ]
	edge [ len=3.5 ]

MOB(桜坂しずく, 1, 青, `0001,0188', 演劇部)
MOB(宮下ココ,   1, 東, `0002,0260', ) // ボランティア？
MOB(逢沢遊宇,   1, 千, `0003,0368', ) // 天文部？
MOB(一之瀬マリカ, 2, 青, `0004,0420,0601', )
MOB(結城紗菜,   2, 東, `0005,0429', テニス部)
MOB(西村文絵,   2, 千, `0006,0373,0585', ) // 漫研？
MOB(永山みなみ, 3, 青, `0007,0183,0508', ) // 保育所の手伝い？ボランティア？
MOB(クリスティーナ, 3, 東, `0008,0333', 留学生)
MOB(菊池朱美,   3, 千, `0009,0411', 写真部)
MOB(須田いるか, 1, 千, `0010,0353', 水泳部)
MOB(杉崎亜矢,   1, 青, `0011,0209,0560', 書道部)
MOB(御堂優理,   1, 東, `0012,0268', )
MOB(佐伯麗音,   2, 千, `0013,0244,0596', ) // ダンス？
MOB(鳥居歩美,   2, 青, `0014,0466', ) // お菓子づくり？
MOB(神谷理華,   2, 東, `0015,0391', ) // 科学部？
MOB(森嶋ななか, 3, 千, `0016,0403', 校内新聞)
MOB(九条聖来,   3, 青, `0017,0283', 管弦楽)
MOB(近江彼方,   3, 東, `0018,0181,0534', 保健委員)
MOB(近江遥,     1, 東, `0019,0457,0526', 学級委員)
MOB(下園咲,     1, 千, `0020,0393', チアリーディング)
MOB(田中さち子, 1, 青, `0021,0398,0568', )
MOB(支倉かさね, 2, 東, `0022,0191', コスプレ)
MOB(多々良るう, 2, 千, `0023,0266', )
MOB(篠宮あきる, 2, 青, `0024,0197', フィギュアスケート)
MOB(吉川瑞希,   3, 東, `0025,0471', バスケ部)
MOB(白木凪,     3, 千, `0026,0251,0550', ) // 美術部？
MOB(藤城悠弓,   3, 青, `0027,0275', 管弦楽)
MOB(黒崎隼,     2, 藤, `0069,0215', 乗馬クラブ)
MOB(門田剣,     3, 藤, `0070,0223', ) //剣道部？
MOB(設楽ふみ,   1, 藤, `0074,0273', )
MOB(桐原優香,   2, 藤, `0076,0427,0485', 放送部)
MOB(斉木風,     1, 藤, `0080,0409', ) // 陸上部？
MOB(坂巻千鶴子, 3, 紫, `0084,0199,0532', 風紀委員)
MOB(志賀仁美,   3, 紫, `0085,0258,0544', 風紀委員)
MOB(福原命,     1, 紫, `0089,0281', 風紀委員)
MOB(鬼崎アキラ, 2, 紫, `0091,0323,0603', ) // 自転車屋
MOB(月島結架,   2, 紫, `0097,0443', ) // ダンス？
MOB(兵藤さゆり, 3, 紫, `0098,0451,0591', 高天原研究所)
MOB(蘭花,       1, YG, `0102,0205', 留学生)
MOB(紫藤美咲,   3, 藤, `0106,0359,0582', ) // ビリヤード？
MOB(ラクシャータ, 2, YG, `0120,0325,0566', 留学生)
MOB(レベッカ,   2, YG, `0121,0316,0493', 留学生)
MOB(綾小路姫乃, 2, 藤,   `0128,0218,0539', 華道部)
MOB(黒羽咲良,   1, 紫, `0130,0331,0510', )
MOB(黒羽咲夜,   3, 紫, `0135,0348', )
MOB(白瀬小雪,   1, 藤, `0140,0310', ) // バレエ？
MOB(相川涼,     3, 藤, `0149,0318,0552', 演劇部)
MOB(イザベラ,   3, YG, `0151,0416', 留学生)
MOB(エマ,       3, YG, `0156,0459', 留学生)
MOB(高天原睦月, 1, 紫, `0160,0477', 高天原研究所)
MOB(ジェニファー, 2, YG, `0166,0253,0557', 留学生)
MOB(マリア,     1, YG, `0168,0363', 留学生)
MOB(レオ,       2, YG, `0173,0297,0515', 留学生)
MOB(早乙女紫,   1, YG, `0175,0479', )

//# OUTPUT_CLUSTERS
OUTPUT_SCHOOLS


SS(御堂優理, 宮下ココ, また変なことに首を突っ込むから……)
SS(九条聖来, 藤城悠弓, お友達)
SS(近江彼方, 近江遥, 妹)
SS(藤城悠弓, 九条聖来, 付き合いで参加)
SS(福原命, 坂巻千鶴子, 風紀委員の問題児)
SS(福原命, 志賀仁美, 風紀委員の問題児)
SS(綾小路姫乃, 門田剣, 写真は苦手だから……)
SS(綾小路姫乃, 門田剣, おうちに遊びに行く)
SS(黒羽咲良, 黒羽咲夜, 姉さん)
SS(白瀬小雪, 相川涼, 涼ちゃん)
SS(白瀬小雪, 相川涼, 一緒にスクールアイドルはじめた)
SS(レベッカ, イザベラ, スクールアイドルらしい物言いを)
SS(マリア, ジェニファー, 捕まってしまってスクールアイドルをしている)
SS(早乙女紫, レオ, また脱走してしまったですか！？)
SS(近江彼方, 近江遥, もっと優しくしてほしい)
SS(支倉かさね, 吉川瑞希, サンタコスをお願いする)
SS(坂巻千鶴子, 福原命, もっと理解していただかなくては)
SS(ジェニファー, ラクシャータ, 甘口カレーにチョコを入れるのは甘すぎる)
SS(宮下ココ, 御堂優理, 今回の衣装は似合うから)
SS(御堂優理, 宮下ココ, 次はもうちょっと落ち着いた衣装にしてくれ)
SS(藤城悠弓, 九条聖来, ちょっと間が抜けている)
SS(九条聖来, 藤城悠弓, 何でもできる)
SS(レオ, 早乙女紫, 一緒に海)
SS(白瀬小雪, 相川涼, 舞台に出させてもらった)
SS(相川涼, 白瀬小雪, 雪ちゃん)
SS(黒羽咲良, 黒羽咲夜, 傘持っていったかな)
SS(黒羽咲夜, 黒羽咲良, 勝手に服を借りる)
SS(黒羽咲夜, 黒羽咲良, 傘を借りる)
SS(森嶋ななか, 須田いるか, 目指せ隙間産業！)
SS(下園咲, 西村文絵, 一緒にチャイナ着て中華料理)
SS(森嶋ななか, 菊池朱美, 新しいスクールアイドルの情報)
SS(菊池朱美, 森嶋ななか, 写真を提供)
SS(早乙女紫, イザベラ, 衣装を用意)
SS(近江遥, 近江彼方, 女子力低すぎ！)
SS(近江彼方, 近江遥, 色違いの衣装を用意)
SS(早乙女紫, ラクシャータ, 寒い冬を越せるのかな〜)
SS(早乙女紫, レオ, 寒い冬を越せるのかな〜)
SS(永山みなみ, 田中さち子, さっちゃん) //?
SS(黒羽咲良, 黒羽咲夜, 寝正月は天罰)
SS(レオ, 早乙女紫, 家でもち食べる)
SS(近江遥, 近江彼方, チョコ, dir=both)
SS(近江遥, 宮下ココ, チョコ作り手伝ってもらう)
SS(坂巻千鶴子, 志賀仁美, もっと愛を知っていただかなくては)
SS(田中さち子, 杉崎亜矢, 頼まれてメイド喫茶の手伝い)
SS(西村文絵, 佐伯麗音, これからはでんのうくうかんの時代です！！)

HOME(レベッカ, ラクシャータ, インドの寺院について聞きたい)
HOME(黒羽咲良, 黒羽咲夜, 笑うと怖い)
HOME(白瀬小雪, 相川涼, バレエも見に来てくれるかな)
HOME(相川涼, 白瀬小雪, 練習よく頑張ったね)
HOME(エマ, ラクシャータ, 裸足組)
HOME(高天原睦月, 兵藤さゆり, 軍曹)
HOME(ジェニファー, 蘭花, チケットを渡される)
HOME(杉崎亜矢, 田中さち子, すごくいい子)
HOME(黒崎隼, 門田剣, 太郎のバッグを作ってもらった)
HOME(綾小路姫乃, 相川涼, みんなで涼ちゃんの舞台を見に行く)
HOME(綾小路姫乃, 白瀬小雪, 白雪ちゃんがとーっても張り切っちゃって可愛い)
HOME(門田剣, 設楽ふみ, ギョロちゃん触れない)
HOME(門田剣, 紫藤美咲, 手品も上手い)
HOME(佐伯麗音, 西村文絵, ふーみん)
HOME(佐伯麗音, 多々良るう, かわいいしもっと自信もったらいい)
HOME(ジェニファー, エマ, もっと外に連れて行ってあげたい)
HOME(ジェニファー, レオ, もっと外に連れて行ってあげたい)
HOME(志賀仁美, 福原命, ちっっこいの)
HOME(宮下ココ, 御堂優理, 優理ちゃん)
HOME(多々良るう, 佐伯麗音, 可愛い仕草ができるようになりたい)
HOME(多々良るう, 菊池朱美, 顔が赤くなっちゃうのを相談しようかな)
HOME(設楽ふみ, 白瀬小雪, 最近舞台のお稽古をしてるみたい)
HOME(設楽ふみ, 相川涼, 最近舞台のお稽古をしてるみたい)
HOME(藤城悠弓, 田中さち子, そこら中に妙な図形を書くのよ……)
HOME(九条聖来, 桜坂しずく, しずくちゃんの舞台)
HOME(九条聖来, 杉崎亜矢, 杉崎ちゃんの書道展)
HOME(九条聖来, 藤城悠弓, 私には厳しい)
HOME(レオ, エマ, 山に行く)
HOME(レオ, 早乙女紫, 何でも知ってる)
HOME(白瀬小雪, 綾小路姫乃, 姫乃ちゃんたちと隠れんぼ)
HOME(白瀬小雪, 門田剣, 鬼は剣ちゃん)
HOME(相川涼, 桐原優香, 演劇のナレーションをやってもらってる)
HOME(鬼崎アキラ, 月島結架, 一緒に練習すると生傷が絶えない)
HOME(鬼崎アキラ, 兵藤さゆり, 一緒に練習すると生傷が絶えない)
HOME(黒羽咲良, 高天原睦月, ドール見に行ったらロボットだった)
HOME(クリスティーナ, 近江遥, あやとりを教えていただきました)
HOME(クリスティーナ, 近江彼方, あやとりを教えていただきました)
HOME(黒羽咲夜, 黒羽咲良, めんどくさいけど本当はいい子)
HOME(マリア, 早乙女紫, 一緒にカラオケ行っちゃおうかしら)
HOME(森嶋ななか, 菊池朱美, 校内新聞の写真を撮ってもらう)
HOME(菊池朱美, 森嶋ななか, 写真提供)
HOME(桐原優香, 設楽ふみ, 動物園の爬虫類館に行ったんです)
HOME(結城紗菜, 支倉かさね, 一緒に衣装合わせするって約束)
HOME(月島結架, 福原命, みこっちゃん)
HOME(月島結架, 兵藤さゆり, さゆ)
HOME(近江遥, 近江彼方, ちゃんと授業受けないとダメだよ)
HOME(エマ, イザベラ, 学校で一番のクールビューティ)
HOME(鳥居歩美, 杉崎亜矢, 緊張し過ぎなのよ)
HOME(吉川瑞希, 御堂優理, ギターすごいんだよ、びっくりしたもん)
HOME(高天原睦月, 兵藤さゆり, さゆり軍曹みなかった？)
HOME(早乙女紫, イザベラ, ステージ衣装は自信作)
HOME(桐原優香, 斉木風, 冬は上着くらい着てください〜っ)
HOME(レベッカ, レオ, マフラー)
HOME(永山みなみ, 鳥居歩美, お料理も上手)
HOME(レオ, レベッカ, めがね借りた)
HOME(近江遥, 近江彼方, 朝ごはんを用意してくれる)
HOME(近江遥, 神谷理華, 理華ちゃん)
HOME(近江彼方, 神谷理華, 仲がいい, dir=both)
HOME(坂巻千鶴子, 志賀仁美, もう少し手加減していただきたいですわ……)
HOME(近江彼方, 近江遥, 私のカーナビ……)
HOME(綾小路姫乃, 門田剣, 校内で竹刀を振り回してはいけませんよ〜っ)
HOME(綾小路姫乃, 斉木風, 一緒に朝練はじめました)
HOME(相川涼, 白瀬小雪, チョコレートもらった)
HOME(相川涼, 綾小路姫乃, 舞台写真を撮ってくれた)
HOME(ジェニファー, ラクシャータ, すごくリラックスできる)
HOME(ラクシャータ, レベッカ, インドにいた頃の教科書を一緒によく見ている)
HOME(田中さち子, 杉崎亜矢, 世話になっている)
HOME(西村文絵, 佐伯麗音, 麗音ちゃん)
HOME(佐伯麗音, 白木凪, 凪ちゃんと絵描くから忙しいんだ)

HOME(一之瀬マリカ, 田中さち子, 黒魔術ごっこ)
HOME(一之瀬マリカ, 鳥居歩美, お菓子つくってもらおうっと♪)
HOME(鬼崎アキラ, 黒羽咲夜, 機関の陰謀？)
SS(鬼崎アキラ, 福原命, みこっちゃん)

}

