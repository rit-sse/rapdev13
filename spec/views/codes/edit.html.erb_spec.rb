require 'spec_helper'

describe "codes/edit" do
  before(:each) do
    @code = assign(:code, stub_model(Code))
  end

  it "renders the edit code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", code_path(@code), "post" do
    end
  end
end
