class PagesController < ApplicationController
  def home
  end

  def contact
    @members = ['john', 'george', 'paul']

    if params[:member]
      @members = @members.select { |member| member.starts_with?(params[:member]) }
    end
  end
end
