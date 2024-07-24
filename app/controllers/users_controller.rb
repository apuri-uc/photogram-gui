class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index"})
  end

  def show
    url_username = params.fetch("path_username")
    matching_username = User.where({ :username => url_username })
    @the_user = matching_username.first

    render({ :template => "user_templates/show" })
  end

  def create
      input_user = params.fetch("query_new_user")
  
      a_new_user = User.new
      a_new_user.username = input_user
  
      a_new_user.save
  
    redirect_to("/users/" + a_new_user.username)
    end

    def update
      user_id = params.fetch("user_id")
      matching_users = User.where({ :id => user_id })
      the_user = matching_users.at(0)
      
      the_user.username = params.fetch("query_username")
      the_user.save
      redirect_to("/users/" + the_user.username)
    end
end
