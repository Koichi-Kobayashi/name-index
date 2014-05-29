require File.expand_path(File.dirname(__FILE__) + '/../name_index')

describe NameIndex do
  input = %w[キシモト イトウ ババ カネダ ワダ ハマダ]
  ary = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
  output = %w[[ア [[イトウ]]] [カ [[カネダ キシモト]]] [ハ [[ハマダ ババ]]] [ワ, [[ワダ]]]]
  specify { expect(NameIndex.create_index([ary])).to eq [] }
end
