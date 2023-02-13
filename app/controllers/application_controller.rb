class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # add routes
  #delete
  delete '/reviews/:id' do 
    # find the review using the ID
    review = Review.find(params[:id])
    # delete the review
    review.destroy
    # send a response with the deleted review as JSON 
    review.to_json
  end  

  #post 
  #create
  


end
