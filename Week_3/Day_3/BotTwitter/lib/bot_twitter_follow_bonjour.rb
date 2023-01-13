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

def follow_20_last_bonjour(client)

  tweet_to_follow = client.search("#bonjour_monde").take(200)
  all_handle_to_follow = []
  tweet_to_follow.each do |tweet|
  all_handle_to_follow.push(tweet.user.screen_name) 
  end

  handle_to_follow = all_handle_to_follow.uniq - ["BenjaminCharmes"]

  client.follow(handle_to_follow)
end

def perform
  client = login_twitter
  follow_20_last_bonjour(client)
end 

perform