# -*- coding: utf-8 -*-
require "gviz"

sections =
  [
   {src: -552, dst: -479, label: "孔子" },
   {src: -469, dst: -399, label: "ソクラテス" },
   {src: -427, dst: -347, label: "プラトン" },
   {src: -384, dst: -322, label: "アリストテレス" },
   {src: -287, dst: -212, label: "アルキメデス" },
   {src: -190, dst: -125, label: "ヒッパルコス" },
   {src:   83, dst:  168, label: "プトレマイオス" },
   {src: 1254, dst: 1324, label: "マルコ・ポーロ" },
   {src: 1420, dst: 1506, label: "雪舟" },
   {src: 1451, dst: 1506, label: "コロンブス" },
   {src: 1452, dst: 1519, label: "レオナルド・ダ・ビンチ" },
   {src: 1473, dst: 1543, label: "コペルニクス" },
   {src: 1564, dst: 1642, label: "ガリレオ" },
   {src: 1642, dst: 1727, label: "ニュートン" },
   {src: 1738, dst: 1822, label: "ウィリアム・ハーシェル" },
   {src: 1750, dst: 1848, label: "カロライン・ハーシェル" },
   {src: 1792, dst: 1871, label: "ジョン・ハーシェル" },
   {src: 1803, dst: 1853, label: "ドップラー" },
   {src: 1827, dst: 1898, label: "ジョン万次郎" },
   {src: 1853, dst: 1890, label: "ゴッホ" },
   {src: 1879, dst: 1955, label: "アインシュタイン" },
   {src: 1889, dst: 1953, label: "ハッブル" },
  ]


Graph do
  Y_STEP = -0.7
  SCALE = 50.0

  edges  color:'blue', style:"solid"

  i = 0
  sections.each do |section|
    src =     section[:src]   if section.key? :src
    dst =     section[:dst]   if section.key? :dst
    label =   section[:label] if section.key? :label

    rect "label#{i}".to_sym, label:"#{label} #{src}-#{dst}", \
                             x:(src-200)/SCALE, y:Y_STEP*i, width:5, \
                             color:"blue", fillcolor:"none", fontname: 'Arial'
    dst ||= Time.now.year
    line "bar#{i}".to_sym, from:[src/SCALE,Y_STEP*i], to:[dst/SCALE,Y_STEP*i]
    i+=1
  end


  save(:year_table, :png)
end
