class Generator
  def generate (data)
    File.new("Certificat " + data.studentName + ".pdf", "w")
  end
end