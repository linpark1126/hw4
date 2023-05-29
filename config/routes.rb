Rails.application.routes.draw do
  get "/", :controller => "users", :action => "new"
  resources "places"
  resources "posts"
  resources "sessions"
  resources "users"

  get "/login", :controller => "sessions", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"

end
