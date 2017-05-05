module Volunteer
  def self.all
    DB.exec("SELECT * FROM volunteers;").to_a
  end

  def self.save(name)
    uuid = SecureRandom.uuid
    DB.exec("INSERT INTO volunteers (id, name) VALUES ('#{uuid}', '#{name}') RETURNING id;")[0]["id"]
  end

  def self.edit(new_name, uuid)
    DB.exec("UPDATE volunteers SET name = '#{new_name}' WHERE id = '#{uuid}';")  
  end

  def self.delete(uuid)
    DB.exec("DELETE FROM volunteers WHERE id = '#{uuid}';")
  end

  def self.add_project(uuid, project_uuid)
    DB.exec("UPDATE volunteers SET project_id = '#{project_uuid}' WHERE id = '#{uuid}';")
  end

  def self.project_name(project_id)
    DB.exec("SELECT projects.name FROM projects WHERE '#{project_id}' = projects.id;")
  end
end
