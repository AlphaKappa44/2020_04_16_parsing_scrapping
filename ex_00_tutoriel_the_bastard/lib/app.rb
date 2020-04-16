# require 'rubygems'
# require 'nokogiri'
# require 'open-uri'

# # page = Nokogiri::HTML(open("index.html"))   
# # puts page.class   # => Nokogiri::HTML::Document

# # page = Nokogiri::HTML(open("http://en.wikipedia.org/"))  

# puts page.class   # => Nokogiri::HTML::Document

# # # require 'rubygems'
# # # require 'nokogiri'
# # # require 'restclient'

# # # page = Nokogiri::HTML(RestClient.get("http://www.google.com/search?q=doughnuts"))   
# # # puts page.class   # => Nokogiri::HTML::Document

# # # puts page.css("title")[0].name   # => title
# # # puts page.css("title")[0].text   # => My webpage

# # puts page.css("title").text   
# # # => My webpage

# # puts page.css("title")[0].name   
# # #=> title 

# # # # set URL to point to where the page exists
# # # page = Nokogiri::HTML(open(PAGE_URL))
# # # links = page.css("a")
# # # puts links.length   # => 6
# # # puts links[0].text   # => Click here
# # # puts links[0]["href"] # => http://www.google.com


# 	end

require 'rubygems'
require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("https://www.google.com/search?q=doughnuts"))
	doc.xpath('//a').each do |node|
	  puts node.text
	end
  puts doc.class   # => Nokogiri::HTML::Document
  # puts doc.name   # => title
puts doc.css("title")[0].text   # => My webpage

