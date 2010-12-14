fun getTime () = 
  result <- Process.exec "date" (textBlob "") 100;
  return (Process.blobText (Process.blob (result)))

fun timeLoop s =
  t <- rpc (getTime ());
  set s t;
  sleep 1000;
  timeLoop s

fun main () = 
  s <- source "" ;
  return <xml><head>
    <title>Current Server Time</title>
  </head>

  <body onload={spawn (timeLoop s)}>
    <dyn signal={t <- signal s; return <xml>{[t]}</xml>}/>
  </body>
</xml>
