# To change this template, choose Tools | Templates
# and open the template in the editor.


Factory.define :meeting_type do |mt|
  mt.sequence(:name) {|n| "Meeting_type_#{n}"}
end
