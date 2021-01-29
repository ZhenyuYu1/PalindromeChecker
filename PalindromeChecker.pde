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
  String result = "";
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)))
    {
      result = result + word.charAt(i);
    }
  }
  word = result;
  for(int i = 0; i < word.length(); i++)
  {
    if(word.charAt(i) != ' ')
    {
      result = result + word.substring(i,i+1);
    }
  }
  word = result;
  word = word.toLowerCase();
  if(reverse(word).equals(word))
  {
    return true;
  }
  return false;
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
