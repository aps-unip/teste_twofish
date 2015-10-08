require 'twofish'

key = '1234567890123456'
tf = Twofish.new(key, :padding => :zero_byte)
texto_cripto = tf.encrypt('Maconha tem THC, Paulo fuma maconha, logo Paulo tem THC')


puts "Texto criptografado"
p texto_cripto

puts ' '

puts "Texto descriptografado"
texto_descri = tf.decrypt(texto_cripto)

p texto_descri