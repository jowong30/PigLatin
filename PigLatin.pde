public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}

//FINJD IF FIRST IS A VOWEL
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{	
	//check to see if length is 0
	if(sWord.length()==0){
		return 12;
	}

	/*
	check if first is vowel
	for(int i=0; i<sWord.length();i++){
		if(sWord.substring(2,3).equals("a") || sWord.substring(2,3).equals("e") || sWord.substring(2,3).equals("i") || sWord.substring(2,3).equals("o") || sWord.substring(2,3).equals("u")){
			return 1;
		}
	}
	*/
	//check if first is vowel
	if(sWord.substring(0,1).equals("a") || sWord.substring(0,1).equals("e") || sWord.substring(0,1).equals("i") || sWord.substring(0,1).equals("o") || sWord.substring(0,1).equals("u")){
		return 1;
	}

	return -1;
}

//this sucks
String begin;
int endBegin =0;
//finds the first consonant if not does something else
public int findConsonantStringOne(String sWord)
{	
	if(sWord.length()==0){
		return 0;
	}

	//if there is a vowel, stop
	
	if(sWord.substring(0,1).equals("a") || sWord.substring(0,1).equals("e") || sWord.substring(0,1).equals("i") || sWord.substring(0,1).equals("o") || sWord.substring(0,1).equals("u")){
		return -5;
	}
	//begin = sWord.substring(0,endBegin);
	return 17;
}

public int findConsonantStringTwo(String sWord)
{	
	if(sWord.length()==0){
		return 0;
	}

	//if there is a vowel, stop
	
	if(sWord.substring(1,2).equals("a") || sWord.substring(1,2).equals("e") || sWord.substring(1,2).equals("i") || sWord.substring(1,2).equals("o") || sWord.substring(1,2).equals("u")){
		return -5;
	}
	//begin = sWord.substring(0,endBegin);
	return 17;
}

public int findConsonantStringThree(String sWord)
{	
	if(sWord.length()==0){
		return 0;
	}

	//if there is a vowel, stop
	
	if(sWord.substring(2,3).equals("a") || sWord.substring(2,3).equals("e") || sWord.substring(2,3).equals("i") || sWord.substring(2,3).equals("o") || sWord.substring(2,3).equals("u")){
		return -5;
	}
	//begin = sWord.substring(0,endBegin);
	return 17;
}

public int findQU(String sWord)
{	
	if(sWord.length()==0){
		return 12;
	}
	if(sWord.substring(0,2).equals("qu"))
	{
		return 110;
	}
	return 0;
}



public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord)==12){
		return " ";
	}
	if(findQU(sWord)==110){
		return sWord.substring(2,sWord.length()) + "quay";
	}

//oh god
	if(findFirstVowel(sWord) == 1)
	{
		return sWord + "way";
	}


	/*
	if(findConsonantStringThree(sWord)==17){

		return sWord.substring(3,sWord.length()) + sWord.substring(0,3) + "ay" ;

	}else if(findConsonantStringTwo(sWord)==17){

		return sWord.substring(2,sWord.length()) + sWord.substring(0,2) + "ay" ;

	}else if(findConsonantStringOne(sWord)==17){

		return sWord.substring(1,sWord.length()) + sWord.substring(0,1) + "ay" ;

	}

	*/

	if(findConsonantStringOne(sWord)==17){
		if(findConsonantStringTwo(sWord)==17){
			if(findConsonantStringThree(sWord)==17){

				return sWord.substring(3,sWord.length()) + sWord.substring(0,3) + "ay" ;

			}
			return sWord.substring(2,sWord.length()) + sWord.substring(0,2) + "ay" ;

		}
		return sWord.substring(1,sWord.length()) + sWord.substring(0,1) + "ay" ;

	}else{
		return sWord.substring(1,sWord.length()) + sWord.substring(0,1) + "ay" ;
	}



	/*
	else
	{
		return "Error!";
	}
	*/
	//return "AAAAAAAAAAAAAAAAAAAAAAAAAAA";
}