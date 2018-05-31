class AccueilController < ApplicationController
  skip_before_action :require_valid_user!

  def index
  end

  def auctions
  end

  def agents
  end

  def reviews
  end

  def about
  end
end
