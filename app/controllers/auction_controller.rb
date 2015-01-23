class AuctionController < ApplicationController	

  def index
    @captain = User.where("is_captain = 1")  
    @player = User.where(:is_captain => 0,  :bid_value => nil).order("RANDOM()").first  
  end

  def sold

    @user = User.find(params[:user_id]);
    @user.update_attributes(captain_id: params[:captain_id], bid_value: params[:bid_value]);
    #@player = User.where(:is_captain => 0,  :bid_value => nil).order("RANDOM()").first 
    #respond_to do |format|
     #   format.js
    #end  

    render :nothing => true
    #render :partial => "getuser"
  end

  def getuser
  	@player = User.where(:is_captain => 0,  :bid_value => nil).order("RANDOM()").first 
  	respond_to do |format|
        format.js
    end  
  end
end
