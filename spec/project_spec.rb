require "unit_helper_spec"


describe 'Project' do
	describe '.all' do
		it 'will return an empty array for the all method' do
			expect(Project.all).to eq []
		end
	end

	describe '.save' do
		it 'will save a project to the Database' do
			name = "TTNG"
			project_uuid = Project.save(name)
			expect(Project.all[0]["id"]).to eq project_uuid
		end
	end

	describe '.edit' do
		it 'will edit a project in the database' do
			name = "Vasudeva"
			new_name = "CHON"
			project_uuid = Project.save(name)
			Project.edit(new_name, project_uuid)
			expect(Project.all[0]["id"]).to eq project_uuid
			expect(Project.all[0]["name"]).to eq new_name
		end
	end

	describe '.delete' do
		it 'will delete a project from the database' do
			name = "Karnivool"
			project_uuid = Project.save(name)
			Project.delete(project_uuid)
			expect(Project.all).to eq []
		end
	end

	describe '.find' do
		it 'will find a project from the database using id' do
			name = "Karnivool"
			project_uuid = Project.save(name)
			expect(Project.find(project_uuid)[0]["name"]).to eq name
		end
	end

	describe '.find_volunteers' do
		it 'will find a all volunteers for that project' do
			name = "Karnivool"
			project_uuid = Project.save(name)
			volunteer_name = "Brian May"
			volunteer_uuid = Volunteer.save(volunteer_name)
			Volunteer.add_project(volunteer_uuid, project_uuid)
			expect(Project.find_volunteers(project_uuid)[0]["id"]).to eq volunteer_uuid
		end
	end
end


