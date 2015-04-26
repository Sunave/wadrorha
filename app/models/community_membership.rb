class CommunityMembership < ActiveRecord::Base
  belongs_to :user
  belongs_to :community

  validates :user_id, uniqueness: { scope: :community_id }
end
