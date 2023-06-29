class CreateAppoints < ActiveRecord::Migration[5.2]
  def change
    create_table :appoints do |t|
      t.string :title
      t.string :memo
      t.date :start_date
      t.date :end_date
      t.boolean :all_day_flag

      t.timestamps
    end
  end
end
