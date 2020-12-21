# require modules here
require 'yaml'
require 'pry'


def load_library(file_path)
  # code goes here
  inside_yaml_file = YAML.load_file(file_path)

  final_hash = inside_yaml_file.each_with_object({}) do |(key, values), hash|
  
    hash[key] = {}
  
    hash[key][:english] = values.shift
    hash[key][:japanese] = values.shift
  end
  final_hash
end

def get_japanese_emoticon(hash, eng_symbol)
  # code goes here
  #hash.each do |word, eng_syms|
   # if hash[word][eng_syms][0] == eng_symbol
    #  puts hash[word][eng_syms][1]
   # end
  #end
end

def get_english_meaning(which_file, jap_symbol)
  # code goes here
  final_hash = load_library(which_file)
  
  japanese_loop = final_hash.each do |sym_name, languages|
    languages.each do |language, symbol|
      #binding.pry
      if symbol == jap_symbol
        return sym_name
      else
        return 
      end
    end
  end
  japanese_loop
end
  

#load_library("./lib/emoticons.yml")
#get_english_meaning("./lib/emoticons.yml", 'o_O')