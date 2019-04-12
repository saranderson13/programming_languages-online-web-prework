require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      binding.pry
      new_hash[language[0]] = language[1]
      new_hash[language[0]][:style] = []
    end
  end
  
  languages.each do |style| 
    style[1].each { |language| new_hash[language[0]][:style] << style[0] } 
  end
  
  new_hash
end


