
describe AbstractMethod do
  it 'has a version number' do
    expect(AbstractMethod::VERSION).not_to be_nil
  end
end

describe "Kernel" do
  describe "#abstract_method" do
    it "raises an AbstractMethodError exception" do
      expect { abstract_method }.to raise_error AbstractMethodError
    end
  end
end
