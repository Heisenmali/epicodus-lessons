module Train
  def self.all
    DB.exec("SELECT * FROM trains;").to_a
  end

  def self.save(name, uuid)
    DB.exec("INSERT INTO trains (id, name) VALUES ('#{uuid}', '#{name}') RETURNING id;")[0]["id"]
  end

  def self.find(uuid)
    DB.exec("SELECT * FROM trains where id = '#{uuid}';")[0]
  end

  def self.edit(name, uuid)
    DB.exec("UPDATE trains SET name = '#{name}' WHERE id = '#{uuid}';")
  end
end
