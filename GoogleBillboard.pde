public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
String digits = "1";
double dNum = 0;
public void setup()  
{            
  size(800, 600);
  background(0, 0, 0);
  

    for(int i = 2; i < e.length() - 10; i++){
    digits = e.substring(i, i + 10);
    if(isPrime(dNum = Double.parseDouble(digits))){
  System.out.println(digits);
 }


    }
  
 
  
}  
public void draw()  
{   
  
  
    textSize(40);
  fill(255);
  text(digits, 100, height/2);
   
  
}  

public boolean isPrime(double num)
{
  if(num < 2)
    return false;
  for(int i = 2; i <= Math.sqrt(num); i++)
    if(num % i == 0)
      return false;
  return true;
}
