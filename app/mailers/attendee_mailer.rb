class AttendeeMailer < ActionMailer::Base
  #default :from => "from@example.com"
      default :from => 'no-reply@example.com',
      :return_path => 'system@example.com'
    
  def send_email( meeting )
    # recipients  meeting.meeting_attendees_list

    subject     "Meeting Scheduled."
    mail(:to => meeting.meeting_attendees_list) do |format|
      format.html { render "send_email" }
    end
  end
end
