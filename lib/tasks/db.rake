namespace :db do

  desc "populate Attendees"
  task :populate_attendees => [:environment] do
    Attendee.delete_all
    attendee = ['Yash','Ankit','Ankita','Manohar','Karan','Ashish','Himanshu','Dinesh','Manasi','Amit','Ankur','Niranjan','Ekta','Doel','Pratibha','Lakshmi']
    attendee.each do |ct|
      Attendee.create(:name => "#{ct}" ,:email => "#{ct}@gmail.com")
    end
  end

  desc "populate meeting_types"
  task :populate_meeting_types => [:environment] do
    MeetingType.delete_all
    meeting_type = ['Ruby Pool Meeting','Support Meeting','MFC Meeting']
    meeting_type.each do |type|
      MeetingType.create(
        :name => "#{type}"
      )
    end
  end
 
  desc "populate meetings"
  task :populate_meetings => [:environment] do
    Meeting.delete_all
    #    meetings = ["Meeting for Agile conf","WoW meeting","Ruby Sync Meeting"]
    #    attendees = Attendee.all
    #    meeting_types = MeetingType.all
    #    attendees.each do |attendee|
    #      meeting_types.each do |meeting_type|
    #        meetings.each do |meeting|
    #          Meeting.create(
    #            :name => meeting,
    #            :meeting_type_id => meeting_type.id,
    #            :description => "This is the description of #{meeting}",
    #            :meeting_date => Date.today,
    #            :start_time => Time.now,
    #            :end_time => Time.now + 2.minute,
    #            :attendees_ids => attendee.id
    #          )
    #        end
    #      end
    #    end
  end
  task :seed => [:populate_attendees ,:populate_meeting_types ,:populate_meetings]
end