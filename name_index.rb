class NameIndex
  def self.create_index(names)

    ary = %w[ア カ サ タ ナ ハ マ ヤ ラ ワ ン]
    ret_ary = []

    names.group_by{|n| ary[(ary.index{|i| i > n[0]}.to_i - 1)]}.each do |k, v|
      ret_ary.push(k, v.sort)
    end

    return ret_ary

  end
end

