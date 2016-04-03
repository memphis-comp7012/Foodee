class PagesController < ApplicationController

	before_action :authenticate_user!, only: [:home]

	def home
    	#@events = Event.all
    	@events = Event.all.paginate(:page => params[:page], :per_page => 2)
    	if current_user
    		@person = current_user.person

    	end
  	end
end



#def index
#end
