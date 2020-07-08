
    class SessionsController < ApplicationController
      def create
        # @user = User.find_or_create_from_auth_hash(auth_hash)
        # self.current_user = @user
        session[:auth_hash] = auth_hash[:extra][:raw_info][:first_name]
        redirect_to '/'
      end

      protected

      def auth_hash
        request.env['omniauth.auth']
      end
    end
 