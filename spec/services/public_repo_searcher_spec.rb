require "rails_helper"

RSpec.describe PublicRepoSearcherService, type: :service do
  describe "when successfull" do
    let(:subject) { PublicRepoSearcherService.new({query: "paperboy.digital"}).call }

    before do
      subject
    end

    it do
      expect(subject.success?).to be true
      expect(subject.payload.class).to be Array
      expect(subject.payload.first.class).to be Hash
      expect(subject.payload.first.keys).to eq [:repo_url, :username, :description]
    end
  end
end
