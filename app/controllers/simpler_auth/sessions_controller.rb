require_dependency "simpler_auth/application_controller"

module SimplerAuth
  class SessionsController < ApplicationController
    def new
      redirect_to dashboard_path if administrator_signed_in?
    end

    def create
      administrator = SimplerAuth::Administrator.find_by(
        email: session_params[:email]
      )
      if administrator && administrator.authenticate(session_params[:password])
        sign_in(administrator)
        redirect_to dashboard_path
      else
        flash[:notice] = 'Wrong login details'
        render :new
      end
    end

    def destroy
      sign_out
      redirect_to new_session_path
    end

    private
      def session_params
        params.require(:administrator).permit(
          :email,
          :password,
        )
      end
  end
end
