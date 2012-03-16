require 'spec_helper'

describe Attendee do
  it "should fetch all the attendees present" do
    @attendee = Factory(:attendee)
    attendee = Attendee.get_all_attendees()
    attendee[0][:name].should == 'ekta'
    attendee[0][:email].should == 'ekta.v@gmail.com'    
    attendee.count.should == 1
  end
end
