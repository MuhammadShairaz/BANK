import 'dart:ffi';

class Bank{
  int acc_number=78923456;
 String? acc_holder="ali";
 String? acc_email="Ali@gmail.com";
  int acc_contact=031229567345;
 int acc_balance=100000;
 int acc_withdraw=50000;
  String? acc_pass="783";
   String? acc_type="Saving Account";
  


   void acc_info(){
    print('your account number  $acc_number');
    print('your account holder  $acc_holder');
  print('your account balance  $acc_balance');
  print('your account  withdraw  $acc_withdraw');
print('your account contact  $acc_contact');
  print('your account email  $acc_email');
      print('your account password  $acc_pass');
     print('your account type  $acc_type');
       print('your account type  $acc_type');

   }
}
class transactions extends Bank{
  int c_bal=100000;
  int add_bal=50000;
  void add(){
    print(c_bal+ add_bal);  
  }
}
void main(){
  transactions obj = new transactions();
  obj.acc_info();
  obj.add();
}
