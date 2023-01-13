# create_ruby_folder.rb

# User put an ARGV

ARGV

# If no ARGV put an error message
def check_if_user_gave_input
  abort("mkdiruby: missing input") if ARGV.empty?
end

# Create a folder with ARVG label
def create_folder
  folder_name = ARGV.first
  Dir.mkdir(folder_name)
  Dir.chdir(folder_name)
end 

# Create Gemfile
def create_gemfile
  gem_file = File.open("Gemfile", "w")
  gem_file.puts('source "https://rubygems.org"')
  gem_file.puts("ruby '3.0.0'")
  gem_file.puts("gem 'rspec'")
  gem_file.puts("gem 'dotenv'")
  gem_file.puts("gem 'pry'")
  gem_file.puts("gem 'rubocop'")
  gem_file.close
end 

# Create lib folder
def create_lib_folder
  Dir.mkdir('lib')
end 

# Git init
def git_init
  system("git init")
end

# Create .env
def create_env
  env_file = File.open(".env", "w")
  env_file.close
end 

# Create .gitignore and puts .env inside
def create_gitignore
  gitignore_file = File.open(".gitignore", "w")
  gitignore_file.puts(".env")
  gitignore_file.close
end 

# rspec --init
def rspec_init
  system("rspec --init")
end

# Create README.md with Ruby program inside
def create_readme
  readme_file = File.open("README.md", "w")
  readme_file.puts("This is a Ruby program")
end

# Perform
def perform
  check_if_user_gave_input
  create_folder
  create_gemfile
  create_lib_folder
  git_init
  create_env
  create_gitignore
  rspec_init
  create_readme
end 

perform