class CreateMetricDashboardViews < ActiveRecord::Migration[5.2]
  def change
    create_table :metric_dashboard_views do |t|
      t.string :name
      t.timestamps
    end
  end
end
