class Attendee < ActiveRecord::Base
  has_and_belongs_to_many :meeting_types

  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :email, :presence => true
  validates :email, :uniqueness => true

  def self.get_all_attendees
    find(:all)
  end
end
