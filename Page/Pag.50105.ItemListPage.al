pageextension 50105 ItemListPage extends "Item List"
{
    layout
    {
        addafter("Vendor No.")
        {
            field("Qty. on Prod. Order"; "Qty. on Prod. Order")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies Quantity on Production Order.';
                Visible = false;
            }
            field("Budget Quantity"; "Budget Quantity")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies Quantity on Production Order.';
                Visible = false;

            }
            field("Budgeted Amount"; "Budgeted Amount")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies Budgeted Amount.';
                Visible = false;
            }
            field("COGS (LCY)"; "COGS (LCY)")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies Cost of Goods Sold.';
                Visible = false;
            }
            field(Comment; Comment)
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Shows Comments Mentioned.';
                Visible = true;
            }
        }
        addafter(Control1)
        {
            part(ProductionBOMLines; "Production BOM Lines")
            {
                Caption = 'Production BOM Lines';
                ApplicationArea = All;
                Visible = false;
                Editable = false;

            }
        }
    }
    trigger OnOpenPage()
    begin
        Message('Hi Welcome to Business Central learning Classes!!');
        CurrPage.Close();
        Page.RunModal(9305);
    end;

    trigger OnClosePage()
    begin
        Message('Please Logout and go Home!!  :)');
    end;

}