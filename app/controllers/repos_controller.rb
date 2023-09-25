class ReposController < ApplicationController
  def search
    @query = params[:query]

    return unless !!@query && @query&.size > 2

    service = ::PublicRepoSearcherService.new({query: @query}).call
    if service.success?
      @repos = service.payload
    else
      render html: 'Error happened'
    end
  end
end
