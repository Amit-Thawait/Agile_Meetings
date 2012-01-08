require 'spec_helper'

describe "attendees/show.html.erb" do
  before(:each) do
    @attendee = assign(:attendee, stub_model(Attendee,
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
