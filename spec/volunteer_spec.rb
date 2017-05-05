require 'unit_helper_spec'


describe 'Volunteer' do
	describe '.all' do
		it 'will return an empty array for the all method' do
			expect(Volunteer.all).to eq []
		end
	end

	describe '.save' do
		it 'will save a volunteer to the Database' do
			name = "Bach"
			volunteer_uuid = Volunteer.save(name)
			expect(Volunteer.all[0]["id"]).to eq volunteer_uuid
		end
	end

	describe '.edit' do
		it 'will edit a volunteer in the database' do
			name = "Beethoven"
			new_name = "Busoni"
			volunteer_uuid = Volunteer.save(name)
			Volunteer.edit(new_name, volunteer_uuid)
			expect(Volunteer.all[0]["id"]).to eq volunteer_uuid
			expect(Volunteer.all[0]["name"]).to eq new_name
		end
	end

	describe '.delete' do
		it 'will delete a volunteer from the database' do
			name = "Brahms"
			volunteer_uuid = Volunteer.save(name)
			Volunteer.delete(volunteer_uuid)
			expect(Volunteer.all).to eq []
		end
	end
end