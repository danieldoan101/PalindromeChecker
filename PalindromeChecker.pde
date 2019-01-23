public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = onlyLetters(word);
  if(word2.equalsIgnoreCase(reverse(word2)))
    return true;
  else
    return false;
}
public String reverse(String str)
{
  String reversed = "";
  for(int i=str.length()-1; i>=0; i--){
    reversed = reversed + str.substring(i,i+1);
  }
  return reversed;
}

public String onlyLetters(String sString){
  String onlyLetter = "";
  for(int i=0; i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      onlyLetter = onlyLetter + sString.substring(i,i+1);
    }
  }
  return onlyLetter;
}