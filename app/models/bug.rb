class Bug < ApplicationRecord
	enum types: [:feature, :bug]
	BUGS_TYPES = ["new", "started", "completed"]
	FEATURE_TYPES = ["new", "started", "resolved"]
	belongs_to :project
	belongs_to :creator, class_name: "User", foreign_key: "creater_id"
	belongs_to :developer, class_name: "User", foreign_key: "developer_id"
	validates_presence_of :title,:status,:bug_type
	validates_uniqueness_of :title, :scope => :project_id
	mount_uploader :screen_shot, ScreenShotUploader
end
