class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, uniqueness: true,
            length: { in: 2..20 }

  has_many :lists
  has_many :items, through: :lists
  has_many :communities, through: :community_memberships
  has_many :community_memberships, dependent: :destroy
end
