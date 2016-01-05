class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :type
      t.date :start_date
      t.date :end_date
      t.text :description
      t.boolean :is_published
      t.string :recap_url
      t.string :home_team_a
      t.string :home_team_b
      t.string :visiting_team_a
      t.string :visiting_team_b
      t.string :ticket_url
      
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end