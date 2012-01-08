require 'spec_helper'

describe "attendees/edit.html.erb" do
  before(:each) do
    @attendee = assign(:attendee, stub_model(Attendee,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit attendee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attendees_path(@attendee), :method => "post" do
      assert_select "input#attendee_name", :name => "attendee[name]"
      assert_select "input#attendee_email", :name => "attendee[email]"
    end
  end
end
