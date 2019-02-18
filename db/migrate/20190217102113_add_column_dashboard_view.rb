class AddColumnDashboardView < ActiveRecord::Migration[5.2]
  def change
  	    add_column  :metric_view_contents,:metric_dashboard_view_id, :integer

  end
end
