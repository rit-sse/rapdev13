require 'spec_helper'

describe "codes/index" do
  before(:each) do
    assign(:codes, [
      stub_model(Code),
      stub_model(Code)
    ])
  end

  it "renders a list of codes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
