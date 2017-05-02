require 'rspec'
require 'doctor'
require 'pry'
require 'pg'

DB = PG.connect({:dbname => 'doctor_test'})

RSpec.configure do |config|
  config.after(:each) do
    DBE.reset
  end
end

describe 'Doctor' do
  describe '.save' do
    it 'creates a new doctor in the database without a speciality' do
      uuid = Doctor.save("Phouse")
      expect(DB.exec("select * from doctors")[0]["id"]).to eq uuid
    end

    it 'allows an administrator to assign a doctor a speciality' do

      spec_id = Speciality.save({:name => "Mousetometrist"})
      uuid = Doctor.save("Phouse", spec_id)
      expect(DB.exec("select * from doctors")[0]["specialty_id"]).to eq spec_id
    end
  end


  describe '.edit' do
    it "lets the user change a doctor's name" do
      doc_id = Doctor.save("Phouse")
      Doctor.edit({:doc_id => doc_id, :new_name => "Dr. Mouse"})
      expect(DB.exec("select * from doctors where id = '#{doc_id}'")[0]["name"]).to eq "Dr. Mouse"
    end
  end

  describe '.all_patients' do
    it "returns an empty list if a doctor has no patients" do
      doc_id = Doctor.save("Phouse")
      patients = Doctor.all_patients(doc_id)
      expect(patients.length).to eq 0
    end

    it "returns all patient's details for a specific doctor" do
      doc_id = Doctor.save("Phouse")
      Patient.save({:name => "Mikkson", :doctor_id => doc_id, :birthdate => "2002-03-02"})
      patients = Doctor.all_patients(doc_id)
      expect(patients[0]["name"]).to eq "Mikkson"
    end
  end

  describe '.name' do
    it "returns the name of a patient's doctor" do
      doc_id = Doctor.save("Phouse")
      patient_id = Patient.save({:name => "Sickman", :doctor_id => doc_id, :birthdate => "1802-03-02"})
      expect(Doctor.name(doc_id)).to eq "Phouse"
    end
  end


end

describe 'Patient' do
  describe '.save' do
    it "creates a new patient and assigns it to a doctor" do
      doc_id = Doctor.save("Faust")
      patient_id = Patient.save({:name => "Sickman", :doctor_id => doc_id, :birthdate => "1802-03-02"})
      expect(DB.exec("select * from patients where id = '#{patient_id}'")[0]["name"]).to eq "Sickman"
    end
  end

  describe '.edit' do
    it 'lets the doctor edit a patients details' do
      doc_id = Doctor.save("Faust")
      patient_id = Patient.save({:name => "Sickman", :doctor_id => doc_id, :birthdate => "1802-03-02"})
      Patient.edit(patient_id, {:name => "Gretchen", :birthdate => "1830-02-09"})
      expect(DB.exec("select name from patients where id = '#{patient_id}'")[0]["name"]).to eq "Gretchen"
    end
  end

  describe '.details' do
    it "returns all information on a specific patient" do
      doc_id = Doctor.save("Faust")
      patient_id = Patient.save({:name => "Gretchen", :doctor_id => doc_id, :birthdate => "1802-03-02"})
      patient_details = Patient.details(patient_id)
      expect(patient_details["name"]).to eq "Gretchen"
    end
  end
end

describe 'Speciality' do
  describe '.save' do
    it "creates a new speciality for a doctor or doctors" do
      spec_id = Speciality.save({:name => "Optimeterist"})
      expect(DB.exec("select * from specialities")[1]["name"]).to eq "Optimeterist"
    end
  end

  describe '.get_by_name' do
    it "returns the unique identifier for a specific medical speciality" do
      spec_id = Speciality.save({:name => "Optimeterist"})
      expect(Speciality.id_by_name("Optimeterist")).to eq spec_id
    end
  end
end
