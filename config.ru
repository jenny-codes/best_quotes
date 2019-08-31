require './config/application'

app = BestQuotes::Application.new

app.route do 
	root 'quotes#index'

	resources :quotes, only: [:index, :create, :show]

	match 'a_quote', to: 'quotes#a_quote'
	match 'good_ones/:id', to: 'quotes#show'
end

run app

