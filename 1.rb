# def myself(name, surname, age, occupation)
#   puts "Ben #{name} #{surname} ve yaşım #{age}. Mesleğim ise #{occupation}"
# end
#
# puts myself "Okan", "Binli", "21", "öğrenci"

autoload(:Yukleme, './1_external.rb')

def myself(first_name, last_name, age, occupation)
  profile = <<-PROFILE
  Merhaba ben #{first_name + ' ' + last_name}

  #{age} yaşındayım. #{occupation} işiyle meşgulum.

  Sevgiler
  PROFILE
end

puts "Adınızı girin"
first_name = gets.chomp
puts "Soyadınızı girin"
last_name = gets.chomp
puts "Yaşınızı girin"
age = gets.chomp
puts "Mesleğinizi girin"
occupation = gets.chomp

puts myself first_name, last_name, age, occupation

yukleme = Yukleme.new
