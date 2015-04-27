class ChangeDescriptionFromStringToTextInLists < ActiveRecord::Migration
  def change
    change_column :lists, :description, :text, :limit => nil
  end
end
