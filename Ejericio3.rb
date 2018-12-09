option = 0
alumno = [{"nombre"=>"Alejandro", "edad"=>21, "comuna"=>"Huechuraba", "genero"=>"H"}, {"nombre"=>"maria", "edad"=>25, "comuna"=>"providencia", "genero"=>"M"}]
while option != 10
  puts 'Opcion 1: Ingresar Alumno'
  puts 'Opcion 2: Editar datos de Alumno'
  puts 'Opcion 3: Eliminar Alumno'
  puts 'Opcion 4: Mostrar cantidad de alumnos ingresados'
  puts 'Opcion 5: Mostrar comuna de cada Alumno'
  puts 'Opcion 6: Mostrar lista con Alumnos entre 20-25 años'
  puts 'Opcion 7: Sumar las edades de todos los alumnos'
  puts 'Opcion 8: Mostrar promedio de edad'
  puts 'Opcion 9: Mostrar listado por genero'
  puts 'Opcion 10: Salir'
  option = gets.chomp
  if option.to_i == 1
    puts 'Ingresa el nombre del alumno:'
    name = gets.chomp
    name.capitalize!
    puts 'Ingresa la edad del alumno'
    age = gets.chomp.to_i
    puts 'Ingresa la comuna donde vive el alumno'
    comuna = gets.chomp
    comuna.capitalize!
    puts 'Ingresa el genero del alumno (H o M)'
    gen = gets.chomp.capitalize!
    p gen
    gen.capitalize!

    student = {"nombre" => name, "edad" => age, "comuna" => comuna, "genero" => gen}
    p student
    alumno.push(student)
    p alumno
  end

  if option.to_i == 2
    puts
    alumno.each_with_index { |name, index| puts "#{index}: #{name.values[0]}" }
    puts
    puts 'Que alumno desea modificar?'
    alumno_mod = gets.chomp.to_i
    alumno_sel = alumno[alumno_mod]
    puts 'que valor desea modificar?'
    alumno_sel.each_with_index { |key, index| puts "#{index}: #{key}" }
    item_ask = gets.chomp.to_i
    puts 'Ingrese nuevo valor:'
    item_new = gets.chomp
    alumno_sel.keys[item_ask] = item_new
    p alumno
  end

  if option.to_i == 3
    puts
    alumno.each_with_index {|name, index| puts "#{index}: #{name.values[0]}"}
    puts
    puts 'Que alumno desea eliminar?'
    alumno_sel = gets.chomp.to_i
    alumno.delete_at(alumno_sel)
    puts alumno
  end

  if option.to_i == 4
    puts
    cant = alumno.count
    puts "existen #{cant} alumnos ingresados en la base"
    puts
  end

  if option.to_i == 5
    puts
    alumno_comuna = alumno.map { |test| "#{test['nombre']}: #{test['comuna']}" }
    puts alumno_comuna
    puts
  end
  
  if option.to_i == 6
    puts
    seleccion_edad = alumno.select { |keys| keys['edad'] <= 25 && keys['edad'] >= 20 }
    seleccionados_edad = seleccion_edad.map { |key| "#{key['nombre']}: #{key['edad']}"}
    puts 'Alumnos entre 20 y 25 años:'
    puts seleccionados_edad
    puts
  end

  if option.to_i == 7
    puts
    sum = 0
    seleccion_edad = alumno.map { |keys| sum += keys['edad'] }
    puts "La suma de las edades de todos los alumnos es: #{sum}"
    puts
  end

  if option.to_i == 8
    puts
    sum = 0
    seleccion_edad = alumno.map {|keys| sum += keys["edad"]}
    prom = sum.to_f / seleccion_edad.length.to_f
    puts "El promedio de edad es: #{prom.to_f.round(2)} " 
  end
  
  if option.to_i == 9
    puts
    gen_m = alumno.select { |key| key['genero'] == 'M' }
    gen_h = alumno.select { |key| key['genero'] == 'H' }
    lista_hombres =  gen_h.map { |key| key.values[0] }
    lista_mujeres = gen_m.map { |key| key.values[0] }
    puts 'Mujeres:'
    puts lista_mujeres
    puts
    puts 'Hombres:'
    puts lista_hombres
    puts
  end

  if option.to_i == 10
    puts "Hasta la proxima"
    break
  end
end
