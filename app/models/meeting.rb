class Meeting < ActiveRecord::Base
  belongs_to :meeting_type
  validates :name, :presence => true
  validates :name, :uniqueness => true

  def meeting_attendees_list
    list= []
    list = MeetingType.find(self.meeting_type_id).attendees.collect {|attendee| attendee.email }.join(',')
  end
end
