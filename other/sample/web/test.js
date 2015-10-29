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
    	        alert("ユーザIDは、半角英文字のみで入力して下さい。");
    	        return 1;
    	    }
    	    if( str2.match( /[^A-Za-z\s.-]+/||/[^0-9]+/ ) ){
    	        alert("パスワードは、半角英文字のみで入力して下さい。");
    	        return 1;
    	    }
    	    // 実行
    	    javascript:goNext(param1);
    	    return 0;
    	}
    