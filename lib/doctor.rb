require 'pg'
require 'securerandom'

module DBE
  def self.reset
    DB.exec("delete from doctors *;")
    DB.exec("delete from patients *;")
    DB.exec("delete from specialities *;")
    DB.exec("insert into specialities values ('83ef45be-7e84-4301-85f7-97e6fdeb0b3e', 'Generalist')")
  end
end

module Doctor
  def self.save (name, spec_id = "83ef45be-7e84-4301-85f7-97e6fdeb0b3e")
    uuid = SecureRandom.uuid
    DB.exec("insert into doctors values ('#{uuid}', '#{name}', '#{spec_id}') returning id")[0]["id"]
  end

  def self.edit (args)
    DB.exec("update doctors set name = '#{args[:new_name]}' where id = '#{args[:doc_id]}'")
  end

  def self.all_patients (uuid)
    DB.exec("select id, name from patients where doctor_id = '#{uuid}'").to_a
  end

  def self.name (uuid)
    DB.exec("select name from doctors where id = '#{uuid}'")[0]["name"]
  end
end

module Patient
  def self.save (args)
    uuid = SecureRandom.uuid
    DB.exec("insert into patients values ('#{uuid}', '#{args[:name]}', '#{args[:doctor_id]}', '#{args[:birthdate]}')")
    uuid
  end
  def self.edit (id, args)
    args.each do |k,v|
      DB.exec("update patients set #{k} = '#{v}' where id = '#{id}'")
    end
  end
  def self.details (id)
    DB.exec("select * from patients where id = '#{id}'")[0]
  end
end

module Speciality
  def self.save (args)
    uuid = SecureRandom.uuid
    DB.exec("insert into specialities values ('#{uuid}', '#{args[:name]}')")
    uuid
  end

  def self.id_by_name (name)
    DB.exec("select id from specialities where name = '#{name}'")[0]["id"]
  end
end
