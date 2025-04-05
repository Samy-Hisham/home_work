void main() {
  LoanProcessingSystem loanProcessingSystem = LoanProcessingSystem();

  Loan personlLoan = PersonalLoan('samy', 20000);
  Loan homeLoan = HomeLoan('bakar', 100000);
  Loan carLoan = CarLoan('hany', 25000);

  loanProcessingSystem.applyLoan(personlLoan);
  loanProcessingSystem.applyLoan(homeLoan);
  loanProcessingSystem.applyLoan(carLoan);

  loanProcessingSystem.calculateInstallment(12);
}

abstract class Loan {
  late String borrowerName;
  late double loanAmount;
  late double interestRate;

  Loan(this.borrowerName, this.loanAmount, this.interestRate);

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  static double fixedInterestRate = 0.10;

  PersonalLoan(String borrowerName, double loanAmount)
    : super(borrowerName, loanAmount, fixedInterestRate);

  @override
  double calculateMonthlyInstallment(int months) =>
      (loanAmount * (1 + fixedInterestRate)) / months;
}

class HomeLoan extends Loan {
  static double baseInterestRate = 0.08;
  static double increasedInterestRate = 0.095;

  HomeLoan(String borrowerName, double loanAmount)
    : super(
        borrowerName,
        loanAmount,
        loanAmount > 500000 ? increasedInterestRate : baseInterestRate,
      );

  @override
  double calculateMonthlyInstallment(int months) =>
      (loanAmount * (1 + interestRate) / months);
}

class CarLoan extends Loan {
  static double baseInterestRate = 0.07;
  static double processingFeeRate = 0.02;

  CarLoan(String borrowerName, double loanAmount)
    : super(
        borrowerName,
        loanAmount,
        baseInterestRate + (loanAmount > 50000 ? processingFeeRate : 0),
      );

  @override
  double calculateMonthlyInstallment(int months) =>
      (loanAmount * (1 + interestRate) / months);
}

class LoanProcessingSystem {
  List<Loan> loansList = [];

  void applyLoan(Loan loan) {
    loansList.add(loan);
  }

  void calculateInstallment(int months) {
    for (var loan in loansList) {
      double monthlyInstallment = loan.calculateMonthlyInstallment(months);

      print(
        'Loan for ${loan.borrowerName}:'
        ' Monthly Installment ='
        ' \$${monthlyInstallment.toStringAsFixed(2)}',
      );
    }
  }
}
