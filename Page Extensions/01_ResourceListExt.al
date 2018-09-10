pageextension 123456701 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    layout
    {
       mofify(Type)
       {
            Visible = ShowType;
       } 
       addafter(Type)
       {
           field("CSD Resource Type")
           {

           }
           field("CSD Maximum Participants"; " CSD Maximum Participants")
           {
               Visible = ShoMaxFields;
           }
       }
    }
    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(Type)=format(Type::machine));
     FilterGroup(0);
     
     end;


    actions
    {
        // Add changes to page actions here
    }
    
    var
        [InDataSet]
        ShowType: Boolean;
        [inDataSet] 
        ShowMaxField: Boolean;


}