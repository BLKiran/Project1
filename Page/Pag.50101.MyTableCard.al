page 50101 "MyTable Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = MyTable;

    layout
    {
        area(Content)
        {
            group(General)
            {

                field("No."; "No.")
                {
                    ApplicationArea = All;
                    trigger OnAssistEdit()
                    var
                    //myInt: Integer;
                    begin

                    end;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Customer; Customer)
                {
                    Caption = 'Customer ID';
                    ApplicationArea = All;
                }
                field(CustomerName; CustomerName)
                {
                    Caption = 'Customer Name';
                    ApplicationArea = All;
                }
                field(CustomerType; CustomerType)
                {
                    Caption = 'Customer Type';
                    ApplicationArea = All;
                }
                field(DateofEntry; DateofEntry)
                {
                    Caption = 'Date of Entry';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(CreatedBy; CreatedBy)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}