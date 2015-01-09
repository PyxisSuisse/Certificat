class Generator
  def generate (data)
    File.new("Certificate " + data.studentName + ".pdf", "w")
  end
end