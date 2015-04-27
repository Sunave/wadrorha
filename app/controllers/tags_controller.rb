class TagsController < ApplicationController
  before_action :set_tag, only: [:show]

  autocomplete :tag, :name, :class_name => 'ActsAsTaggableOn::Tag'

  def show
  end

  def set_tag
    @tag = params[:tag]
    @items = Item.tagged_with(params[:tag])
    @lists = List.tagged_with(params[:tag])
  end
end