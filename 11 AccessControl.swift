

// Access Control - Makes code safer and robust
// allows us to control access to properties and methos within our code
// by implementing different levels of access on properties and methods, 
// we determine which other parts of the code can read their values, write to them, and execute their methods








// REVIEW







// Swift Bank
struct SwiftBank {
  // Private Properties
  private let password: String 
  private var balance: Double = 0.0

  // Static Properties
  static let depositBonusRate = 0.01

  // Initializor
  init(password: String, initialDeposit: Double) {
    self.password = password
    makeDeposit(ofAmount: initialDeposit)
  }

  // Mutating Methods
  mutating func makeDeposit(ofAmount depositAmount: Double) {
    let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
    print("Making a depsoit of $\(depositAmount) with a bonus rate. The final amount deposited is \(depositWithBonus)")
    self.balance += depositWithBonus
  }

  mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, usingPassword password: String) {
    if isValid(password) {
      print("Making a $\(withdrawalAmount) withdrawl")
      self.balance -= withdrawalAmount
    } else {
      print("Error: Invalid Password")
    }
  }


  // Private Methods
  private func isValid(_ enteredPassword: String) -> Bool {
    enteredPassword == password
  }
  
  private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
    return deposit + (deposit * SwiftBank.depositBonusRate)
  }

private func displayLowBalanceMessage() {

    print("Alert: Your balance is under $100 at: $\(balance)")
  
}

  // Methods
  func displayBalance(usingPassword password: String) {
  isValid(password) ? print("Your current balance is $\(balance)") : print("Error: Invalid password")
  }

}

var myAccount = SwiftBank(password: "1234", initialDeposit: 500)
myAccount.makeDeposit(ofAmount: 50)
myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "123")
myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "1234")
myAccount.displayBalance(usingPassword: "1234")