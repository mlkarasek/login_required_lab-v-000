class SecretsController < ApplicationController

     helper_method :current_user

   def show
     if current_user == nil
       redirect_to controller: 'sessions', action: 'new'
     else
       @secret = session[:name]
     end
   end

   def require_login
     return head(:forbidden) unless session.include? :name
   end
 end
