
function revisarMesa(idMesa){
    console.log('/servOrdenesUpdate?idmesa='+idMesa);
  fetch('/servOrdenesUpdate?idmesa='+idMesa)
  .then(response => response.text())
  .then(txt => {
      if(txt=="si"){
        console.log(txt);
        window.location.reload();
    } else {
        console.log(txt);
    }
  })
}

           $.ajax({
                    type: 'GET',
                    url: 'servOrdenesUpdate?idmesa='+idMesa,
                    contentType: 'text/plain',
                    dataType: 'text'
                }).done(function (r) {
                        if(r==='si'){                            
                            $("#tablaDatos").load('TablaOrdenes.jsp');
                        }
                    });