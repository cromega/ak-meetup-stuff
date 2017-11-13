require "operations/vertical"

describe Operations::Vertical do
  describe "#run" do
    subject { described_class.new("2", "3", "2", "1") }
    let(:bitmap) { %w(000 000 000) }

    it "colours pixels in a vertical column" do
      expect(subject.run(bitmap)).to eq ["000", "010", "010"]
    end
  end
end
