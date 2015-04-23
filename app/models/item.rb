class Item < ActiveRecord::Base
  validates :name, presence: true
  validates :list_id, presence: true

  belongs_to :list
  has_one :user, through: :list

  acts_as_taggable
end
