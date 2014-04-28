module Housetrip
  module Compression
    def self.encode(str)
      result = str.scan(/(.)(\1*)/).map do |char, count|
        [char, count.length + 1]
      end.join
      result.length >= str.length ? str : result
    end
  end
end