require 'spec_helper'

describe "meetings/show.html.erb" do
  before(:each) do
    @meeting = assign(:meeting, stub_model(Meeting,
      :name => "Name",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
