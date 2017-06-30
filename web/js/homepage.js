$(document).ready(function () {

    // write ajax here
    // i'll show you an example

    $('#logout').click(doThisWhenLogoutClicked);


    $('#feedback').click(feedbackLinkClicked);
    $('#operators').click(operatorsLinkClicked);
    $('#plans').click(plansLinkClicked);
    $('#offers').click(offersLinkClicked);
    $('#history').click(historyLinkClicked);
    $('#transaction').click(transactionLinkClicked);






    function feedbackLinkClicked() {
        alert('Yo why YO CLICK ME!!!');
    }

    function operatorsLinkClicked()
    {

    }
    function plansLinkClicked()
    {

    }
    function offersLinkClicked()
    {
        $.ajax({
            url: "/ServletOffers",
            type: "POST"
        });

    }
    function historyLinkClicked()
    {

    }
    function transactionLinkClicked()
    {

    }

    function doThisWhenLogoutClicked() {
        $.ajax({
            url: "/ServletLogout",
            type: "POST"
        });
    }


});

aaeeeee