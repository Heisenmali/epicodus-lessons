require 'rspec'
require 'doctor'
require 'pry'
require 'pg'

DB = PG.connect({:dbname => 'doctor_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("delete from doctors *;")
    DB.exec("delete from patients *;")
    # DB.exec("delete from specialties *;")
  end
end

describe 'Doctor' do
  describe '.save' do
    it 'creates a new doctor in the database without a speciality' do
      uuid = Doctor.save({:name => "Phouse"})
      expect(DB.exec("select * from doctors")[0]["id"]).to eq uuid
    end
  end
end

describe 'Patient' do

end
