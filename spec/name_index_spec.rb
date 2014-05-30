require File.expand_path(File.dirname(__FILE__) + '/../name_index')

describe NameIndex do
  specify { expect(NameIndex.create_index(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ'])).to eq [['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']]] }
  specify { expect(NameIndex.create_index(['ゴトウ', 'アキモト', 'コバヤシ', 'モリモト', 'ンネサカ', 'ワタナベ'])).to eq [['ア', ['アキモト']], ['カ', ['コバヤシ', 'ゴトウ']], ['マ', ['モリモト']], ['ワ', ['ワタナベ']], ['ン', ['ンネサカ']]] }

end

