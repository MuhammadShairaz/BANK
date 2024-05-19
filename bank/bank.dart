class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;

  BankAccount(this.accountNumber, this.accountHolder, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
      print('New Balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be greater than zero.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdrew: \$${amount.toStringAsFixed(2)}');
      print('New Balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Invalid withdraw amount. Either amount is greater than balance or less than zero.');
    }
  }

  void displayAccountInfo() {
    print('Account Number: $accountNumber');
    print('Account Holder: $accountHolder');
    print('Balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  // Create a new bank account
  BankAccount account = BankAccount('123456789', 'kashan', 1000.0);

  // Display account information
  account.displayAccountInfo();

  // Perform deposit
  account.deposit(500.0);

  // Perform withdrawal
  account.withdraw(300.0);

  // Display account information after transactions
  account.displayAccountInfo();
}
