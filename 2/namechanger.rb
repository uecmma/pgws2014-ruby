# -*- encoding: utf-8 -*-

require 'tweetstream'
require 'twitter'

TweetStream.configure do |config|
    config.consumer_key = "?????"
    config.consumer_secret = "?????"
    config.oauth_token = "??????"
    config.oauth_token_secret = "?????"
    config.auth_method = :oauth
end

client = Twitter::REST::Client.new do |config|
    config.consumer_key = "?????"
    config.consumer_secret = "?????"
    config.access_token = "?????"
    config.access_token_secret = "?????"
end

streamclient = TweetStream::Client.new
streamclient.userstream do |status|
    unless status.text.start_with? "RT"
      if status.text.match(/^(.+?)[\s　]*[(（][\s　]*@alstamber[\s　]*[)）].*/)
        name = $1
        if name.length <= 20
          client.favorite(status)
          client.update_profile(:name => name)
          tweet = "@#{status.user.screen_name} #{name}に改名しました"
          client.update(tweet, :in_reply_to_status_id => status.id)
        end
      end
    end
end
