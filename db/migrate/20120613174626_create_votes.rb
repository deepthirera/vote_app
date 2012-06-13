class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voter_id
      t.references :candidate
      t.text :comment
      t.timestamps
    end
  end
end
