module Project
  def self.all
    DB.exec("SELECT * FROM projects;").to_a
  end

  def self.save(name)
    uuid = SecureRandom.uuid
    DB.exec("INSERT INTO projects (id, name) VALUES ('#{uuid}', '#{name}') RETURNING id;")[0]["id"]
  end

  def self.edit(new_name, uuid)
    DB.exec("UPDATE projects SET name = '#{new_name}' WHERE id = '#{uuid}';")  
  end

  def self.delete(uuid)
    DB.exec("DELETE FROM projects WHERE id = '#{uuid}';")
  end
end
