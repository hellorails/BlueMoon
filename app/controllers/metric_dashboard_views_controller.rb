class MetricDashboardViewsController < ApplicationController
  layout :false
  def index
   end

  def new
  	@metric_dashboard_view = MetricDashboardView.new
  	MetricDetail.all.each do |x|
  	 @metric_dashboard_view.metric_view_contents.build(metric_dashboard_view_id: x.id)
  	end
   flash[:notice] = 'Sucessfully created'

  	
  end

  def create
    # raise params.inspect
    @metric_dashboard_view = MetricDashboardView.new
    flash[:notice] = 'Sucessfully created'
    render 'new'
  end

  def dashboard_params
  	params.require(:metric_dashboard_view).permit(:id, :name, metric_view_contents: [
      :metric_order_number
    ])
  end
end
