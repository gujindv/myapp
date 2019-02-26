class MattersController < ApplicationController
  before_action :validate_search_key, only: [:search]

  def index
    @matters = Matter.all
  end

  def show
    @matter = Matter.find(params[:id])
  end

  def search
    if @query_string.present?
      @result_matters = Matter.ransack(@search_criteria).result(:distinct => true)
    end
  end

  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end

  def search_criteria(query_string)
    { :title_cont => query_string }
  end
end
