class NameIndex
  def self.create_index(names)

    ary = %w[ア カ サ タ ナ ハ マ ヤ ラ ワ ン]
    ret_ary = []

    # namesの各要素をnに入れながら、nの1文字目より大きいaryの各要素を検索する
    # 見付かればその位置（aryを昇順に検索するので-1した位置）にあるaryの文字毎にグループ分けする
    # .to_iとしているのは、nilの場合に落ちないようにしている（ary.indexの戻り値を0に変換している）
    # ary[-1] == 'ン'だった！
    names.group_by{|n| ary[(ary.index{|i| i > n[0]}.to_i - 1)]}.each do |k, v|
      ret_ary.push(Array[k, v.sort])
    end
    ret_ary.sort!{|a, b| a[0] <=> b[0]}

    return ret_ary

  end
end

