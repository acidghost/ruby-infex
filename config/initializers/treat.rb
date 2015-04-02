Treat.core.language.detect = true
# Treat.core.language.default = :italian
# LANG_DEFAULT = 'it'

LANGS = {
    italian: 'it',
    english: 'en',
    dutch: 'nl'
}

def short_lang(sentence)
  lang = sentence.language
  if lang.class == Array
    lang = LANGS[lang.first]
  else
    lang = LANGS[lang]
  end
  if lang.nil?
    'en'
  else
    lang
  end
end

treat_path = Rails.root.to_s + '/lib/treat'

Treat.paths.bin = treat_path + '/bin/'
Treat.paths.models = treat_path + '/models/'
Treat.paths.tmp = treat_path + '/tmp/'

require 'lingua/stemmer'
Treat::Workers::Inflectors::Stemmers.add(:lingua) do |word, options={}|
  lingua_stemmer = Lingua::Stemmer.new language: LANGS[word.language]
  lingua_stemmer.stem word
end
