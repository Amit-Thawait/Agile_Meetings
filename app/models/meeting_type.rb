class MeetingType < ActiveRecord::Base
  has_and_belongs_to_many :attendees
  
  validates :name, :presence => true
  validates :name, :uniqueness => true

  def self.get_all_meeting_types
    find(:all,:select => ['id','name'] )
  end
end
