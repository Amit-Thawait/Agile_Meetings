require 'spec_helper'

describe MeetingType do
  it "should get all possible meeting types" do
    @meeting_type = Factory(:meeting_type)
    MeetingType.get_all_meeting_types()[0][:id].should == 1
    MeetingType.get_all_meeting_types()[0][:name].should == 'syncup'
  end
end
