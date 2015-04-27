class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, uniqueness: true,
            length: { in: 2..20 }

  has_many :lists, -> { where private: false }
  has_many :private_lists, -> { where private:true }, class_name: 'List'
  has_many :items, through: :lists
  has_many :communities, through: :community_memberships
  has_many :community_memberships, dependent: :destroy
  has_many :owned_communities, class_name: 'Community', :foreign_key => 'owner_id'
end
