require 'rubygems'
require 'open-uri'
require 'nokogiri'

# scrapping des noms de devises
puts "Nous allons scrapper les noms des devises:"
crypto_names = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	crypto_names.xpath('//tr[*]/td[2]').each do |node|
		puts node.text
		puts "Les crypto_names sont scrapées"
end

# Array des noms de devises
puts "nous allons en faire un array"
crypto_names_array = [crypto_names]
"Array ok"

# Scrapping des devises
puts "Nous allons scrapper les devises"
crypto_prices = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
crypto_prices.xpath('//tr[*]/td[5]').each do |node|
	puts node.text
	puts "Les crypto_prices sont scrapés"
end

# Array des devises
puts "Nous allons en faire un autre array"
crypto_prices_array = [crypto_prices]
puts "array ok"

puts "Nous allons faire un hash avec tout ça:"
# Hash de cryptoscrapping
cryptoscrapper = Hash[crypto_names_array.zip(crypto_prices_array.map)]
puts 	cryptoscrapper

puts "Voilà voilà!"

  # puts crypto_names_array.class   # => Nokogiri::HTML::Document
  # puts doc.name   # => title
# puts doc.css("title")[0].text   # => My webpage


# # récupérer les devises
# devises_array = [/html/body/div[1]/div/div[2]/div[1]/div[1]/div/div[2]/div[3]/div/table/tbody/tr[1]/td[5]/a]

# # prix
# cours_array = []
 
# # Associe chaque devise à son montant pour obtenir un hash:
#  puts cryptoscrapper = Hash[devises.zip(prix.map)]

