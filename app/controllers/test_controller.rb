class TestController < ApplicationController
  unloadable

  before_filter :find_project,
                :authorize, # login view come up if set this when someone access the URL directly
                :only => :index

  def index
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end
end
