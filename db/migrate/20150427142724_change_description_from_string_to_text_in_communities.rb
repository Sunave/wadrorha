class ChangeDescriptionFromStringToTextInCommunities < ActiveRecord::Migration
  def change
    change_column :communities, :description, :text, :limit => nil
  end
end
