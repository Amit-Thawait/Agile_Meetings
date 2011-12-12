require 'spec_helper'

describe MeetingType do
#  pending "add some examples to (or delete) #{__FILE__}"

  it "should get all possible meeting types" do
    meeting_type1 = Factory(:meeting_type)
    meeting_type2 = Factory(:meeting_type)
    meeting_type3 = Factory(:meeting_type)
    MeetingType.all.count == 3

#    The above test can also be written as :-
#    meeting_type = mock_model(MeetingType)
#    MeetingType.stub!(:find).and_return(meeting_type)

  end
end
