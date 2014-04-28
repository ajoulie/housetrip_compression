### Installation :
bundle install

### Run test :
rspec spec/

### Use :
1. irb
2. load 'lib/housetrip/compression.rb'
3. Housetrip::Compression.encode('aaabbccc') == 'a3b2c3'
4. Housetrip::Compression.encode('abcdef') == 'abcdef'
5. Housetrip::Compression.decode('a11b1') == 'aaaaaaaaaaab'
6. Housetrip::Compression.decode('ab') == 'ab'



