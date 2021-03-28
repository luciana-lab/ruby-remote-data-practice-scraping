require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
#doc = Nokogiri::HTML(open("https://flatironschool.com/"))
#puts doc.css(".headline-260IBN").text.strip
doc = Nokogiri::HTML(html)
courses = doc.css(".tout__label.heading.headline--level-4")

courses.each do |course|
    puts course.text.strip
end

p doc.css(".tout__label.heading.headline--level-4")[0].name
# => "h2"

p doc.css(".tout__label.heading.heading--level-4")[0].attributes 
# => {"class"=>#<Nokogiri::XML::Attr:0x3ff04f8b3754 name="class" value="tout__label heading heading--level-4">} 

