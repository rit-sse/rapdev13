require 'spec_helper'

describe "Projects" do
  describe "GET /profiles/1/projects" do
    it "works! (now write some real specs)" do
      p = Profile.create
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get profile_projects_path p
      response.status.should be(200)
    end
  end
end
