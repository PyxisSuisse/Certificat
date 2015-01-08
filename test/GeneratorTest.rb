require 'test/unit'
require "FileUtils"
require 'GeneratorData'
require 'Generator'

class GeneratorTest < Test::Unit::TestCase
    def test_can_generate_a_file_from_data
      generator = Generator.new
      data = GeneratorData.new("John Doe")

      generator.generate(data)
                 
      assert_equal true, File.exists?("Certificat John Doe.pdf")
      FileUtils.rm_f("Certificat John Doe.pdf")
    end
end
