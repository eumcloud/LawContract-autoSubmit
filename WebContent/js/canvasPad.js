var canvas = $("#signature-pad canvas")[0];
        var sign = new SignaturePad(canvas, {
            minWidth: 3,
            maxWidth: 3,
            penColor: "#12191F"
        });
         
        $("[data-action]").on("click", function(){
            if ( $(this).data("action")=="clear" ){
                sign.clear();
            }
            else if ( $(this).data("action")=="save" ){
                if (sign.isEmpty()) {
                    alert("사인해 주세요!!");
                } else {
                    $.ajax({
                        url : "save.jsp",
                        method : "post",
                        dataType : "json",
                        data : {
                            sign : sign.toDataURL()
                        },
                        success : function(r){
                            alert("저장완료 : " + r.filename);
                            sign.clear();
                        },
                        error : function(res){
                            console.log(res);
                        }
                    });
                }
            }
        });
         
         
        function resizeCanvas(){
            var canvas = $("#signature-pad canvas")[0];
     
            var ratio =  Math.max(window.devicePixelRatio || 1, 1);
            canvas.width = canvas.offsetWidth * ratio;
            canvas.height = canvas.offsetHeight * ratio;
            canvas.getContext("2d").scale(ratio, ratio);
        }
         
        $(window).on("resize", function(){
            resizeCanvas();
        });
 
        resizeCanvas();
