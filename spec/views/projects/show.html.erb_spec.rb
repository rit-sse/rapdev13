require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile))
    @project = assign(:project, stub_model(Project))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
