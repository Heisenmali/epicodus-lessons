module Train
  def self.all
    DB.exec("SELECT * FROM trains;").to_a
  end
end
