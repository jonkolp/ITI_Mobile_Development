
class Bankaccount
{
  String username;
  double _balance;
  
  // constructor for Bankaccount class (call by default)
  Bankaccount(this.username, this._balance);
  
  // method to deposit money into the account
  void deposit(double amount)
  {
    if (amount > 0)
    {
      this._balance += amount;
      print('depositing $amount,new balance is $_balance');
    }
  }

  // method to withdraw money from the account
  void withdraw(double amount)
  {
    if (amount > 0 && amount <= this._balance)
    {
      this._balance -= amount;
      print('withdrawing $amount,new balance is $_balance');
    }
    else
    {
      print('Insufficient Funds');
    }
  }


}





void main()
{
  Bankaccount account = new Bankaccount("John Doe", 1000.0); 
  Bankaccount account2 = new Bankaccount("Ali", 1200);
  print(account.username);
  account2.deposit(200);
  account2.withdraw(500);
}