require "operations/pixel"

describe Operations::Pixel do
  subject { described_class.new(2, 2, "1") }

  describe "#run" do
    let(:bitmap) { %w(000 000 000) }

    it "colours a pixel in the bitmap" do
      expect(subject.run(bitmap)).to eq ["000", "010", "000"]
    end

    context "when the coordinates are out of the bounds of the bitmap" do
      let(:bitmap) { %w(00 00) }

      it "raises an error" do
        expect { subject.run(bitmap) }.to raise_error "Coordinates out of bounds"
      end
    end
  end
end


