require 'sinatra'

post '/plan' do
  response = Travel
    .new
    .with_dates(params[:start_date],params[:end_date])
    .from(params[:city_origin])
    .to(params[:city_destination])
    .plan!

  render json: response
end