require 'oystercard'

describe Oystercard do
  it 'has a balance of 0' do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'can top up the balance' do
      expect{ subject.top_up(1) }.to change{ subject.balance }.by(1)
    end

    it 'throws error if max balance is exceeded' do
      max_balance = Oystercard::MAX_BALANCE
      subject.top_up(max_balance)
      expect{ subject.top_up(1) }.to raise_error "Balance has reached limit of #{max_balance}"
    end
  
  end


end