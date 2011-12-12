class MeetingType < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.get_all_meeting_types
    find(:all,:select => ['id','name'] )
  end
end
