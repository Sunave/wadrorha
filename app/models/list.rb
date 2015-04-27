class List < ActiveRecord::Base
  validates :name, presence: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :items

  scope :publics, -> { where private:[false, nil] }
  scope :privates, -> { where private:true }

  acts_as_taggable
end
