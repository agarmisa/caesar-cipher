def caesar(string, number_forward)
  alph = "abcdefghijklmnopqrstuvwxyz"
  alph_lc = alph.split('')
  alph_uc = alph.upcase.split('')
  arr = string.split(//).map do |a|
    if alph_lc.find_index(a) == nil
      if alph_uc.find_index(a) == nil
        a
      else
        match = alph_uc.find_index(a)
        alph_uc[(match.to_i + number_forward)% 26 ]
      end
    else
      match = alph_lc.find_index(a)
      alph_lc[(match.to_i + number_forward)% 26 ]
    end
  end
     arr.join
end

puts caesar("Hello, Hello, Hello world", 23)