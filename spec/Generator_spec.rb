require 'rspec'
require "FileUtils"

require 'GeneratorData'
require 'Generator'

Rspec.describe "GenerationOfCertificate" do
  it 'generate a certificate with the student name' do
    
    generator = Generator.new
    data = GeneratorData.new("John Doe")
   
    generator.generate(data)
                    
    result = File.exists?("Certificate John Doe.pdf")
  
    FileUtils.rm_f("Certificate John Doe.pdf")
    expect(result).to eq true
  end
end