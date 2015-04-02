# All commands are prefixed with "treat:".
namespace :treat do

  # Prints the current version of Treat.
  # Syntax: rake treat:version
  task :version do
    puts Treat::VERSION
  end

  # Installs a language pack (default to english).
  # A language pack is a set of gems, binaries and
  # model files that support the various workers 
  # that are available for that particular language.
  # Syntax: rake treat:install (installs english)
  # - OR -  rake treast:install[some_language]
  task :install, [:language] do |t, args|
    language = args.language || 'english'
    Treat::Core::Installer.install(language)
  end

  # This task manually installs the stanford-core-nlp
  # stemmers, taggers, tokenizers, etc.
  task :manual_install do
    sh 'sh ' + Rails.root.to_s + '/lib/install_treat.sh ' + Rails.root.to_s
  end

end