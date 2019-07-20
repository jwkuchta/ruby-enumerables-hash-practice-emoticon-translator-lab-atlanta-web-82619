require "yaml"
emoticons = YAML.load_file('./lib/emoticons.yml')

def load_library(file_path)
  library = YAML.load_file(file_path)
  hash = {}

  library.each do |description, array|
    array.each do |e_emoticon, j_emotiocon|
      if !hash.has_key?("get_meaning")
        hash["get_meaning"] = {}
      end
      if !hash["get_meaning"].has_key?(e_emoticon)
        hash["get_meaning"]["#{e_emoticon}"] = description[0]
      end
      if !hash.has_key?("get_emoticon")
        hash["get_emoticon"] = {}
      end
      if !hash["get_emoticon"].has_key?(j_emoticon)
        hash["get_emoticon"]["#{j_emoticon}"] = description[1]
      end
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
