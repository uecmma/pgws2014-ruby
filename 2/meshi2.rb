require 'json'

open('shop_list.json') do |io|
    shop_list = JSON.load(io)
      puts shop_list.sample
end
