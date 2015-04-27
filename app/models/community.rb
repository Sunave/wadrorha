class Community < ActiveRecord::Base
  has_many :members, -> { uniq }, through: :community_memberships, source: :user
  has_many :community_memberships, dependent: :destroy

  belongs_to :owner, :class_name => 'User'
end
