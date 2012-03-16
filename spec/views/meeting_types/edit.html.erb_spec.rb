require 'spec_helper'

describe "meeting_types/edit.html.erb" do
  before(:each) do
    @meeting_type = assign(:meeting_type, stub_model(MeetingType,
      :name => "MyString"
    ))
  end

  it "renders the edit meeting_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meeting_types_path(@meeting_type), :method => "post" do
      assert_select "input#meeting_type_name", :name => "meeting_type[name]"
    end
  end
end
