require 'spec_helper'

describe "meetings/edit.html.erb" do
  before(:each) do
    @meeting = assign(:meeting, stub_model(Meeting,
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders the edit meeting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meetings_path(@meeting), :method => "post" do
      assert_select "input#meeting_name", :name => "meeting[name]"
      assert_select "input#meeting_type", :name => "meeting[type]"
    end
  end
end
