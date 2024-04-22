unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ADOConnection1: TADOConnection;
    q1: TADOQuery;
    DataSource2: TDataSource;
    q1N: TWideStringField;
    q1nom: TWideStringField;
    q1prenom: TWideStringField;
    q1adress: TWideStringField;
    q1teel: TWideStringField;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}
procedure TForm1.Edit1Change(Sender: TObject);

begin
if edit1.Text ='' then q1.Filtered := false
else
begin
q1.Filtered := false;
q1.Filter := 'nom' +' LIKE ' + Quotedstr(edit1.Text +'%');
q1.Filtered := true;

end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form2.QuickRep1.Preview
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);

begin
  // «›Õ’ ≈–« ﬂ«‰ «·”ÿ— „Õœœ«
  if gdSelected in State then
  begin
    // —”„ Œ·›Ì… «·”ÿ— «·„Õœœ »«··Ê‰ «·„ÿ·Ê» (›Ì Â–Â «·Õ«·… «··Ê‰ «·√Õ„—)
    DBGrid1.Canvas.Brush.Color := clRed;
    DBGrid1.Canvas.FillRect(Rect);
    
    // —”„ ‰’ «·Œ·Ì…
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;


end.
