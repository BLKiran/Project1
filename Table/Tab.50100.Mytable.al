table 50100 MyTable
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "MyTable List";
    LookupPageId = "MyTable List";



    fields
    {

        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Editable = true;
            TableRelation = "No. Series";
            trigger OnValidate()
            begin
                //Body
            end;
        }
        field(2; "Description"; Text[30])
        {
            Editable = true;
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; Customer; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Customer."No." WHERE("Location Code" = const('YELLOW'));
            trigger OnValidate()
            var
                MyCust: Record Customer;

            begin
                if Customer <> '' then
                    MyCust.GET(Customer);
                CustomerName := MyCust.Name;

            end;



        }
        field(4; CustomerName; Text[2048])
        {
            DataClassification = CustomerContent;
            //FieldPropertyName = FieldPropertyValue;
        }
        field(5; CustomerType; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = ,Local,National,International;
            trigger OnValidate()

            begin
                DateofEntry := CurrentDateTime();
            end;
        }
        field(6; DateofEntry; DateTime)
        {
            DataClassification = CustomerContent;

        }
        field(7; CreatedBy; Text[50])
        {
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }

    }


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}