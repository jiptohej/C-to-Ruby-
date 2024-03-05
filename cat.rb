# cat.rb 
$stdin.each {|linea| $stdout.puts linea}

# En este sencillo ejemplo (tomado de Carlson y Richardson) 
# vemos la utilización de las variables globales de Ruby,
# las cuales deben empezar con el símbolo: $

# En este caso se trata de las variables $stdin
# y $stdout, que representan la entrada y la salida estándar
# y son dos de las variables predefinidas en ruby.
#
# Se trata de un ejemplo simple,
# ya que no se tienen en cuenta redireccionamientos
# ni otros aspectos que trata muy bien 
# el programa cat.c
#
