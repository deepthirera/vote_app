class UserProfile < ActiveRecord::Migration
  def change
    create_table :user_profile do |t|
      t.string :name
      t.integer :count
    end
  end
end
