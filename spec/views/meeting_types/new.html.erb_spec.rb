require 'spec_helper'

describe "meeting_types/new.html.erb" do
  before(:each) do
    assign(:meeting_type, stub_model(MeetingType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new meeting_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meeting_types_path, :method => "post" do
      assert_select "input#meeting_type_name", :name => "meeting_type[name]"
    end
  end
end
