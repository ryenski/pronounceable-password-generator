# PasswordGenerator
class PasswordGenerator
  WORDS = (IO.readlines(File.join File.dirname(__FILE__), 'words.txt')).each { |w| w.chop! }
  
  class << self
    def random_pronouncable_password(options={})
      options={
        :rand_seed => 999
      }.update(options)
      words = WORDS.dup
      [words.delete_at(rand(words.length)), rand(options[:rand_seed]), words[rand(words.length)]].join("-")
    end
    alias_method :generate_password!, :random_pronouncable_password
  end
end