class MetricDetail < ApplicationRecord
 has_many :metric_view_contents
 has_many :metric_dashboard_views, through: :metric_view_contents
end
