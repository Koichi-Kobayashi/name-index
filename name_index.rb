class NameIndex
  def self.create_index(names)

    ary = %w[ア カ サ タ ナ ハ マ ヤ ラ ワ ン]

    ary_0 = []
    ary_1 = []
    ary_2 = []
    ary_3 = []
    ary_4 = []
    ary_5 = []
    ary_6 = []
    ary_7 = []
    ary_8 = []
    ary_9 = []
    ary_10 = []

    for name in names
      ch = name[0, 1]

      if /[ア-オ]/ =~ ch then
        ary_0.push(name)
      elsif /[カ-コ]/ =~ ch then
        ary_1.push(name)
      elsif /[サ-ソ]/ =~ ch then
        ary_2.push(name)
      elsif /[タ-ト]/ =~ ch then
        ary_3.push(name)
      elsif /[ナ-ノ]/ =~ ch then
        ary_4.push(name)
      elsif /[ハ-ホ]/ =~ ch then
        ary_5.push(name)
      elsif /[マ-モ]/ =~ ch then
        ary_6.push(name)
      elsif /[ヤ-ヨ]/ =~ ch then
        ary_7.push(name)
      elsif /[ラ-ロ]/ =~ ch then
        ary_8.push(name)
      elsif /ワ/ =~ ch then
        ary_9.push(name)
      elsif /ン/ =~ ch then
        ary_10.push(name)
      end
    end

    ary_dest = []
    ary.each_with_index do |value, idx|
      if eval("ary_" + idx.to_s).length > 0 then
        ary_dest.push(Array[ary[idx], Array[eval("ary_" + idx.to_s).sort]])
      end
    end

    p ary_dest

    # ruby2日目
    p names.group_by{|n| ary[(ary.index{|i| i > n[0]}.to_i - 1)]}.sort_by{|k, v| v}

  end
end


ary = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']

NameIndex.create_index(ary)

