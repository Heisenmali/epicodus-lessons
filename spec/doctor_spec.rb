require 'rspec'
require 'doctor'
require 'pry'
require 'pg'

DB = PG.connect({:dbname => 'doctor_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("delete from doctors *;")
    DB.exec("delete from patients *;")
    DB.exec("delete from specialities *;")
  end
end

describe 'Doctor' do
  describe '.save' do
    it 'creates a new doctor in the database without a speciality' do
      uuid = Doctor.save({:name => "Phouse"})
      expect(DB.exec("select * from doctors")[0]["id"]).to eq uuid
    end
  end
  describe '.edit' do
    it "lets the user change a doctor's name" do
      uuid = Doctor.save({:name => "Phouse"})
      Doctor.edit({:id => uuid, :new_name => "Dr. Mouse"})
      expect(DB.exec("select * from doctors where id = '#{uuid}'")[0]["name"]).to eq "Dr. Mouse"
    end
  end
  describe '.all_patients' do
    it "returns a list of a doctor's patients" do
      uuid = Doctor.save({:name => "Phouse"})
      patients = Doctor.all_patients(uuid)
      expect(patients.ntuples).to eq 0
    end
  end
end

describe 'Patient' do
  describe '.save' do
    it "creates a new patient and assigns it to a doctor" do
      doc_id = Doctor.save({:name => "Faust"})
      patient_id = Patient.save({:name => "Sickman", :birthdate => "1802-03-02", :doctor_id => doc_id})
      expect(DB.exec("select * from patients where id = '#{patient_id}'")[0]["name"]).to eq "Sickman"
    end
  end
end
