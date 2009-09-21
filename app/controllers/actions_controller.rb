class ActionsController < ApplicationController

  def show
    @action = Action.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @action }
    end
  end
  
  def create
    @action = Action.new(params[:aktion])
    @project = @action.project

    if @action.save
      render :action => 'create.rjs'
    else
      render :action => 'create_failed.rjs'
    end
  end

  # suboptimal to have this as a GET.
  def finish
    @action = Action.find(params[:id])
    unless @action.finished
      @action.finished = true
      @action.finished_at = Time.now
      @action.save
    end
    redirect_to :action => 'show'
  end

end
