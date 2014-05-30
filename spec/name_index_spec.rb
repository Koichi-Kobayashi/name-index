require File.expand_path(File.dirname(__FILE__) + '/../name_index')

describe NameIndex do
  specify { expect(NameIndex.create_index(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ'])).to eq ['カ', ['カネダ', 'キシモト'], 'ア', ['イトウ'], 'ハ', ['ハマダ', 'ババ'], 'ワ', ['ワダ']] }
end

