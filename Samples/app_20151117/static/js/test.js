    function end() {
    	window.open('about:blank','_self').close();
    	return false;
    }
    function show_block(val){
       str = "hoge" + val;
       if(document.getElementById(str).style.display == ""){
          document.getElementById(str).style.display = "none";
       }else{
          document.getElementById(str).style.display = "";
       }
    }

    function wr() {
       document.write(100);
       document.write("<br>");
       document.write(1+2+3);
       document.write("<br>aaaa<br><font color='#ff0000'><small>(ãƒ»Ï‰ãƒ»ï¼›)</small></font>")
    }

    function goNext(param1) {
    	document.form1.key.value = param1;
        document.form1.method = "post";
        document.form1.action = "/hogehoge/DispatcherServlet";
        document.form1.submit();
        
    }
    
    function chkNext(param1){   		
    	    var str  = document.form1.ID.value;
    	    var str2 = document.form1.PW.value;

    	    if( str.match( /[^A-Za-z\s.-]+/ || /[^0-9]+/) ){
    	        alert("ƒ†[ƒUID‚ÍA”¼Šp‰p•¶š‚Ì‚İ‚Å“ü—Í‚µ‚Ä‰º‚³‚¢B");
    	        return 1;
    	    }
    	    if( str2.match( /[^A-Za-z\s.-]+/||/[^0-9]+/ ) ){
    	        alert("ƒpƒXƒ[ƒh‚ÍA”¼Šp‰p•¶š‚Ì‚İ‚Å“ü—Í‚µ‚Ä‰º‚³‚¢B");
    	        return 1;
    	    }
    	    // Às
    	    javascript:goNext(param1);
    	    return 0;
    	}
    
