Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show" })
  get("/add_user", { :controller => "users", :action => "create" })
  get("/users/update_user/:modify_username", { :controller => "users", :action => "update" })


  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  get("/delete_photo/:toast_id", { :controller => "photos", :action => "destroy" })
  get("/insert_photo", { :controller => "photos", :action => "create" })
  get("/photos/update_photo/:modify_id", { :controller => "photos", :action => "update" })
  get("/photos/add_comment/:update_id", { :controller => "photos", :action => "comment" })
  
end
