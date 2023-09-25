require "rails_helper"

RSpec.describe ServiceResponse, type: :lib do
  describe "when successfull" do
    let(:subject) { described_class.new(payload: 42, error: nil) }

    it { expect(subject.success?).to eq true }
  end

  describe "when unsuccessfull" do
    let(:subject) { described_class.new(payload: nil, error: "ImAnErrorLOL") }

    it { expect(subject.success?).to eq false }
  end
end
