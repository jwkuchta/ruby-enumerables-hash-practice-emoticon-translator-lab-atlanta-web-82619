require "yaml"
emoticons = YAML.load_file('./lib/emoticons.yml')

def load_library(file_path)
  library = YAML.load_file(file_path)
  hash = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, array|
      hash["get_meaning"][array[1]] = meaning
      hash["get_emoticon"][array[0]] = array[1]
  end
  hash
end


def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  if library["get_emoticon"].has_key?(emoticon)
    return library["get_emoticon"](emoticon)

  else
    "Sorry, that emoticon was not found"
    end
  end
end


def get_english_meaning
  # code goes here
end

puts get_japanese_emoticon("./lib/emoticons.yml", ":)")
