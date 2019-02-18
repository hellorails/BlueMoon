class MetricDashboardView < ApplicationRecord
 has_many :metric_view_contents
 has_many :metric_details, through: :metric_view_contents

 accepts_nested_attributes_for :metric_view_contents
 

end
