ActionController::Routing::Routes.draw do |map|

  map.root :controller => 'welcome'
  map.calendar 'calendar', :controller => 'welcome', :action => 'calendar'
  map.signup "signup", :controller => "users", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.login "login", :controller => "user_sessions", :action => "new"

  map.resources :user_sessions, :users, :clients, :appointments
end
