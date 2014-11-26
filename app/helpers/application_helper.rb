module ApplicationHelper
  
  #Show controller and action of current page
  def controlleraction
    params[:controller] + "#" + params[:action] + " (app/views/" + params[:controller] + "/" + params[:action] + ".html.erb)"
  end
  
end
