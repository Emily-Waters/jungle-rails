# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      flash.alert = 'Invalid email/password, try again or sign up'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end
