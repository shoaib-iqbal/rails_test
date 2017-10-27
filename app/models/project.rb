class Project < ApplicationRecord
	has_many :bugs
	has_many :project_users
	has_many :users, through: :project_users
	accepts_nested_attributes_for :project_users,:reject_if => :all_blank, :allow_destroy => true 
end
