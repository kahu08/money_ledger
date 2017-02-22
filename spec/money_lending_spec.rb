require('rspec')
  require('money_lending')

#   describe('Fixnum#money_lending') do
#     # 1% interest
#     it('returns interest if amount less than 1000') do
#       expect((600).money_lending).to(eq(606))
#     end
#     # 10% interest
#     it ('returns interest if amount less than 10000 ') do
#       expect((7000).money_lending).to(eq(7700))
#     end
#     # 20% interest
#     it ('returns interest if amount less than 20000 ') do
#       expect((15000).money_lending).to(eq(18000))
#     end
#     # 30% interest
#     it ('returns interest if amount less than 30000 ') do
#       expect((25000).money_lending).to(eq(32500))
#     end
#   end

##############################
describe(Loan) do
  describe("#name") do
    it("returns the name of the borrower") do
      test_loan = Loan.new({:name=> "Tom", :amount => 15000, :time => 1})
      expect(test_loan.name()).to(eq("Tom"))
    end
  end
  describe("#amount") do
    it("returns the amount of the borrower") do
      test_loan = Loan.new({:name=> "Tom", :amount => 15000, :time => 1})
      expect(test_loan.amount()).to(eq(15000))
    end
  end
  describe("#time") do
    it("returns the date loan should be repaid") do
      test_loan = Loan.new({:name=> "Tom", :amount => 15000, :time => 1})
      expect(test_loan.time()).to(eq(1))
    end
  end
  describe("#total") do
    it("returns the total amount to be repaid") do
      test_loan = Loan.new({:name=> "Tom", :amount => 15000, :time => 1})
      expect(test_loan.total()).to(eq(16500))
    end
  end

  describe(".all") do
    it("all the  saved debtors") do
      expect(Loan.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a debtor to the array of saved debtors") do
      test_loan = Loan.new({:name=> "Tom", :amount => 15000, :time => 1})
      test_loan.save()
      expect(Loan.all()).to(eq([test_loan]))
    end
  end

  describe("#id") do
    it("returns the id of the debtor") do
      test_loan = Loan.new({:name=> "Tom", :amount => 15000, :time => 1})
      test_loan.save()
      expect(test_loan.id()).to(eq(1))
    end
  end



  describe(".clear") do
    it("empties out all of the saved debtors") do
      Loan.new({:name=> "Tom", :amount => 15000, :time => 1}).save()
      Loan.clear()
      expect(Loan.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a debtor by its id number") do
      test_loan = Loan.new({:name=> "Tom", :amount => 15000, :time => 1})
      test_loan.save()
      test_loan2 = Loan.new({:name=> "Terry", :amount => 11000, :time => 2})
      test_loan2.save()
      expect(Loan.find(test_loan.id())).to(eq(test_loan))
    end
  end
end
