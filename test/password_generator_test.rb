require 'test_helper'

class PasswordGeneratorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  test "should load words" do
    assert_equal PasswordGenerator::WORDS, (IO.readlines(File.join File.dirname(__FILE__), '../lib', 'words.txt')).each { |w| w.chop! }
  end
  
  test "should generate a password" do
    password = PasswordGenerator.generate_password!
    warn password
    assert_not_nil password
  end
end
