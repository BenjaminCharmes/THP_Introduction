# ligne très importante qui appelle la gem.
require 'twitter'

# n'oublie pas les lignes pour Dotenv ici…
require 'dotenv'
Dotenv.load

# quelques lignes qui appellent les clés d'API de ton fichier .env
def login_twitter
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
  return client 
end


def follow_and_like_stream(client)
  client.filter:track("#bonjour_monde") do |tweet|
    if tweet.is_a?(Twitter::Tweet)
      client.favorite(tweet)
      unless "#{tweet.user.screen_name}" == "BenjaminCharmes"
        client.follow("#{tweet.user.screen_name}")
      end
    end 
      puts "[#{Time.now}] Like: #{tweet}"
      puts "[#{Time.now}] Following: #{tweet.user.screen_name}"
      puts ""
  end 
end

# ruby lib/bot_twitter_like_and_follow.rb 
# lib/bot_twitter_like_and_follow.rb:21: syntax error, unexpected '(', expecting `end'
# client.filter:track("#bonjour_monde") do |tweet|
# lib/bot_twitter_like_and_follow.rb:21: syntax error, unexpected ')', expecting `end'
# ....filter:track("#bonjour_monde") do |tweet|
# lib/bot_twitter_like_and_follow.rb:32: syntax error, unexpected `end', expecting end-of-input

def perform
  client = login_twitter
  follow_and_like_stream(client)
end 

perform