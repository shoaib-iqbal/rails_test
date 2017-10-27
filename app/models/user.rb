class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  scope :developers, -> { with_role :developer }
  scope :manager_or_qa, -> { with_role :developer }
  has_many :enterd_bugs, class_name: "Bug", foreign_key: "creater_id"
  has_many :assign_bugs, class_name: "Bug", foreign_key: "developer_id"
  has_many :project_users
	has_many :projects, through: :project_users
  

  def bugs_permission
  	if has_role? :manager or has_role? :qa
  		return true
  	end
  end
end
