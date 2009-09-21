module ActionsHelper
  # populate 'show_action' div with contents of 'action/show'.
  def show_action(action)
    return link_to_function(action.name, nil, :id => "show_action_link") do |page|
      @action = action
      page.replace_html 'show_action', :partial => 'actions/box', :object => @action
      page[:show_action].toggleClassName('no_display')
    end
  end
  def finish_action(action)
    return link_to_remote('finish', :url => {:controller => 'actions', :action => 'finish', :id => action.id}, :update => 'show_action')
  end
end
