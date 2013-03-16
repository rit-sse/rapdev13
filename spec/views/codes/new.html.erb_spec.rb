require 'spec_helper'

describe "codes/new" do
  before(:each) do
    assign(:code, stub_model(Code).as_new_record)
  end

  it "renders new code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", codes_path, "post" do
    end
  end
end
