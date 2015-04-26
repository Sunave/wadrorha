class CreateCommunityMemberships < ActiveRecord::Migration
  def change
    create_table :community_memberships do |t|
      t.integer :user_id
      t.integer :community_id

      t.timestamps null: false
    end
  end
end
