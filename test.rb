alumno = [{"nombre"=>"Alejandro", "edad"=>21, "comuna"=>"Huechuraba", "genero"=>"H"}, {"nombre"=>"maria", "edad"=>25,"comuna"=>"providencia", "genero"=>"M"}, {"nombre"=>"Natalia", "edad"=>32, "comuna"=>"Colina", "genero"=>"M"}, {"nombre"=>"Patricio", "edad"=>26, "comuna"=>"Santiago centro", "genero"=>"H"}]


gen_m = alumno.select { |key| key["genero"] == "M" }
gen_h = alumno.select { |key| key["genero"] == "H" }
lista_hombres =  gen_h.map { |key| key.values[0] }
lista_mujeres = gen_m.map { |key| key.values[0] }
puts "Mujeres:"
puts lista_mujeres
puts
puts "Hombres:"
puts lista_hombres
puts
