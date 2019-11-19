<b>Hola mundo!</b>

<h1>test</h1>


<cfscript>
 if(StructIsEmpty(form)){
     
 }else{
     WriteDump(Form.FieldNames);
 }
</cfscript>


<cfhttp result="result" method="GET" charset="utf-8" url="https://httpbin.org/">
   <!--- <cfhttpparam name="q" type="formfield" value="cfml"> --->
</cfhttp>
<cfdump var="#result#">


<cfdump var = "1 + 2"><br>
<cfdump var = "#1 + 2#"><br>
<cfset test = "1 + 2 ISf #1 + 2#"><br>

<cfoutput>
#test#
</cfoutput>

<cfdump  var="#test#">

<cfset MyWorld = 4>
<cfoutput>#MyWorld#</cfoutput>
<cfdump var = "#MyWorld#">

<cfset DateToday = "Today is: " & now() & "fin de cadena">

<cfset DateArray = [dateFormat(now(), "short"), dateFormat(dateadd('d',1,now()), "short"), dateFormat(dateadd('d',2,now()), "short")]>
<cfset ArrayAppend( DateArray,  "Tropical Drinks")>
<cfset ArrayAppend( DateArray,  "Fanta")>



<!---<cfdump var = "#DateArray#">--->

<cfloop array="#DateArray#" index="thing">
    <cfoutput>#thing# <br> </cfoutput>
</cfloop>


<cfif MyWorld EQ 3>
    <cfoutput>
        El valor de MyWorld es 3
    </cfoutput>
<cfelse>
 <cfoutput>
  El valor de myworld es distinto de 3
 </cfoutput>
</cfif>

<cfscript>
myValue ='ColFusion';
    if ( myValue == 'ColdFusion' ) {
        x=1;
    } else if ( myValue != '.NET' ) {
        x = 2;
    } else {
        x=3;

    }

writeOutput( 'Value of x was' & x & 'ok' & x );

</cfscript>
<cfset DateStruct = { today=dateFormat(now(), "short"), tomorrow=dateFormat(dateadd('d',1,now()), "short"), later=dateFormat(dateadd('d',2,now()), "short") }>
<cfdump var = "#DateStruct#">

<cfdump var = "#DateToday#">

<cfset variable = "value">
<cfscript>
    variable = "value2";
</cfscript>


<cfset FruitArray = ["apple", "banana", "cherry"]>
<cfloop from="1" to="#arrayLen( FruitArray)#" index="i">
    <cfoutput>#FruitArray[i]#</cfoutput>
</cfloop>

<cfscript>
    FruitArray = ["apple", "banana", "cherry"];
    for( i=1; i <= arrayLen(FruitArray); i++){
        writeOutput(FruitArray[i]);
    }
</cfscript>


<cfscript>
    myquery = QueryExecute('SELECT * FROM User', []);
</cfscript>


<cfscript>
    /*QueryExecute(
        'INSERT INTO User (email,phone,password,role) VALUES ("test@test.es","123123123","123",2)',
        [],
        {result="qryResult" }
    );*/
</cfscript>

<cfdump var="#myquery#">

<cfoutput query=myquery>
 #myquery.name#
</cfoutput>
<cfscript>
public void function myFunction(){
    writeOutput('welcome');
}
</cfscript>
<cfscript>
MyFunction();
</cfscript>

<cfscript>
Category = EntityLoad("Category");
WriteDump(Category);

</cfscript>
<cfscript>
   /* QueryExecute(
        'INSERT INTO Category (titulo,descripcion,principal_photo) VALUES ("Hogar2","Anuncios sobre hogar","imagen.jpg")',
        [],
        {result="qryResult" }
    );*/
</cfscript>


<!--- FORMULARIO ESTANDAR EN HTML --->
<form id="testForm" method='post'> 
Name: <input type="text" name="name"><br/>
 Email: <input type="text" name="email"><br/> 
 Gender: <select name="gender"> <option value="M">Male</option> <option value="F">Female</option> </select><br/>
  <input type="submit" value="Save" />
</form>
<!--- FIN FORMULARIO ESTANDAR EN HTML --->

<!--- FORMULARIO CON ETIQUETAS CFFORM --->
<cfform name="cfformexample"> 
<h4>This example displays radio button input type for cfinput.</h4> 
Yes <cfinput type = "Radio" name = "TestVal1" value = "Yes" checked> 
No <cfinput type = "Radio" name = "TestVal1" value = "No"> 
<h4>This example displays checkbox input type for cfinput.</h4> 
<cfinput type = "Checkbox" name = "ChkTest2" value = "Yes"> 
<h4>This shows client-side validation for cfinput text boxes.</h4> 
(<i>This item is optional</i>) 
Please enter a credit card number: 
<cfinput type = "Text" name = "TextSample"
message = "Please enter a Credit Card Number"
validate = "creditcard" required = "No"> 
<h4>This example shows the use of the cfslider tag.</h4> 
Rate your approval of this example from 1 to 10 by sliding control. 
1 <cfslider name = "sampleSlider" width="100"
label = "Page Value: " range = "1,10"
message = "Please enter a value from 1 to 10"> 10 
<p><cfinput type = "submit" name = "submit" value = "show me the result"> 
<cfinput type = "hidden" name = "oncethrough" value = "Yes"></p> 
</cfform>
<!--- FIN FORMULARIO ETIQUERAS CFFORM --->