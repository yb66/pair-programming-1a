module KNumber

  class Parser

    TABLE = {
      "o" =>  0,
      "ウ".force_encoding("UTF-8") => 0,
      "オ".force_encoding("UTF-8") => 0,
      "レ".force_encoding("UTF-8") => 0,
      "マ".force_encoding("UTF-8") => 0,
      "アイ".force_encoding("UTF-8") => 1,
      "イ".force_encoding("UTF-8") => 1,
      "ニ".force_encoding("UTF-8") => 2,
      "ツ".force_encoding("UTF-8") => 2,
      /#{"サン".force_encoding("UTF-8")}?/ => 3,
      "シ".force_encoding("UTF-8") => 4,
      "ヨ".force_encoding("UTF-8") => 4,
      "ゴ".force_encoding("UTF-8") => 5,
      "ロ".force_encoding("UTF-8") => 6,
      "ル".force_encoding("UTF-8") => 6,
      "ナ".force_encoding("UTF-8") => 7,
      "ハ".force_encoding("UTF-8") => 8,
      "ヤ".force_encoding("UTF-8") => 8,
      "ク".force_encoding("UTF-8") => 9,
      "キュ".force_encoding("UTF-8") => 9,
      /#{"テイ".force_encoding("UTF-8")}?/ => 10,
    }
    def initialize katakana
      @katakana = katakana
      @katakana.force_encoding("UTF-8")
      @number = parse
    end

    attr_reader :katakana

    def parse
      str = @katakana.gsub(/-|ー/, "")
      mem = []
      until str.empty? do
        if (key,num = TABLE.find{|key,_| /\A#{key}/.match str })
          str.sub! $&, ""
          mem << num
        else
          str = str[1..-1]
          mem << 0
        end
      end            
      mem.join
    end


    def to_snum
      @number
    end
  end
end

def KNumber(katakana)
  KNumber::Parser.new(katakana)
end