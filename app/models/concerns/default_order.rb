module DefaultOrder
	extend ActiveSupport::Concern
	included do
		default_scope { order(created_at: :desc) }
	end
end