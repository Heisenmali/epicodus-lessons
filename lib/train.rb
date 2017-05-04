require 'securerandom'

module Train
  def self.all
    DB.exec("SELECT * FROM trains;").to_a
  end

  def self.save(name)
    uuid = SecureRandom.uuid
    DB.exec("INSERT INTO trains (id, name) VALUES ('#{uuid}', '#{name}') RETURNING id;")[0]["id"]
  end

  def self.find(uuid)
    DB.exec("SELECT * FROM trains where id = '#{uuid}';")[0]
  end

  def self.edit(name, uuid)
    DB.exec("UPDATE trains SET name = '#{name}' WHERE id = '#{uuid}';")
  end

  def self.delete(uuid)
    DB.exec("DELETE FROM trains WHERE id = '#{uuid}';")
  end

  def self.train_cities(uuid)
    DB.exec("SELECT city_id, stop_time FROM trains_cities WHERE train_id = '#{uuid}';").to_a
  end

  def self.add_train_cities(train_uuid, city_uuid_a, stop_time_a)
    city_uuid_a.each_with_index do |city_uuid, index|
      DB.exec("INSERT INTO trains_cities (train_id, city_id, stop_time) VALUES ('#{train_uuid}', '#{city_uuid}', '#{stop_time_a[index]}');")
    end
  end
end
