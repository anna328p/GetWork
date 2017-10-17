class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
    def set_tag
      @tag = Tag.find(params[:id])
    end
end
