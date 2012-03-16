class AddAgendaToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings , :agenda , :text
  end
end
