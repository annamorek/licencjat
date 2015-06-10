class SearchController < ApplicationController
  skip_authorization_check
  def search
    if params[:q].nil?
      @words = []
    else
      @words = Word.search params[:q]
    end
  end

end