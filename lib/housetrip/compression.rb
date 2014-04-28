module Housetrip
  module Compression
    def self.encode(str)
      result = str.scan(/(.)(\1*)/).map do |char, count|
        [char, count.length + 1]
      end.join
      result.length >= str.length ? str : result
    end

    def self.decode(str)
      result = str.scan(/(.)(\d+)/).map do |char, count|
        char * (count.to_i)
      end.join
      result == "" ? str : result
    end
  end
end