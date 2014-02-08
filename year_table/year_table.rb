# -*- coding: utf-8 -*-
require "gviz"

=begin
    #template
  ｛
     src: , dst: , label: "",
     img: "",
     img_dl: "",
     link: ""
   },
=end

sections =
  [
   {
     src: -552, dst: -479, label: "孔子(こうし)",
     img: "./images/Confucius_02.png",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Confucius_02.png/59px-Confucius_02.png",
     link: "http://commons.wikimedia.org/wiki/File:Confucius_02.png"
   },
   {
     src: -469, dst: -399, label: "ソクラテス",
     img: "./images/Socrate.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Anderson%2C_Domenico_%281854-1938%29_-_n._23185_-_Socrate_%28Collezione_Farnese%29_-_Museo_Nazionale_di_Napoli.jpg/92px-Anderson%2C_Domenico_%281854-1938%29_-_n._23185_-_Socrate_%28Collezione_Farnese%29_-_Museo_Nazionale_di_Napoli.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Anderson,_Domenico_(1854-1938)_-_n._23185_-_Socrate_(Collezione_Farnese)_-_Museo_Nazionale_di_Napoli.jpg"
   },
   {src: -463, dst: -383, label: "シャカ",
     img: "./images/Budda.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Kamakura_Budda_Daibutsu_front_1885.jpg/90px-Kamakura_Budda_Daibutsu_front_1885.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Kamakura_Budda_Daibutsu_front_1885.jpg"
   },
   {src: -427, dst: -347, label: "プラトン" ,
     img: "images/plato.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Plato_Silanion_Musei_Capitolini_MC1377.jpg/80px-Plato_Silanion_Musei_Capitolini_MC1377.jpg",
     link: "http://en.wikipedia.org/wiki/File:Plato_Silanion_Musei_Capitolini_MC1377.jpg"
   },
   {src: -384, dst: -322, label: "アリストテレス" },
   {src: -287, dst: -212, label: "アルキメデス" },
   {src: -190, dst: -125, label: "ヒッパルコス" },
   {src:   -4, dst:   30, label: "イエス・キリスト" },
   {src:   83, dst:  168, label: "プトレマイオス" },
   {src:  570, dst:  632, label: "ムハンマド" },
   {src:  602, dst:  664, label: "玄奘(げんじょう)" },
   {src: 1162, dst: 1272, label: "チンギス・ハン" ,
     img: "images/Dschingis_Khan.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/3/35/YuanEmperorAlbumGenghisPortrait.jpg/94px-YuanEmperorAlbumGenghisPortrait.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:YuanEmperorAlbumGenghisPortrait.jpg"
   },
   {src: 1254, dst: 1324, label: "マルコ・ポーロ" ,
     img: "images/Marco_Polo.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Marco_Polo_portrait.jpg/89px-Marco_Polo_portrait.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Marco_Polo_portrait.jpg"
   },
   {
     src: 1412, dst: 1431, label: "ジャンヌダルク" ,
     img: "./Joan_of_arc_miniature_graded.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Joan_of_arc_miniature_graded.jpg/79px-Joan_of_arc_miniature_graded.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Joan_of_arc_miniature_graded.jpg"
   },
   {src: 1420, dst: 1506, label: "雪舟(せっしゅう)" },
   {src: 1451, dst: 1506, label: "コロンブス" },
   {src: 1452, dst: 1519, label: "レオナルド・ダ・ビンチ" },
   {src: 1473, dst: 1543, label: "ニコラウス・コペルニクス" ,
     img: "images/Kopernikus.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Nikolaus_Kopernikus.jpg/103px-Nikolaus_Kopernikus.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Nikolaus_Kopernikus.jpg"
   },
   {src: 1564, dst: 1642, label: "ガリレオ・ガリレイ" },
   {src: 1571, dst: 1630, label: "ヨハネス・ケプラー" },
   {src: 1642, dst: 1727, label: "アイザック・ニュートン" },
   {src: 1732, dst: 1799, label: "ジョージ・ワシントン",
     img: "images/George_Washington.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Gilbert_Stuart_Williamstown_Portrait_of_George_Washington.jpg/100px-Gilbert_Stuart_Williamstown_Portrait_of_George_Washington.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Gilbert_Stuart_Williamstown_Portrait_of_George_Washington.jpg"
   },
   {src: 1738, dst: 1822, label: "ウィリアム・ハーシェル",
     img: "images/William_Herschel01.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/3/36/William_Herschel01.jpg/98px-William_Herschel01.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:William_Herschel01.jpg"
   },
   {src: 1750, dst: 1848, label: "カロライン・ハーシェル",
     img: "images/Herschel_Caroline_1829.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Herschel_Caroline_1829.jpg/97px-Herschel_Caroline_1829.jpg",
     link: "http://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Herschel_Caroline_1829.jpg/97px-Herschel_Caroline_1829.jpg"
   },
   {src: 1787, dst: 1826, label: "ヨセフ・フォン・フラウンホーファー" },
   {src: 1792, dst: 1871, label: "ジョン・ハーシェル" },
   {src: 1803, dst: 1853, label: "ヨハン・クリスチャン・ドップラー" },
   {src: 1810, dst: 1849, label: "ショパン" },
   {src: 1827, dst: 1898, label: "ジョン万次郎(まんじろう)" },
   {src: 1853, dst: 1890, label: "ゴッホ" },
   {src: 1879, dst: 1955, label: "アインシュタイン" },
   {src: 1889, dst: 1953, label: "ハッブル" },
  ]


Graph do
  Y_STEP = -1.0
  SCALE = 50.0

  edges  color:'blue', style:"solid", arrowtype:"normal", penwidth:10

  i = 0
  sections.each do |section|
    src =     section[:src]   if section.key? :src
    dst =     section[:dst]   if section.key? :dst
    label =   section[:label] if section.key? :label
    img =     section[:img] if section.key? :img
    img_dl =  section[:img_dl] if section.key? :img_dl

    img_tag =''
    img_tag = "<IMG SRC=\"#{img}\" SCALE=\"TRUE\" />" if img

    if img_dl
      require 'open-uri'
      open(img_dl) {|data|
        File.open(img, 'w') {|f| f.write data.read}
      }
    end

    rect "label#{i}".to_sym, label: "<TABLE><TR><TD>#{img_tag}</TD><TD>#{label} #{src}-#{dst}</TD></TR></TABLE>", \
                             x:(src-200)/SCALE, y:Y_STEP*i, size:"2,2", \
                             color:"none", fillcolor:"none", fontname: 'Arial'
    dst ||= Time.now.year
    point "from#{i}".to_sym, x:src/SCALE ,y:Y_STEP*i,color:"white"
    point "to#{i}".to_sym,   x:dst/SCALE ,y:Y_STEP*i,color:"white"
    route "from#{i}".to_sym => "to#{i}".to_sym
    i+=1
  end


  save(:year_table, :svg)
  save(:year_table, :png)
end

