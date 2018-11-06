class UsersController < ApplicationController
    def index 
    end

    def new 
        @user = User.new
        #get = saisir les infos de l'utilisateur
    end

    def create 
        puts "...............CREATE...................."
        @user = User.create(first_name: params[:user][:first_name], last_name: params[:user][:last_name], email: params[:user][:email])
        puts "first : #{params[:user][:first_name]}"
        puts "last : #{params[:user][:last_name]}"
        puts "email : #{params[:user][:email]}"
        puts "ID : #{@user.id}"
        redirect_to login_path 
        puts "...............CREATE...................."
        #post = récupere les infos depuis new pour les sauver en db
    end

    def show 
        #get = se sert des infos user new et create pour générer une page profil
    end
end
