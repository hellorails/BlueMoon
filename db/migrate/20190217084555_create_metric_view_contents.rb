class CreateMetricViewContents < ActiveRecord::Migration[5.2]
  def change
    create_table :metric_view_contents do |t|
      t.integer :metric_detail_id
      t.integer :metric_dashboard_id
      t.integer :metric_order_number
      t.timestamps
    end
  end
end
