Convert = function(){}

/**
 * Method: beginConversion
 *
 * Description: Begin Conversion
 *
 * @author Carl Anderson
 */
Convert.beginConversion = function(){
    $(".success-div").addClass("hidden");
    $(".error-div").addClass("hidden");

    var date = $("[name='date']").val();
    var value = $("[name='value']").val();
    var source = $("[name='source_currency']").val();
    var target = $("[name='target_currency']").val();

    var data = {
        date:date,
        value:value,
        source:source,
        target:target
    };


    $.ajax({
        url:'fx/convert',
        method:'POST',
        data:data,
        error: function(xhr,status,error){
            $(".success-div").addClass("hidden");
            $(".error-div").removeClass("hidden");
            $(".error-div .error-message").html("Failed to contact server");
        },
        success: function(result,status,xhr){
            Convert.conversionResponse(result);
        }
    });
}

/**
 * Method: conversionResponse
 *
 * Description: Conversion Response
 *
 * @author Carl Anderson
 */
Convert.conversionResponse = function(json){
    if(json.valid){
        $(".success-div").removeClass("hidden");
        $(".error-div").addClass("hidden");
        $(".exchange_rate").html(json.data.exchange_rate);
        $(".converted_value").html(json.data.value);
    }else{
        $(".success-div").addClass("hidden");
        $(".error-div").removeClass("hidden");
        $(".error-div .error-message").html(json.message);
    }
}