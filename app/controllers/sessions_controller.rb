class SessionsController < ApplicationController
   helper_method :current_user

   def new

   end

   def create
     if current_user == nil
       redirect_to controller: 'sessions', action: 'new'
     end
     session[:name] = params[:name]
   end

   def destroy
     if current_user != nil
       session.delete :name
     else
       current_user
     end
     redirect_to sessions_new_path
   end
 end
