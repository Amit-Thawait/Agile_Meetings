require 'spec_helper'

describe "meetings/index.html.erb" do
  before(:each) do
    assign(:meetings, [
      stub_model(Meeting,
        :name => "Name",
        :type => "Type"
      ),
      stub_model(Meeting,
        :name => "Name",
        :type => "Type"
      )
    ])
  end

  it "renders a list of meetings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
