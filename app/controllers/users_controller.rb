class UsersController < ApplicationController
    def mood
    end

    def signin
      
    
    end

    def handle_signin
        u=User.find_by(mail: params[:email])
        if(u.present? && u.pass==params[:password])
            render json: { message: 'Login successful' }, status: :ok
            # redirect_to "/"
        else
            render json: { message: 'Login failed' }, status: :ok
            # redirect_to "/signin"
        end
    end

    def register
    end

    def profile_selection

    end

    def admin

    end

    def create_profile
        p=Profile.create(
            user_id: 2,
            name: "Nishu"
        )
    end

    def edit_profile
    end
end
