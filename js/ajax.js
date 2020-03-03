$(function(){
    $('#search').focus();
    $('#search_form').submit(function(e){ //inabilitar a submit 
        e.preventDefault();
    })

    $('#search').keyup(function(){         // al escribir un dato
        var envio = $('#search').val();

        $('#logo').html('<h2>El buscador de Daniel</h2> <hr />') // apartando logo de lo resultados de la busqueda
         $('#resultados').html('<h2> <img src="img/Loading.gif" width="20" alt="" /> Cargando </h2>'); // renderizando loa resultados de la busqueda

        $.ajax({                                                 // eviando los caracteres en tiempo real con ajax
            type: 'POST',
            url: 'php/buscador.php', // enviando data buscador.php
            data: ('search='+envio), //  un parametro por http
            success: function(resp){
                if(resp!=""){
                    $('#resultados').html(resp);
                }
            }
        })
    })
})