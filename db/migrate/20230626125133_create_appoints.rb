class CreateAppoints < ActiveRecord::Migration[5.2]
  def change
    add_column :appoints, :memo, :string
    end
  end
end
