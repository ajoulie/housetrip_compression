require 'housetrip/compression'

describe Housetrip::Compression do
  describe '#encode' do
    it 'does not transform "aa"' do
      Housetrip::Compression.encode('aa').should eq('aa')
    end
    it 'does not transform "abcdefgh"' do
      Housetrip::Compression.encode('abcdefgh').should eq('abcdefgh')
    end
    it 'transform "aaa" to "a3"' do
      Housetrip::Compression.encode('aaa').should eq('a3')
    end
    it 'transform "aaabbbbbbbbbbccccc" to "a3b6c5"' do
      Housetrip::Compression.encode('aaabbbbbbbbbbccccc').should eq('a3b10c5')
    end
  end

  describe '#decode' do
    it 'transform "a3b6c5" to "aaabbbbbbbbbbccccc"' do
      Housetrip::Compression.decode('a3b10c5').should eq('aaabbbbbbbbbbccccc')
    end

    it 'does not transform "abcdef"' do
      Housetrip::Compression.decode('abcdef').should eq('abcdef')
    end
  end
end