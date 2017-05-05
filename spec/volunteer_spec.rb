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

  describe '.add_volunteer' do
    it 'will allow the user to add a project to a volunteer' do
      name = "Chopin"
			volunteer_uuid = Volunteer.save(name)
      project_name = "Allen Stone"
      project_uuid = Project.save(project_name)
      Volunteer.add_project(volunteer_uuid, project_uuid)
      expect(Volunteer.all[0]["project_id"]).to eq project_uuid
    end
  end

  describe '.project_name' do
		it 'will return the name of the project for volunteer' do
			name = "Bach"
			volunteer_uuid = Volunteer.save(name)
      project_name = "Allen Stone"
      project_uuid = Project.save(project_name)
			expect(Volunteer.project_name(project_uuid)[0]["name"]).to eq project_name
		end
	end

	describe '.find' do
		it 'will find a volunteer from the database using id' do
			name = "Karnivool"
			volunteer_uuid = Volunteer.save(name)
			expect(Volunteer.find(volunteer_uuid)[0]["name"]).to eq name
		end
	end
end

