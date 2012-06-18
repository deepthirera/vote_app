class AddColumnToCandidate < ActiveRecord::Migration
  def change
   add_column :candidates, :mail_id, :string
  end
end
