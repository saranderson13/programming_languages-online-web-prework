require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      new_hash[language] = type_hash
      new_hash[language][:style] = []
    end
  end
  languages.each do |style, language_hash| 
    language_hash.each { |language, type_hash| new_hash[language][:style] << style } 
  end
  
  new_hash
end


