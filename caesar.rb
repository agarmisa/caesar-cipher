
class Caesar
  attr_reader :alph
  def initialize(shift, alph = "abcdefghijklmnopqrstuvwxyz" )
    @shift = shift
    @alph = alph
  end

  def cipher(string)
    alph_lc = alph.split('')
    alph_uc = alph.upcase.split('')
    arr = string.split(//).map do |a|
      if alph_lc.find_index(a) == nil
        if alph_uc.find_index(a) == nil
          a
        else
          match = alph_uc.find_index(a)
          alph_uc[(match.to_i + @shift)% 26 ]
        end
      else
        match = alph_lc.find_index(a)
        alph_lc[(match.to_i + @shift)% 26 ]
      end
    end
       arr.join
  end
end

c = Caesar.new(5)
puts c.cipher("Hello, Hello, Hello world")
