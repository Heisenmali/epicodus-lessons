require "unit_helper_spec"



describe 'Project' do
	describe '.all' do
		it 'will return an empty array for the all method' do
			expect(Project.all).to eq []
		end
	end

	describe '.save' do
		it 'will save a project to the Database' do
			name = "test project"
			project_uuid = Project.save(name)
			expect(Project.all[0]["id"]).to eq project_uuid
		end
	end
end


