RSpec.describe Validation do
  describe "#str_is_integer?" do
    context "when str is an integer" do
      it "returns true" do
        expect(described_class.str_is_integer?("10")).to be(true)
      end
    end

    context "when str is nil" do
      it "returns false" do
        expect(described_class.str_is_integer?(nil)).to be(false)
      end
    end

    context "when str is a str" do
      it "returns false" do
        expect(described_class.str_is_integer?("not a number")).to be(false)
      end
    end
  end

  describe "#str_is_valid_yyy_mm_dd_date?" do
    context "when str is a valid date" do
      it "returns true" do
        expect(described_class.str_is_valid_yyy_mm_dd_date?("2023-04-25")).to be(true)
      end
    end

    context "when str is not a valid date" do
      it "returns true" do
        expect(described_class.str_is_valid_yyy_mm_dd_date?("2023-04-31")).to be(false)
      end
    end
  end
end
