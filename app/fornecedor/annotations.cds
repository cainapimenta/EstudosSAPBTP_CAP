using OrderService as service from '../../srv/order-service';

annotate service.Fornecedor with {
    ID @UI.Hidden: true;
}

annotate service.Fornecedor with @(
    UI.HeaderInfo                : {
        TypeName      : 'Fornecedor',
        TypeNamePlural: 'Fornecedores',
        Title         : {Value: razaoSocial},
        Description   : {Value: code}
    },
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Código',
                Value: code,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Razão social',
                Value: razaoSocial,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Nome fantasia',
                Value: nomeFantasia,
            },
            {
                $Type: 'UI.DataField',
                Label: 'CNPJ',
                Value: cnpj,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'Código',
            Value: code,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Razão social',
            Value: razaoSocial,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Nome fantasia',
            Value: nomeFantasia,
        },
        {
            $Type: 'UI.DataField',
            Label: 'CNPJ',
            Value: cnpj,
        },
    ],
);
