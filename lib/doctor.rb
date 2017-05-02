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
end

module Patient

end
