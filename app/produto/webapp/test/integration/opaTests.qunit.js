sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'treinamento/alfa/produto/test/integration/FirstJourney',
		'treinamento/alfa/produto/test/integration/pages/ProdutoList',
		'treinamento/alfa/produto/test/integration/pages/ProdutoObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProdutoList, ProdutoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('treinamento/alfa/produto') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProdutoList: ProdutoList,
					onTheProdutoObjectPage: ProdutoObjectPage
                }
            },
            opaJourney.run
        );
    }
);