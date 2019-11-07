page 50100 "MyTable List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyTable;
    CardPageId = "MyTable Card";
    Editable = False;


    layout
    {
        area(Content)
        {
            repeater("Customer List")
            {
                field("No."; "No.")
                {
                    Editable = true;
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    Caption = 'Description';
                    ApplicationArea = all;
                }
            }
        }
    }


}