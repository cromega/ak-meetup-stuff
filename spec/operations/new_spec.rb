require "operations/new"

describe Operations::New do
  describe "run" do
    subject { described_class.new(3, 3) }
    let(:bitmap) { [] }

    it "initializes a bitmap" do
      expect(subject.run(bitmap)).to eq ["000", "000", "000"]
    end
  end
end


