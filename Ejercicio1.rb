a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

uno = a.map {|i| i += 1}
dos = a.map {|i| i.to_f}
tres = a.map {|i| i.to_s }
cuatro = a.reject {|i| i < 5 }
cinco = a.select {|i| i < 5 }
seis = a.inject {|sum, i| sum + i}
siete = a.group_by {|i| i.even?}
ocho = a.group_by {|i| i >= 6 }
p uno
p dos
p tres
p cuatro
p cinco
p seis
p siete
p ocho
