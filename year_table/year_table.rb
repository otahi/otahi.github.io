# -*- coding: utf-8 -*-
require "gviz"

=begin
    #template
   {
     src: , dst: , label: "",
     img: "",
     img_dl: "",
     img_link: "",
     link: ""
   },
=end

sections =
  [
   {
     src: -552, dst: -479, label: "孔子(こうし)",
     img: "./images/Confucius_02.png",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Confucius_02.png/59px-Confucius_02.png",
     img_link: "http://commons.wikimedia.org/wiki/File:Confucius_02.png",
     link: "http://ja.wikipedia.org/wiki/%E5%AD%94%E5%AD%90"
   },
   {
     src: -469, dst: -399, label: "ソクラテス",
     img: "./images/Socrate.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Anderson%2C_Domenico_%281854-1938%29_-_n._23185_-_Socrate_%28Collezione_Farnese%29_-_Museo_Nazionale_di_Napoli.jpg/92px-Anderson%2C_Domenico_%281854-1938%29_-_n._23185_-_Socrate_%28Collezione_Farnese%29_-_Museo_Nazionale_di_Napoli.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Anderson,_Domenico_(1854-1938)_-_n._23185_-_Socrate_(Collezione_Farnese)_-_Museo_Nazionale_di_Napoli.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%BD%E3%82%AF%E3%83%A9%E3%83%86%E3%82%B9"
   },
   {src: -463, dst: -383, label: "シャカ",
     img: "./images/Budda.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Kamakura_Budda_Daibutsu_front_1885.jpg/90px-Kamakura_Budda_Daibutsu_front_1885.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Kamakura_Budda_Daibutsu_front_1885.jpg",
     link: "http://ja.wikipedia.org/wiki/%E9%87%88%E8%BF%A6"
   },
   {src: -427, dst: -347, label: "プラトン" ,
     img: "images/plato.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Plato_Silanion_Musei_Capitolini_MC1377.jpg/80px-Plato_Silanion_Musei_Capitolini_MC1377.jpg",
     img_link: "http://en.wikipedia.org/wiki/File:Plato_Silanion_Musei_Capitolini_MC1377.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%97%E3%83%A9%E3%83%88%E3%83%B3"
   },
   {src: -384, dst: -322, label: "アリストテレス",
     img: "images/Aristotle_Altemps_Inv8575.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Aristotle_Altemps_Inv8575.jpg/90px-Aristotle_Altemps_Inv8575.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Aristotle_Altemps_Inv8575.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%A2%E3%83%AA%E3%82%B9%E3%83%88%E3%83%86%E3%83%AC%E3%82%B9"
   },
   {src: -287, dst: -212, label: "アルキメデス",
     img: "images/Archimedes.gif",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Archimedes_%28Graphik%29.gif/107px-Archimedes_%28Graphik%29.gif",
     img_link: "http://commons.wikimedia.org/wiki/File:Archimedes_(Graphik).gif",
     link: "http://ja.wikipedia.org/wiki/%E3%82%A2%E3%83%AB%E3%82%AD%E3%83%A1%E3%83%87%E3%82%B9"
   },
   {src: -190, dst: -125, label: "ヒッパルコス",
     img: "images/hipparchus.gif",
     img_dl: "http://www.ph.surrey.ac.uk/astrophysics/files/hipparchus.gif",
     img_link: "http://www.ph.surrey.ac.uk/astrophysics/files/hipparchus.html",
     link: "http://ja.wikipedia.org/wiki/%E3%83%92%E3%83%83%E3%83%91%E3%83%AB%E3%82%B3%E3%82%B9"
   },
   {src:   -4, dst:   30, label: "イエス・キリスト",
     img: "images/Cristo_Redentor_-_Rio.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Cristo_Redentor_-_Rio.jpg/99px-Cristo_Redentor_-_Rio.jpg",
     img_link: "http://commons.wikimedia.org/wiki/File:Cristo_Redentor_-_Rio.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%A4%E3%82%A8%E3%82%B9%E3%83%BB%E3%82%AD%E3%83%AA%E3%82%B9%E3%83%88"
   },
   {src:   83, dst:  168, label: "プトレマイオス",
     img: "images/Claudius_Ptolemaeus.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Claudius_Ptolemaeus.jpg/99px-Claudius_Ptolemaeus.jpg",
     img_link: "http://commons.wikimedia.org/wiki/File:Claudius_Ptolemaeus.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%AF%E3%83%A9%E3%82%A6%E3%83%87%E3%82%A3%E3%82%AA%E3%82%B9%E3%83%BB%E3%83%97%E3%83%88%E3%83%AC%E3%83%9E%E3%82%A4%E3%82%AA%E3%82%B9"
   },
   {src:  570, dst:  632, label: "ムハンマド",
     link: "http://ja.wikipedia.org/wiki/%E3%83%A0%E3%83%8F%E3%83%B3%E3%83%9E%E3%83%89%E3%83%BB%E3%82%A4%E3%83%96%E3%83%B3%EF%BC%9D%E3%82%A2%E3%83%96%E3%83%89%E3%82%A5%E3%83%83%E3%83%A9%E3%83%BC%E3%83%95" },
   {src:  602, dst:  664, label: "玄奘(げんじょう)",
     img: "images/Xuanzang w.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Xuanzang_w.jpg/58px-Xuanzang_w.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Xuanzang_w.jpg",
     link: "http://ja.wikipedia.org/wiki/%E7%8E%84%E5%A5%98%E4%B8%89%E8%94%B5"
   },
   {src: 1162, dst: 1272, label: "チンギス・ハン" ,
     img: "images/Dschingis_Khan.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/3/35/YuanEmperorAlbumGenghisPortrait.jpg/94px-YuanEmperorAlbumGenghisPortrait.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:YuanEmperorAlbumGenghisPortrait.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%81%E3%83%B3%E3%82%AE%E3%82%B9%E3%83%BB%E3%82%AB%E3%83%B3"
   },
   {src: 1254, dst: 1324, label: "マルコ・ポーロ" ,
     img: "images/Marco_Polo.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Marco_Polo_portrait.jpg/89px-Marco_Polo_portrait.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Marco_Polo_portrait.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%9E%E3%83%AB%E3%82%B3%E3%83%BB%E3%83%9D%E3%83%BC%E3%83%AD"
   },
   {
     src: 1412, dst: 1431, label: "ジャンヌダルク" ,
     img: "./Joan_of_arc_miniature_graded.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Joan_of_arc_miniature_graded.jpg/79px-Joan_of_arc_miniature_graded.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Joan_of_arc_miniature_graded.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%B8%E3%83%A3%E3%83%B3%E3%83%8C%E3%83%BB%E3%83%80%E3%83%AB%E3%82%AF"
   },
   {src: 1420, dst: 1506, label: "雪舟(せっしゅう)",
     img: "images/Sesshu.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Portrait_of_Sesshu.jpg/97px-Portrait_of_Sesshu.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Portrait_of_Sesshu.jpg",
     link: "http://ja.wikipedia.org/wiki/%E9%9B%AA%E8%88%9F"
   },
   {src: 1451, dst: 1506, label: "クリストファー・コロンブス",
     img: "images/Ridolfo_Ghirlandaio_Columbus.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Ridolfo_Ghirlandaio_Columbus.jpg/102px-Ridolfo_Ghirlandaio_Columbus.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Ridolfo_Ghirlandaio_Columbus.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%AF%E3%83%AA%E3%82%B9%E3%83%88%E3%83%95%E3%82%A1%E3%83%BC%E3%83%BB%E3%82%B3%E3%83%AD%E3%83%B3%E3%83%96%E3%82%B9"
   },
   {src: 1452, dst: 1519, label: "レオナルド・ダ・ビンチ",
     img: "images/Plato-raphael.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Plato-raphael.jpg/113px-Plato-raphael.jpg",
     img_link: "http://commons.wikimedia.org/wiki/File:Plato-raphael.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%AC%E3%82%AA%E3%83%8A%E3%83%AB%E3%83%89%E3%83%BB%E3%83%80%E3%83%BB%E3%83%B4%E3%82%A3%E3%83%B3%E3%83%81"
   },
   {src: 1473, dst: 1543, label: "ニコラウス・コペルニクス" ,
     img: "images/Kopernikus.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Nikolaus_Kopernikus.jpg/103px-Nikolaus_Kopernikus.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Nikolaus_Kopernikus.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%8B%E3%82%B3%E3%83%A9%E3%82%A6%E3%82%B9%E3%83%BB%E3%82%B3%E3%83%9A%E3%83%AB%E3%83%8B%E3%82%AF%E3%82%B9"
   },
   {src: 1564, dst: 1642, label: "ガリレオ・ガリレイ",
     img: "images/Galileo-sustermans.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Galileo-sustermans.jpg/120px-Galileo-sustermans.jpg",
     img_link: "http://commons.wikimedia.org/wiki/File:Galileo-sustermans.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%AC%E3%83%AA%E3%83%AC%E3%82%AA%E3%83%BB%E3%82%AC%E3%83%AA%E3%83%AC%E3%82%A4"
   },
   {src: 1571, dst: 1630, label: "ヨハネス・ケプラー",
     img: "images/Johannes_Kepler_1610.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Johannes_Kepler_1610.jpg/87px-Johannes_Kepler_1610.jpg",
     img_link: "http://commons.wikimedia.org/wiki/File:Johannes_Kepler_1610.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%A8%E3%83%8F%E3%83%8D%E3%82%B9%E3%83%BB%E3%82%B1%E3%83%97%E3%83%A9%E3%83%BC"
   },
   {src: 1642, dst: 1727, label: "アイザック・ニュートン",
     img: "images/Isaac_Newton_1702.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Sir_Isaac_Newton_1702.jpg/96px-Sir_Isaac_Newton_1702.jpg",
     img_link: "http://commons.wikimedia.org/wiki/File:Sir_Isaac_Newton_by_Sir_Godfrey_Kneller,_Bt.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%A2%E3%82%A4%E3%82%B6%E3%83%83%E3%82%AF%E3%83%BB%E3%83%8B%E3%83%A5%E3%83%BC%E3%83%88%E3%83%B3"
   },
   {src: 1730, dst: 1817, label: "シャルル・メシエ",
     img: "images/Charles_Messier.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Charles_Messier.jpg/95px-Charles_Messier.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Charles_Messier.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%B7%E3%83%A3%E3%83%AB%E3%83%AB%E3%83%BB%E3%83%A1%E3%82%B7%E3%82%A8"
   },
   {src: 1732, dst: 1799, label: "ジョージ・ワシントン",
     img: "images/George_Washington.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Gilbert_Stuart_Williamstown_Portrait_of_George_Washington.jpg/100px-Gilbert_Stuart_Williamstown_Portrait_of_George_Washington.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Gilbert_Stuart_Williamstown_Portrait_of_George_Washington.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%B8%E3%83%A7%E3%83%BC%E3%82%B8%E3%83%BB%E3%83%AF%E3%82%B7%E3%83%B3%E3%83%88%E3%83%B3"
   },
   {src: 1738, dst: 1822, label: "ウィリアム・ハーシェル",
     img: "images/William_Herschel01.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/3/36/William_Herschel01.jpg/98px-William_Herschel01.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:William_Herschel01.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%A6%E3%82%A3%E3%83%AA%E3%82%A2%E3%83%A0%E3%83%BB%E3%83%8F%E3%83%BC%E3%82%B7%E3%82%A7%E3%83%AB"
   },
   {src: 1750, dst: 1848, label: "カロライン・ハーシェル",
     img: "images/Herschel_Caroline_1829.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Herschel_Caroline_1829.jpg/97px-Herschel_Caroline_1829.jpg",
     img_link: "http://commons.wikimedia.org/wiki/File:Herschel_Caroline_1829.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%AB%E3%83%AD%E3%83%A9%E3%82%A4%E3%83%B3%E3%83%BB%E3%83%8F%E3%83%BC%E3%82%B7%E3%82%A7%E3%83%AB"
   },
   {src: 1787, dst: 1826, label: "ヨセフ・フォン・フラウンホーファー",
     img: "images/Joseph_von_Fraunhofer.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Joseph_von_Fraunhofer.jpg/80px-Joseph_von_Fraunhofer.jpg",
     img_link: "http://commons.wikimedia.org/wiki/File:Joseph_von_Fraunhofer.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%83%A8%E3%82%BC%E3%83%95%E3%83%BB%E3%83%95%E3%82%A9%E3%83%B3%E3%83%BB%E3%83%95%E3%83%A9%E3%82%A6%E3%83%B3%E3%83%9B%E3%83%BC%E3%83%95%E3%82%A1%E3%83%BC"
   },
   {src: 1792, dst: 1871, label: "ジョン・ハーシェル",
     img: "images/John_Herschel00.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/7/74/John_Herschel00.jpg/101px-John_Herschel00.jpg",
     img_link: "http://commons.wikimedia.org/wiki/File:John_Herschel00.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%B8%E3%83%A7%E3%83%B3%E3%83%BB%E3%83%8F%E3%83%BC%E3%82%B7%E3%82%A7%E3%83%AB"
   },
   {src: 1803, dst: 1853, label: "ヨハン・クリスチャン・ドップラー",
     img: "images/Christian_Doppler.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Christian_Doppler.jpg/93px-Christian_Doppler.jpg",
     img_link: "http://commons.wikimedia.org/wiki/File:Christian_Doppler.jpg?uselang=ja",
     link: "http://ja.wikipedia.org/wiki/%E3%82%AF%E3%83%AA%E3%82%B9%E3%83%81%E3%83%A3%E3%83%B3%E3%83%BB%E3%83%89%E3%83%83%E3%83%97%E3%83%A9%E3%83%BC"
   },
   {src: 1810, dst: 1849, label: "フレデリック・フランソワ・ショパン",
     link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%83%AC%E3%83%87%E3%83%AA%E3%83%83%E3%82%AF%E3%83%BB%E3%82%B7%E3%83%A7%E3%83%91%E3%83%B3" },
   {src: 1827, dst: 1898, label: "ジョン万次郎(まんじろう)",
     link: "http://ja.wikipedia.org/wiki/%E3%82%B8%E3%83%A7%E3%83%B3%E4%B8%87%E6%AC%A1%E9%83%8E" },
   {src: 1853, dst: 1890, label: "フィンセント・ファン・ゴッホ",
     link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A3%E3%83%B3%E3%82%BB%E3%83%B3%E3%83%88%E3%83%BB%E3%83%95%E3%82%A1%E3%83%B3%E3%83%BB%E3%82%B4%E3%83%83%E3%83%9B" },
   {src: 1879, dst: 1955, label: "アルバート・アインシュタイン",
     img: "images/Einstein1921.jpg",
     img_dl: "http://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Einstein1921_by_F_Schmutzer_2.jpg/96px-Einstein1921_by_F_Schmutzer_2.jpg",
     img_link: "http://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Einstein1921_by_F_Schmutzer_2.jpg",
     link: "http://ja.wikipedia.org/wiki/%E3%82%A2%E3%83%AB%E3%83%99%E3%83%AB%E3%83%88%E3%83%BB%E3%82%A2%E3%82%A4%E3%83%B3%E3%82%B7%E3%83%A5%E3%82%BF%E3%82%A4%E3%83%B3"
   },
   {src: 1889, dst: 1953, label: "ハッブル",
     img: "images/edwin_powell_hubble_0.jpg",
     img_dl: "http://static4.quoteswave.com/wp-content/uploads/2012/10/EdwinPowellHubble-150x150.jpg",
     img_link: "http://www.quoteswave.com/picture-quotes/259599",
     link: "http://ja.wikipedia.org/wiki/%E3%82%A8%E3%83%89%E3%82%A6%E3%82%A3%E3%83%B3%E3%83%BB%E3%83%8F%E3%83%83%E3%83%96%E3%83%AB"
   },
   {
     src: 1900, dst: 1992, label: "ヤン・オールト",
     img: "images/oort.jpg",
     img_dl: "http://www.sciencephoto.com/image/c0166227/thumb",
     img_link: "http://search.ppsimages.co.jp/cgi-bin/search.cgi?keyword_and=%E3%83%A4%E3%83%B3%E3%83%BB%E3%82%AA%E3%83%BC%E3%83%AB%E3%83%88",
     link: "http://ja.wikipedia.org/wiki/%E3%83%A4%E3%83%B3%E3%83%BB%E3%82%AA%E3%83%BC%E3%83%AB%E3%83%88"
   },
   {
     src: 1920, dst: 2010, label: "林忠四郎",
     img: "images/hayashi.jpg",
     img_dl: "http://www.worldtimes.co.jp/today/photonews/100302/s100302-11.jpg",
     img_link: "http://www.worldtimes.co.jp/today/photonews/100302/100302-11.html",
     link: "http://ja.wikipedia.org/wiki/%E6%9E%97%E5%BF%A0%E5%9B%9B%E9%83%8E"
   },
   {
     src: 1926, dst: nil, label: "小柴昌俊",
     img: "images/koshiba.jpg",
     img_dl: "http://www.space-park.jp/events/exhibition/2004/1003/img01.jpg",
     img_link: "http://www.space-park.jp/events/exhibition/2004/1003/",
     link: "http://ja.wikipedia.org/wiki/%E5%B0%8F%E6%9F%B4%E6%98%8C%E4%BF%8A"
   },
  ]


Graph('chronological_table') do
  Y_STEP = -1.0
  SCALE = 50.0

  edges  color:'blue', style:"solid", arrowtype:"normal", penwidth:10

  i = 0
  sections.each do |section|
    src =      section[:src]      if section.key? :src
    dst =      section[:dst]      if section.key? :dst
    label =    section[:label]    if section.key? :label
    img =      section[:img]      if section.key? :img
    img_dl =   section[:img_dl]   if section.key? :img_dl
    img_link = section[:img_link] if section.key? :img_link
    link =     section[:link]     if section.key? :link

    img_link_attr ="HREF=\"#{img_link}\"" if img_link
    img_tag ="<TD #{img_link_attr}><IMG SRC=\"#{img}\" SCALE=\"TRUE\" /></TD>" if img
    link_attr ="HREF=\"#{link}\"" if link

    if img_dl
      require 'open-uri'
      open(img_dl) {|data|
        File.open(img, 'w') {|f| f.write data.read}
      }
    end

    rect "label#{i}".to_sym, label: "<TABLE><TR>#{img_tag}<TD #{link_attr}>#{label} #{src} - #{dst}</TD></TR></TABLE>", \
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

