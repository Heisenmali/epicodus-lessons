require 'pg'
require 'securerandom'

module Doctor
  def self.save (args)
    uuid = SecureRandom.uuid
    DB.exec("insert into doctors values ('#{uuid}', '#{args[:name]}') returning id;")
    uuid
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
