describe StringCalculator do
  describe '.add' do
    context 'When empty string is given' do
      it 'Should return 0' do
        expect(described_class.add("")).to eq 0
      end
    end

    context 'When single number is given' do
      it 'Should return the same number' do
        expect(described_class.add('1')).to eq 1
      end
    end

    context 'When two comma seperated numbers are given' do
      it 'Should return the sum of numbers' do
        expect(described_class.add('1,5')).to eq 6
      end
    end
  end
end