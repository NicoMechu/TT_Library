class RemoveRateFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :rate, :integer
  end
end
