class ActionsController < ApplicationController

  def show
    @action = Action.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @action }
    end
  end
  
  def create
    @action = Action.new(params[:hoho])

    if @action.save
      respond_to do |killthedj|
        killthedj.js
      end
    else
      # fail.
      respond_to do |accepts|
        accepts.js
      end
    end
  end

end
