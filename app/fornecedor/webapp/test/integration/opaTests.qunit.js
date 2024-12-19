sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'treinamento/alfa/fornecedor/test/integration/FirstJourney',
		'treinamento/alfa/fornecedor/test/integration/pages/FornecedorList',
		'treinamento/alfa/fornecedor/test/integration/pages/FornecedorObjectPage'
    ],
    function(JourneyRunner, opaJourney, FornecedorList, FornecedorObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('treinamento/alfa/fornecedor') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFornecedorList: FornecedorList,
					onTheFornecedorObjectPage: FornecedorObjectPage
                }
            },
            opaJourney.run
        );
    }
);