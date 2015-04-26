json.array!(@community_memberships) do |community_membership|
  json.extract! community_membership, :id, :user_id, :community_id
  json.url community_membership_url(community_membership, format: :json)
end
