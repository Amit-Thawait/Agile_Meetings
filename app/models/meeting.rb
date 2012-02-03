class Meeting < ActiveRecord::Base
  belongs_to :meeting_type
  validates :name, :presence => true
  validates :name, :uniqueness => true
end
