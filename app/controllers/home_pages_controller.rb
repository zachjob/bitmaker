class HomePagesController < ApplicationController
  def home
    @projects = Project.all
  end
end
