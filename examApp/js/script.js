
    //<% --Home --%>
    $("#H").click(function () {
        if ($("#Home").first().is(":hidden")) {
            $("#Home").slideDown("slow");
            $("#Astudent").hide();
            $("#Aprof").hide();
            $("#level").hide();
            $("#dep").hide();
            $("#Asubj").hide();
            $("#Edit").hide();
            $("#EditDepartment").hide();
            $("#EditSubject").hide();
        }
        else {
            $("#Home").hide();
        }
    });

    //<% --prof --%>
    $("#P").click(function () {
        if ($("#Aprof").first().is(":hidden")) {
            $("#Aprof").slideDown("slow");
            $("#Home").hide();
            $("#Astudent").hide();
            $("#level").hide();
            $("#dep").hide();
            $("#Asubj").hide();
            $("#Edit").hide();
            $("#EditDepartment").hide();
            $("#EditSubject").hide();
        }
        else {
            $("#Aprof").hide();
        }
    });

    //<% --student --%>
    $("#S").click(function () {
        if ($("#Astudent").first().is(":hidden")) {
            $("#Astudent").slideDown("slow");
            $("#Home").hide();
            $("#Aprof").hide();
            $("#level").hide();
            $("#dep").hide();
            $("#Asubj").hide();
            $("#Edit").hide();
            $("#EditDepartment").hide();
            $("#EditSubject").hide();
        }
        else {
            $("#Astudent").hide();
        }
    });

    //<% --level --%>
    $("#L").click(function () {
        if ($("#level").first().is(":hidden")) {
            $("#level").slideDown("slow");
            $("#Home").hide();
            $("#Astudent").hide();
            $("#Aprof").hide();
            $("#dep").hide();
            $("#Asubj").hide();
            $("#Edit").hide();
            $("#EditDepartment").hide();
            $("#EditSubject").hide();
        }
        else {
            $("#level").hide();
        }
    });

     //<% --department --%>
    $("#D").click(function () {
        if ($("#dep").first().is(":hidden")) {
            $("#dep").slideDown("slow");
            $("#Home").hide();
            $("#Astudent").hide();
            $("#level").hide();
            $("#Aprof").hide();
            $("#Asubj").hide();
            $("#Edit").hide();
            $("#EditDepartment").hide();
            $("#EditSubject").hide();
        }
        else {
            $("#dep").hide();
        }
    });

    //<% --Subjetc --%>
    $("#C").click(function () {
        if ($("#Asubj").first().is(":hidden")) {
            $("#Asubj").slideDown("slow");
            $("#Home").hide();
            $("#Astudent").hide();
            $("#level").hide();
            $("#dep").hide();
            $("#Aprof").hide();
            $("#Edit").hide();
            $("#EditDepartment").hide();
            $("#EditSubject").hide();
        }
        else {
            $("#Asubj").hide();
        }

    });

//<% --

//    $("#E").click(function () {
//        if ($("#Edit").first().is(":hidden")) {
//            $("#Edit").slideDown("slow");
//            $("#Home").hide();
//            $("#Astudent").hide();
//            $("#level").hide();
//            $("#dep").hide();
//            $("#Asubj").hide();
//            $("#Aprof").hide();
//            $("#EditLevel").hide();
//        }
//        else {
//            $("#Edit").hide();
//        }
//    });
//--%>
      //<% --EditDepartment --%>
    $("#ED").click(function () {
        if ($("#EditDepartment").first().is(":hidden")) {
            $("#EditDepartment").slideDown("slow");
            $("#Home").hide();
            $("#Astudent").hide();
            $("#level").hide();
            $("#dep").hide();
            $("#Asubj").hide();
            $("#Aprof").hide();
            $("#Edit").hide();
            $("#EditSubject").hide();
        }
        else {
            $("#EditDepartment").hide();
        }

    });
    
          //<% --EditSubject --%>
    $("#ES").click(function () {
        if ($("#EditSubject").first().is(":hidden")) {
            $("#EditSubject").slideDown("slow");
            $("#Home").hide();
            $("#Astudent").hide();
            $("#level").hide();
            $("#dep").hide();
            $("#Asubj").hide();
            $("#Aprof").hide();
            $("#Edit").hide();
            $("#EditDepartment").hide();
        }
        else {
            $("#EditEditSubject").hide();
        }

    });