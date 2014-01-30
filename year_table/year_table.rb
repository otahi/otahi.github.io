# -*- coding: utf-8 -*-
require "gviz"

sections =
  [
   {src: -384, dst: -322, label: "アリストテレス" },
   {src: -190, dst: -125, label: "ヒッパルコス" },
   {src:   83, dst:  168, label: "プトレマイオス" },
   {src: 1473, dst: 1543, label: "コペルニクス" },
   {src: 1564, dst: 1642, label: "ガリレオ" },
   {src: 1642, dst: 1727, label: "ニュートン" },
   {src: 1738, dst: 1822, label: "ウィリアム・ハーシェル" },
   {src: 1750, dst: 1848, label: "カロライン・ハーシェル" },
   {src: 1792, dst: 1871, label: "ジョン・ハーシェル" },
   {src: 1803, dst: 1853, label: "ドップラー" },
   {src: 1879, dst: 1955, label: "アインシュタイン" },
   {src: 1889, dst: 1953, label: "ハッブル" },
  ]


Graph do
  Y_STEP = -0.7
  SCALE = 50.0

  edges  arrowhead:'none', color:'aquamarine', penwidth:2, arrowhead:"none", style:"dotted"
  global fontname:'Arial', fillcolor:'aquamarine', ratio:"auto"

  i = 0
  sections.each do |section|
    src =     section[:src]   if section.key? :src
    dst =     section[:dst]   if section.key? :dst
    label =   section[:label] if section.key? :label

    rect "label#{i}".to_sym, label:"#{label} #{src}-#{dst}", \
                             x:(src-200)/SCALE, y:Y_STEP*i, width:5, \
                             color:"aquamarine", fillcolor:"none", fontname: 'Arial'
    dst ||= Time.now.year
    rect "bar#{i}".to_sym, x:src/SCALE, y:Y_STEP*i, width:(dst-src)/SCALE, height:0.5, label:"", \
                           color:"aquamarine", fillcolor:'aquamarine'

    route "label#{i}".to_sym => "bar#{i}".to_sym
    edge("label#{i}_bar#{i}".to_sym, sytle:"dotted")
    i+=1
  end


  save(:year_table, :png)
end
