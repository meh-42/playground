def long_words_count(x, l)
  x.split.select do |word|
    word.length >= l
  end.count
end

x = "Nel ciel che più de la sua luce prende fpu’ io e vidi cose che ridire né sa né può chi di là sù discende perché appressando sé al suo disire nostro intelletto si profonda tanto che dietro la memoria non può ire"
l = 6
n = long_words_count(x, l)
puts "There are #{n} words longer than #{l} characters"
