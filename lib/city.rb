require 'securerandom'

module City
  def self.all
    DB.exec("SELECT * FROM cities;").to_a
  end

  def self.timetable
    stuff = DB.exec("SELECT * FROM trains_cities;")[0]
  end

  def self.save(name)
    uuid = SecureRandom.uuid
    DB.exec("INSERT INTO cities (id, name) VALUES ('#{uuid}', '#{name}') RETURNING id;")[0]["id"]
  end

  def self.find(uuid)
    DB.exec("SELECT * FROM cities where id = '#{uuid}';")[0]
  end

  def self.edit(name, uuid)
    DB.exec("UPDATE cities SET name = '#{name}' WHERE id = '#{uuid}';")
  end

  def self.delete(uuid)
    DB.exec("DELETE FROM cities WHERE id = '#{uuid}';")
  end

  def self.city_trains(uuid)
    DB.exec("SELECT train_id FROM trains_cities WHERE city_id = '#{uuid}';").to_a
  end
end
