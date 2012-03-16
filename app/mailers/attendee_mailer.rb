class AttendeeMailer < ActionMailer::Base
  default :from => 'ekta.verma@example.com',
    :return_path => 'system@example.com'
    
  def send_email( meeting )
    subject     "Meeting Scheduled."
    @agenda = meeting.agenda
    mail(:to => meeting.meeting_attendees_list) do |format|
      format.html { render "send_email" }
    end
  end
end
