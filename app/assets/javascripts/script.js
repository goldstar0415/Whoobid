$(function(){
    
    /*
     *Registration form switching betwen individual and company
     */
    $("#individual-registration-selector").on("click", function(e){
        e.preventDefault();
        //alert("heho 2");
        if($("#individual-registration").is(":hidden")){
            $("#company-registration").hide();
            $("#company-registration-selector").parent("span").removeClass("registration-selector-active");
            $("#individual-registration").show();
            $("#individual-registration-selector").parent("span").addClass("registration-selector-active");
        }
    });
    
    $("#company-registration-selector").on("click", function(e){
        e.preventDefault();
        //alert("hehooo1");
        if($("#company-registration").is(":hidden")){
            $("#individual-registration").hide();
            $("#individual-registration-selector").parent("span").removeClass("registration-selector-active");
            $("#company-registration").show();
            $("#company-registration-selector").parent("span").addClass("registration-selector-active");
        }
    });
    /*
     *End Registration form switching betwen individual and company
     */
});