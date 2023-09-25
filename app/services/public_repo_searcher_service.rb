class PublicRepoSearcherService
  def initialize(params)
    @query = params[:query]
  end

  def call
    response = RequestMakerService.new(url).call
    return response unless response.success?

    result = format_payload(response.payload.to_s)
  rescue StandardError => e
    ServiceResponse.new(payload: nil, error: e)
  else
    ServiceResponse.new(payload: result, error: nil)
  end

  private

  def url
    "https://api.github.com/search/repositories?q=#{@query}"
  end

  def format_payload(payload)
    data = JSON.parse(payload)

    results = []
    data["items"].each do |repo|
      result = { "repo_url": repo["html_url"],
                 "owner": repo["owner"]["login"],
                 "description": repo["description"] }
      results << result
    end
    results
  end
end
