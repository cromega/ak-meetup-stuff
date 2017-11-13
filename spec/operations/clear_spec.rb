require "operations/clear"

describe Operations::Clear do
  describe "run" do
    let(:bitmap) { %w(222 222 222) }

    context "when colour is specified" do
      subject { described_class.new("1") }

      it "clears a bitmap with colour" do
        expect(subject.run(bitmap)).to eq ["111", "111", "111"]
      end
    end

    context "when colour is not specified" do
      subject { described_class.new }

      it "clears a bitmap with the default colour" do
        expect(subject.run(bitmap)).to eq ["000", "000", "000"]
      end
    end
  end
end


