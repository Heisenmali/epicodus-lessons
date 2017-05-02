require 'pg'
require 'securerandom'

module Doctor
  def self.save (args)
    uuid = SecureRandom.uuid
    DB.exec("insert into doctors values ('#{uuid}', '#{args[:name]}') returning id;")
    uuid
  end
end

module Patient

end
