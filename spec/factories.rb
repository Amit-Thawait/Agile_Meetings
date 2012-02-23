Factory.define :meeting do |p|
  p.sequence(:id) {|n| "#{n}"}
  p.name 'standup'
  p.meeting_type_id 1
  p.meeting_date '2012-03-01'
  p.start_time '03:31:00'
  p.end_time '04:31:00'
end

Factory.define :meeting_type do |p|
  p.sequence(:id) {|n| "#{n}"}
  p.name 'syncup'
end

Factory.define :attendee do |p|
  p.sequence(:id) {|n| "#{n}"}
  p.name 'ekta'
  p.email 'ekta.v@gmail.com'
end