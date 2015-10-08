# encoding: UTF-8

require 'twofish'
require 'base64'

key = '1234567890123456'
tf = Twofish.new(key, :mode => :ecb, :padding => :zero_byte)
texto_cripto = tf.encrypt('Maconha tem THC, Paulo fuma maconha, logo Paulo tem THC')


puts "Texto criptografado"

base = Base64.encode64(texto_cripto)
puts base


puts ' '

puts "Texto descriptografado"
texto_descri = tf.decrypt(texto_cripto)

p texto_descri