sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'treinamento/alfa/purchase/order/test/integration/FirstJourney',
		'treinamento/alfa/purchase/order/test/integration/pages/OrderHeaderList',
		'treinamento/alfa/purchase/order/test/integration/pages/OrderHeaderObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrderHeaderList, OrderHeaderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('treinamento/alfa/purchase/order') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrderHeaderList: OrderHeaderList,
					onTheOrderHeaderObjectPage: OrderHeaderObjectPage
                }
            },
            opaJourney.run
        );
    }
);