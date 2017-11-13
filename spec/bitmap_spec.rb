require "bitmap"

describe Bitmap do
  describe "#show" do
    let(:commands) { File.readlines("spec/data/example.txt").map(&:strip) }
    subject { described_class.new }

    it "prints the right bitmap" do
      expect(subject.show(commands)).to eq "11111\n11421\n11411\n11411\n33331"
    end
  end
end



