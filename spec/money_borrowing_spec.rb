# describe('Debt') do
#   describe("#name") do
#     it("returns the name of the borrower") do
#       test_debt = Debt.new({:name=> "Tom", :amount => 15000, :time => 1})
#       expect(test_debt.name()).to(eq("Tom"))
#     end
#   end
#   describe("#amount") do
#     it("returns the amount of the borrower") do
#       test_debt = Debt.new({:name=> "Tom", :amount => 15000, :time => 1})
#       expect(test_debt.amount()).to(eq(15000))
#     end
#   end
#   describe("#time") do
#     it("returns the date loan should be repaid") do
#       test_debt = Debt.new({:name=> "Tom", :amount => 15000, :time => 1})
#       expect(test_debt.time()).to(eq(1))
#     end
#   end
#   describe("#total") do
#     it("returns the total amount to be repaid") do
#       test_debt = Debt.new({:name=> "Tom", :amount => 15000, :time => 1})
#       expect(test_debt.total()).to(eq(16500))
#     end
#   end
#
#   describe(".all") do
#     it("all the  saved debtors") do
#       expect(Debt.all()).to(eq([]))
#     end
#   end
#
#   describe("#save") do
#     it("adds a debtor to the array of saved debtors") do
#       test_debt = Debt.new({:name=> "Tom", :amount => 15000, :time => 1})
#       test_debt.save()
#       expect(Debt.all()).to(eq([test_debt]))
#     end
#   end
#
#   describe("#id") do
#     it("returns the id of the debtor") do
#       test_debt = Debt.new({:name=> "Tom", :amount => 15000, :time => 1})
#       test_debt.save()
#       expect(test_debt.id()).to(eq(1))
#     end
#   end
#
#
#
#   describe(".clear") do
#     it("empties out all of the saved debtors") do
#       Debt.new({:name=> "Tom", :amount => 15000, :time => 1}).save()
#       Debt.clear()
#       expect(Debt.all()).to(eq([]))
#     end
#   end
#
#   describe(".find") do
#     it("returns a debtor by its id number") do
#       test_debt = Debt.new({:name=> "Tom", :amount => 15000, :time => 1})
#       test_debt.save()
#       test_debt2 = Debt.new({:name=> "Terry", :amount => 11000, :time => 2})
#       test_debt2.save()
#       expect(Debt.find(test_debt.id())).to(eq(test_debt))
#     end
#   end
# end
