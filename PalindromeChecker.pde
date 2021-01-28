public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(reverse(onlyLetters(noSpaces(noCapitals(word)))).equals(onlyLetters(noSpaces(noCapitals(word)))))
  {
    return true;
  } else {
    return false;
  }
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--)
    {
      sNew = sNew + str.substring(i-1,i);
    }
    return sNew;
}
public String noCapitals(String str)
{
  return str.toLowerCase();
}
public String noSpaces(String str)
{
  String sWord = new String();
  for(int i = 0; i < str.length(); i++)
  {
    if(!str.substring(i,i+1).equals(" "))
    {
      sWord = sWord + str.substring(i,i+1);
    }
  }
  return sWord;
}
public String onlyLetters(String str)
{
  String let = new String();
  for(int i = 0; i < str.length(); i++)
  {
    if(Character.isLetter(str.charAt(i)) == true)
    {
      let = let + str.substring(i,i+1);
    }
  }
  return let;
}

