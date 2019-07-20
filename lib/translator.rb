require "yaml"
emoticons = YAML.load_file('./lib/emoticons.yml')

def load_library(file_path)
  library = YAML.load_file(file_path)
  hash = {}
  library.each do |meaning, array|
    if !hash.has_key?("get_meaning")
      hash["get_meaning"] = {}
    end
    if !hash["get_meaning"].has_key?(array[1])
      hash["get_meaning"][array[1]] = meaning
    end
    if !hash.has_key?("get_emoticon")
      hash["get_emoticon"] = {}
    end
    if !hash["get_emoticon"].has_key?(array[0])
      hash["get_emoticon"][array[0]] = array[1]
    end
  end
  hash
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
