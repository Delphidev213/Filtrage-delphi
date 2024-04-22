unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ADODB, DB, ExtCtrls, QRCtrls;

type
  TForm2 = class(TForm)
    QuickRep1: TQuickRep;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    DataSource1: TDataSource;
    ADOQuery1N: TWideStringField;
    ADOQuery1nom: TWideStringField;
    ADOQuery1prenom: TWideStringField;
    ADOQuery1adress: TWideStringField;
    ADOQuery1teel: TWideStringField;
    DataSource2: TDataSource;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
form1.show
end;

end.
