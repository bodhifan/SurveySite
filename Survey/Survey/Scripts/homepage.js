function OnChapterClick(aVariable)
{
    var doc = document;
    var win = window;
   // document.getElementById("firstdiv").style.display = "none";
    //$(aVariable).hide();
}

function ShowMe(myself)
{
    HidedAll();
    $(myself).show();
}
function HidedAll()
{
    $("#divwarpper div").hide();
}