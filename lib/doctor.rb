require 'pg'
require 'securerandom'

module Doctor
  def self.save (args)
    uuid = SecureRandom.uuid
    DB.exec("insert into doctors values ('#{uuid}', '#{args[:name]}') returning id;")
    uuid
  end

  def self.edit (args)
    DB.exec("update doctors set name = '#{args[:new_name]}' where id = '#{args[:id]}'")
  end

  def self.all_patients (uuid)
    DB.exec("select id, name from patients where doctor_id = '#{uuid}'").to_a
  end
end

module Patient
  def self.save (args)
    uuid = SecureRandom.uuid
    DB.exec("insert into patients values ('#{uuid}', '#{args[:name]}', '#{args[:birthdate]}', '#{args[:doctor_id]}')")
    uuid
  end

  def self.name (uuid)
    DB.exec("select name from patients where id = '#{uuid}'")
  end
end
