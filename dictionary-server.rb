require "sinatra"
require "haml"

get "/" do
  "Hello"
  path = "/usr/share/dict/words"
  random_word = File.readlines(path).sample
  opts = { :locals => { :word => random_word } }
  haml :index, opts
end