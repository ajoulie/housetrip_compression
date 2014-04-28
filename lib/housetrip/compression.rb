module Housetrip
  module Compression
    def self.encode(str)
      str.scan(/(.)(\1*)/).map do |char, count|
        [char, count.length + 1]
      end.join
    end
  end
end