require "operations/horizontal"

describe Operations::Horizontal do
  describe "#run" do
    subject { described_class.new("2", "1", "3", "1") }
    let(:bitmap) { %w(000 000 000) }

    it "colours pixels in a vertical column" do
      expect(subject.run(bitmap)).to eq ["000", "111", "000"]
    end
  end
end
