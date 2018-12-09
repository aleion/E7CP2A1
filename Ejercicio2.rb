nombres = %w[Violeta Andino Clemente Javiera Paula Pia Ray]

uno_uno = nombres.select { |i| i.length <= 5 }
uno_dos = nombres.map(&:downcase)
uno_tres = nombres.select { |i| i.start_with?('P') }
uno_cuatro = nombres.map(&:length)
uno_cinco = nombres.map { |i| i.gsub(/[aeiou]/, '') }

p uno_uno
p uno_dos
p uno_tres
p uno_cuatro
p uno_cinco
