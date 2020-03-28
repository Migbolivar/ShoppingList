require "./list.rb"
require "./item.rb"


class ListApp

	attr_writer :list

	def initialize
		@list = List.new
	end

	def run
		puts "Bienvenido a nuestra Lista de Compras"
		loop do 
			puts 
			puts "a - Agregar articulos"
			puts "r - Remover un articulo"
			puts "v - Mostrar todos los articulos"
			puts "m - Marcar un articulo"
			puts "b - Borrar todos los articulos"
			puts "s - Salir de la aplicacion"
			input = gets.chomp

			case input

				when 'a'
					puts "Que deseas agregar?"
					item = gets.chomp
					@list.add_item(item)
					45.times { print "*" }
					puts "\n#{item} ha sido agregado.\n"
					45.times { print "*" }
				when 'r'
					puts "Que numero de articulo desea remover ?"
					index = gets.chomp
					item = @list.remove_item(index.to_i)
					45.times { print "*" }
					puts "\n#{item.text} ha sido removido.\n"
					45.times { print "*" }
				when 'v'
					@list.show_all
				when 'm'
					puts "Que numero de articulo desea marcar ?"
					index = gets.chomp
					item = @list.check_item(index.to_i)
					45.times { print "*" }
					puts "\n#{item.text} ha sido marcado.\n"
					45.times { print "*" }
				when 'b'
					puts "Deseas borrar todos los articulos ? s/n"
					input = gets.chomp
					if input == "s"
						@list.remove_all
					else
						puts "Operacion cancelada"
					end
					
				when 's' 
					break
					else
				puts "Operacion no valida"
			end
		end
		puts "Gracias por usar nuestra aplicacion"
	end

end

ui = ListApp.new
ui.run