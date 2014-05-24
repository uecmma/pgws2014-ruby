require 'rdiscount'

markdown = RDiscount.new('Hello, World!')
print markdown.to_html
