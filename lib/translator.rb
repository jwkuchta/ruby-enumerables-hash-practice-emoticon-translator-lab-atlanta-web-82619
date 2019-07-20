require "yaml"
emoticons = YAML.load_file('./lib/emoticons.yml')

def load_library(file_path)
  library = YAML.load_file(file_path)
  hash = {}
  library.each do |description, array|
    if !hash.has_key?("get_meaning")
      hash["get_meaning"] = {}
    end
    

      if !hash["get_meaning"].has_key?(emoticon[0])
        hash["get_meaning"][emoticon[0]] = 
    
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
