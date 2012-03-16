require 'spec_helper'

describe "meeting_types/show.html.erb" do
  before(:each) do
    @meeting_type = assign(:meeting_type, stub_model(MeetingType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
