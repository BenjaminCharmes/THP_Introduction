# 06_pig_latin.rb

def translate (text)
  vowels = %w{a e i o u}
  text.gsub(/(\A|\s)\w+/) do |str|
  str.strip!
      while ! vowels.include?(str[0]) || (str[0] == 'u' && str[-1] == 'q')
          str += str[0]
          str = str[1..-1]
      end
      str  = ' ' + str + 'ay'
  end.strip
end