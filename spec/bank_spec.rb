require 'bank'

describe Bank do
  describe '#initialize' do
    it 'creates an account with balance 0 when no argument is passed' do
      expect(subject.view_balance).to eq("£0")
    end

    it 'creates an account with balance when argument is passed' do
      expect(Bank.new(100).view_balance).to eq("£100")
    end
  end

  describe '#view_balance' do
    it 'Displays the users balance correctly' do
      expect(Bank.new(50).view_balance).to eq("£50")
    end
  end

  describe '#deposit' do
    it 'adds funds to the clients account' do
      subject.deposit(500)
      expect(subject.view_balance).to eq("£500")
    end
  end

  describe '#withdraw' do
    it 'withdraws money from the account' do
      account = Bank.new(500)
      account.withdraw(200)
      expect(account.view_balance).to eq("£300")
    end
  end
end