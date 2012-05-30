module Eactheme
  class ThemesController < ApplicationController
    def index
    end

    def switch
      session[:theme] = params[:theme]
      Eactheme::Engine.set_theme(params[:theme])
      redirect_to themes_path
    end
  end
end
