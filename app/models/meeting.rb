class Meeting < ActiveRecord::Base
  belongs_to :meeting_type
  
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :meeting_type_id, :presence => true
  validates :agenda, :presence => true
  validates :meeting_date , :presence => true
  validates :start_time , :presence => true
  validates :end_time , :presence => true

  def meeting_attendees_list
    list= []
    list = MeetingType.find(self.meeting_type_id).attendees.collect {|attendee| attendee.email }.join(',')
  end
end
