using OrderService as service from '../../srv/order-service';

annotate service.Produto with {
    ID @UI.Hidden: true
};

annotate service.Produto with @(
    UI.HeaderInfo                : {
        TypeName      : 'Produto',
        TypeNamePlural: 'Produtos',
        TypeImageUrl  : 'sap-icon://alert',
        Title         : {Value: name},
        Description   : {Value: code},
        ImageUrl      : image
    },
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Foto do produto',
                Value: image,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Código',
                Value: code,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Nome',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Descrição',
                Value: descr,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Preço',
                Value: price,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'Gerais',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: ' ',
            Value: image,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Código',
            Value: code,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Nome',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Descrição',
            Value: descr
        },
        {
            $Type: 'UI.DataField',
            Label: 'Preço',
            Value: price,
        },
    ],
);
