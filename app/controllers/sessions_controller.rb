
class SessionsController < ApplicationController
    def new 
    end

    def create 
        @user = User.find_by(email: params[:session][:email].downcase)
        puts "#{params[:session][:email].downcase}"
        if @user 
            puts "le user existe --> #{@user}"
            log_in @user 
            redirect_to sessions_show_path

        else 
            flash.now[:danger] = "l'email saisie est inconnu"
            render 'new'
            puts "le user existe pas :( !!"
        end
    end

    def destroy
        session.delete(:user_id)
        @current_user = nil
        puts "Alloooo current_user DESTROY !!!"
        redirect_to '/', flash: {success: "Tu t'es déco batard ???? azy reviens !"}    
    end


    def show 
        unless logged_in?
            puts "Je suis le user et je me dirige vers la page login_path"
            redirect_to login_path
        end 

        puts "Alloooo current_user SHOW !!!"
    end

    def club
        @all = User.all
    end
    
end
