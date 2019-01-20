<html>
<head>
<title>Words Galore!</title>
<style type="text/css">
@import url(iwords.css);
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script language=JavaScript>

function verify( form, name ) {
  var text = form.elements[ name ];

  if ((text.value != null) && (text.value != "")) {
    return true;
  }
  alert("Input cannot be empty.");
  return false;
}

//
// based on: <https://www.w3schools.com/howto/howto_js_tabs.asp>
//
function openTab( event, id ) {
    // Get all elements with class="tabContent" and hide them
    tabContent = document.getElementsByClassName( "tabContent" );
    for (i = 0; i < tabContent.length; i++) {
        tabContent[i].style.display = "none";
    }

    // Get all elements with class="tabLinks" and remove the class "active"
    tabLinks = document.getElementsByClassName( "tabLinks" );
    for (i = 0; i < tabLinks.length; i++) {
        tabLinks[i].className = tabLinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById( id ).style.display = "block";
    event.currentTarget.className += " active";
}

//
// based on: <https://stackoverflow.com/questions/133925/javascript-post-request-like-a-form-submit>
//
function post( file, map ) {
   var form = document.createElement("form");
   form.setAttribute( "method", "post");
   form.setAttribute( "action",  file );

   for (var key in map) {
       var hiddenField = document.createElement( "input" );
       hiddenField.setAttribute( "type", "hidden");
       hiddenField.setAttribute( "name",  key );
       hiddenField.setAttribute( "value", map[ key ]);

      form.appendChild( hiddenField );
    }
    document.body.appendChild( form );
    form.submit();
}
</script>
</head>
<SCRIPT language=JavaScript>
function verify( form ) {
file = form.elements[ "uploaded" ];
if (( file.value != null ) && ( file.value != "" )) {
return confirm("Upload " + file.value + "?");
}
alert( "Please provide a filename." );
return false;
}
</SCRIPT>
<body>
<div class="tab">
<button class="tabLinks" onclick="openTab( event, 'Home' )">Home</button>
  <button class="tabLinks" onclick="openTab(event, 'A')">A</button>
  <button class="tabLinks" onclick="openTab(event, 'B')">B</button>
  <button class="tabLinks" onclick="openTab(event, 'C')">C</button>
  <button class="tabLinks" onclick="openTab(event, 'D')">D</button>
  <button class="tabLinks" onclick="openTab(event, 'E')">E</button>
  <button class="tabLinks" onclick="openTab(event, 'F')">F</button>
  <button class="tabLinks" onclick="openTab(event, 'G')">G</button>
  <button class="tabLinks" onclick="openTab(event, 'H')">H</button>
  <button class="tabLinks" onclick="openTab(event, 'I')">I</button>
  <button class="tabLinks" onclick="openTab(event, 'J')">J</button>
  <button class="tabLinks" onclick="openTab(event, 'K')">K</button>
  <button class="tabLinks" onclick="openTab(event, 'L')">L</button>
  <button class="tabLinks" onclick="openTab(event, 'M')">M</button>
  <button class="tabLinks" onclick="openTab(event, 'N')">N</button>
  <button class="tabLinks" onclick="openTab(event, 'O')">O</button>
  <button class="tabLinks" onclick="openTab(event, 'P')">P</button>
  <button class="tabLinks" onclick="openTab(event, 'Q')">Q</button>
  <button class="tabLinks" onclick="openTab(event, 'R')">R</button>
  <button class="tabLinks" onclick="openTab(event, 'S')">S</button>
  <button class="tabLinks" onclick="openTab(event, 'T')">T</button>
  <button class="tabLinks" onclick="openTab(event, 'U')">U</button>
  <button class="tabLinks" onclick="openTab(event, 'V')">V</button>
  <button class="tabLinks" onclick="openTab(event, 'W')">W</button>
  <button class="tabLinks" onclick="openTab(event, 'X')">X</button>
  <button class="tabLinks" onclick="openTab(event, 'Y')">Y</button>
  <button class="tabLinks" onclick="openTab(event, 'Z')">Z</button>
  <button class="tabLinks" onclick="openTab( event, 'Admin'  )">Admin</button>
  </form>
</div>
<div id='Home' class='tabContent'>
  <h3>Words Galore!</h3>
  <p>Welcome to Words Galore! where you can read, search and upload words from a text file.</p>
</div>
<div id='A' class='tabContent'>
  <h3>A</h3>
</div>

<div id='B' class='tabContent'>
  <h3>B</h3>
</div>
<div id='C' class='tabContent'>
  <h3>C</h3>
</div>

<div id='D' class='tabContent'>
  <h3>D</h3>
</div>
<div id='E' class='tabContent'>
  <h3>E</h3>
</div>

<div id='F' class='tabContent'>
  <h3>F</h3>
</div>
<div id='G' class='tabContent'>
  <h3>G</h3>
</div>

<div id='H' class='tabContent'>
  <h3>H</h3>
</div>
<div id='I' class='tabContent'>
  <h3>I</h3>
</div>

<div id='J' class='tabContent'>
  <h3>J</h3>
</div>
<div id='K' class='tabContent'>
  <h3>K</h3>
</div>

<div id='L' class='tabContent'>
  <h3>L</h3>
</div>
<div id='M' class='tabContent'>
  <h3>M</h3>
</div>

<div id='N' class='tabContent'>
  <h3>N</h3>
</div>
<div id='O' class='tabContent'>
  <h3>O</h3>
</div>

<div id='P' class='tabContent'>
  <h3>P</h3>
</div>
<div id='Q' class='tabContent'>
  <h3>Q</h3>
</div>

<div id='R' class='tabContent'>
  <h3>R</h3>
</div>
<div id='S' class='tabContent'>
  <h3>S</h3>
</div>

<div id='T' class='tabContent'>
  <h3>T</h3>
</div>
<div id='U' class='tabContent'>
  <h3>U</h3>
</div>

<div id='V' class='tabContent'>
  <h3>V/h3>
</div>
<div id='W' class='tabContent'>
  <h3>W</h3>
</div>

<div id='X' class='tabContent'>
  <h3>X</h3>
</div>
<div id='Y' class='tabContent'>
  <h3>Y</h3>
</div>

<div id='Z' class='tabContent'>
  <h3>Z</h3>
</div>
<div id='Admin' class='tabContent'>
  <h3>Admin</h3>
  <form action="password.php" method="post" onsubmit="return verify(this,'password');">
     <p>
     Password
     <input type="password" name="password" />
     <input type="submit"   value="Login" />
     </p>
  </form>
  <form enctype="multipart/form-data" action="uploadFile.php" method="post"
	onsubmit="return verify(this);" >
	 Filename <input type="file" name="uploaded" size="1000" /><br />
	 <p>
	 <input type="submit" value="Upload" />
	 </p>
  </form>
</div>

</body>
<?php
	$letter = $_POST;
	if ($letter == 'A'){
		//select * from wordstable where entry like 'A%'
	}
	if ($letter == 'B'){
		
	}
	if ($letter == 'C'){
		
	}
	if ($letter == 'D'){
		
	}
	if ($letter == 'E'){
		
	}
	if ($letter == 'F'){
		
	}
	if ($letter == 'G'){
		
	}
	if ($letter == 'H'){
		
	}
	if ($letter == 'I'){
		
	}
	if ($letter == 'J'){
		
	}
	if ($letter == 'K'){
		
	}
	if ($letter == 'L'){
		
	}
	if ($letter == 'M'){
		
	}
	if ($letter == 'N'){
		
	}
	if ($letter == 'O'){
		
	}
	if ($letter == 'P'){
		
	}
	if ($letter == 'Q'){
		
	}
	if ($letter == 'R'){
		
	}
	if ($letter == 'S'){
		
	}
	if ($letter == 'T'){
		
	}
	if ($letter == 'U'){
		
	}
	if ($letter == 'V'){
		
	}
	if ($letter == 'W'){
		
	}
	if ($letter == 'X'){
		
	}
	if ($letter == 'Y'){
		
	}
	if ($letter == 'Z'){
		
	}
	
?>



</html>