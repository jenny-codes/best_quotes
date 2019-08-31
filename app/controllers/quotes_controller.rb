class QuotesController < Wings::Controller
  def index
    @quotes = Quote.all
  end

  def create
    @quote = Quote.create('quote' => 'Hang me up to dry', 'attribution' => 'Cold War Kids')
  	
  	render :show
  end

  def show
  	@quote = Quote.find(params['id'])
  end

  def a_quote
    render :a_quote, locals: { thing: 'CSS' }
  end
end
