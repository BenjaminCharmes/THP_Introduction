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

def like_25_last_bonjour(client)
  tweets_to_like = client.search("#bonjour_monde", result_type: "recent").take(25)
  client.favorite(tweets_to_like)
end

def perform
  client = login_twitter
  like_25_last_bonjour(client)
end 

perform