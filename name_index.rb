class NameIndex

  def self.create_index(names)

    names.sort.group_by{|n|
      ary.find{|c| c <= n[0]}
    }.each_with_object([]) do |(k, v), ret_ary|
      ret_ary.push([k, v.sort])
    end

  end
end

