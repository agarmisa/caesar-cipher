
class Caesar
  def initialize(shift, alph = "abcdefghijklmnopqrstuvwxyz" )
    @shift = shift
    @alph = alph
    @alph_lc = alph.split('')
    @alph_uc = alph.upcase.split('')
  end

  def cipher(string)
    array = string.split('').map do |a|
      if @alph_lc.find_index(a) == nil
        if @alph_uc.find_index(a) == nil
          a
        else
          match = @alph_uc.find_index(a)
          @alph_uc[(match.to_i + @shift)% 26 ]
        end
      else
        match = @alph_lc.find_index(a)
        @alph_lc[(match.to_i + @shift)% 26 ]
      end
    end
       array.join
  end
end

c = Caesar.new(10)
puts c.cipher("Hello, Hello, Hello world")
