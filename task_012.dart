import 'dart:math';

class BankAccount {
  int _balance;
  final int _accountNumber;
  final List<String> _transactionHistory;
  final bool _blocked;

  BankAccount()
    : _balance = 0,
      _accountNumber = Random().nextInt(123456890),
      _transactionHistory = [],
      _blocked = false;

  BankAccount.blocked()
    : _balance = 0,
      _accountNumber = Random().nextInt(123456780),
      _transactionHistory = [],
      _blocked = true;

  void deposit(int amount) {
    _checkIsBlocked(blocked);
    _transactionHistory.add('На счёт положили $amount рублей');
    _balance += amount;
  }

  void withdraw(int amount) {
    _checkIsBlocked(blocked);
    if (amount > _balance) {
      throw Exception('Попытка снять больше денег, чем есть на счёте');
    }
    _transactionHistory.add('Со счёта сняли $amount рублей');
    _balance -= amount;
  }

  int get accountNumber => _accountNumber;

  int get balance => _balance;

  bool get blocked => _blocked;

  String get lastTransaction => _transactionHistory.isNotEmpty
      ? _transactionHistory.last
      : 'Нет операций';

  List<String> get transactionHistory => List.unmodifiable(_transactionHistory);

  void _checkIsBlocked(blocked) {
    if (blocked) {
      throw StateError('poshel nahuy');
    }
  }
}

class RobberBankAccount extends BankAccount {

  int _robOperationCounter = 0;
  int _robbedMoneys = 0;
  int get robOperationCounter => _robOperationCounter;
  int get robbedMoneys => _robbedMoneys;

  @override
  void deposit(int amount) {
    super.deposit(amount);

    final stolenAmount = 50;
    if (_balance >= stolenAmount) {
      _balance -= stolenAmount;
      _robbedMoneys += stolenAmount;
      _robOperationCounter++;
      _transactionHistory.add('Украдено $stolenAmount при пополнении');
    }
  }

  @override
  void withdraw(int amount) {
    super.withdraw(amount);
    final stolenAmount = 50;
    if (_balance >= stolenAmount) {
      _balance -= stolenAmount;
      _robbedMoneys += stolenAmount;
      _robOperationCounter++;
      _transactionHistory.add('Украдено $stolenAmount при снятии');
    }
  }

}


void main() {
  // var account = BankAccount();
  // account.deposit(5000);
  // account.withdraw(2000);
  // account.withdraw(1000);
  //
  // account = BankAccount.blocked();
  //
  // try {
  //   account.deposit(123);
  // } on StateError catch (e) {
  //   print(e);
  //   return;
  // } catch (err) {
  //   print(err);
  //   return;
  // }
  // print(account.transactionHistory);

  var robAccount = RobberBankAccount();
  robAccount.deposit(5000);
  robAccount.withdraw(1000);
  robAccount.withdraw(500);

  print(robAccount.transactionHistory);
  print('На счёте ${robAccount.balance}');
  print('Украдено грабителями ${robAccount._robbedMoneys}');
}
