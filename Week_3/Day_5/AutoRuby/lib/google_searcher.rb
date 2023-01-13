# google_searcher.rb

require 'launchy'

# User put an ARGV

ARGV

# If no ARGV put an error message
def check_if_user_gave_input
  abort("search: missing input") if ARGV.empty?
end

# Build an URL on google with ARGV
def get_url
  return url = "https://www.google.com/search?q=" + ARGV.join('+')
end
# Open newtab on google with URL
def search_url(url)
  Launchy.open(url)
end 

# Perform
def perform
  check_if_user_gave_input
  url = get_url
  search_url(url)
end 

perform
  
