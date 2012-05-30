class EnginesController < ApplicationController
  def index
    @engines = %w( eacusr eactheme )
  end
end
