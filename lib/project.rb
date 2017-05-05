module Project
  def self.all
    DB.exec("SELECT * FROM projects;").to_a
  end

  def self.save(name)
    uuid = SecureRandom.uuid
    DB.exec("INSERT INTO projects (id, name) VALUES ('#{uuid}', '#{name}') RETURNING id;")[0]["id"]
  end
end
