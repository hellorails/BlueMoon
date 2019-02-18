Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :home
resources :beneficiaries
resources :metric_dashboard_views

end
