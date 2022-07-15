#alias mkdiruby="ruby /home/ton/chemin/vers/dossier/mkdiruby.rb"

def check_if_user_gave_input
  abort("mkdir: Type folder name") if ARGV.empty?
end

def get_folder_name
  return folder_name = ARGV.join("_")
end

def create_folder
  folder_name = get_folder_name
  Dir.mkdir(folder_name)
  Dir.chdir(folder_name)
end

def create_lib_folder
  Dir.mkdir("lib")
end

def init_rspec_git_init
system('rspec --init')
system('git init')
end

def create_Bundle
  system('bundle init')
  file = File.open('Gemfile', 'w')
  file.puts("source 'https://rubygems.org'")
  file.puts("ruby '2.7.4'")
  file.puts("gem 'rspec'")
  file.puts("gem 'dotenv'")
  file.puts("gem 'pry'")
  file.puts("gem 'nokogiri'")
  file.puts("gem 'rubocop'")
  file.close
  system('bundle install')
end

def create_env
  file = File.open('.env', 'w')
  file.puts('copy key here')
  file.close
end

def create_readme
  file = File.open('README.md', 'w')
  file.puts("Project Ruby")
  file.close
end

def create_git_ignore
  file = File.open('gitignore', 'w')
  file.puts('.env')
  file.close
end

def perform
  check_if_user_gave_input
  create_folder
  create_lib_folder
  create_Bundle
  create_env
  init_rspec_git_init
  create_readme
end
perform