class UsersController < ApplicationController

    def sign_in
        @user = User.find_by_username(params[:username])
        if @user && @user.authenticate(params[:password])
           auth_token = Knock::AuthToken.new payload: {sub: @user.id}
           render json: {username: @user.username, jwt: auth_token.token}, status: 200
        else
            render json: {error: "Incorrect username or password"}, status: 404
        end
    end


    private

    def user_params
        params.permit(:username, :email, :password, :password_confirmation)
    end
end