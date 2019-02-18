class MetricViewContent < ApplicationRecord
	belongs_to :metric_detail
	belongs_to :metic_dashbord_view
end
