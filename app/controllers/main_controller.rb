class MainController < ApplicationController
    def index
        if session[:user_id]
            #User.find will throw an error if we can't find it. 
            # @user = User.find(session[:user_id]) 
            #User.find_by(id ..) will not throw an error
            @user = User.find_by(id: session[:user_id])
        end
    end
end
