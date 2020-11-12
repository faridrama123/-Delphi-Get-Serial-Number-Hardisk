unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
 uses
      ActiveX,
      ComObj,Clipbrd;

    var
      FSWbemLocator : OLEVariant;
      FWMIService   : OLEVariant;

    function  GetWMIstring(const WMIClass, WMIProperty:string): string;
    const
      wbemFlagForwardOnly = $00000020;
    var
      FWbemObjectSet: OLEVariant;
      FWbemObject   : OLEVariant;
      oEnum         : IEnumvariant;
      iValue        : LongWord;
    begin;
      Result:='';
      FWbemObjectSet:= FWMIService.ExecQuery(Format('Select %s from %s',[WMIProperty, WMIClass]),'WQL',wbemFlagForwardOnly);
      oEnum         := IUnknown(FWbemObjectSet._NewEnum) as IEnumVariant;
      if oEnum.Next(1, FWbemObject, iValue) = 0 then

  if not VarIsNull(FWbemObject.Properties_.Item(WMIProperty).Value) then

     Result:=FWbemObject.Properties_.Item(WMIProperty).Value;

    FWbemObject:=Unassigned;
    end;
procedure TForm1.FormCreate(Sender: TObject);
var
      x:string;
      Y:string;
    begin
    Label1.Color := ClLime;
      FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
      FWMIService   := FSWbemLocator.ConnectServer('localhost', 'root\CIMV2', '', '');

      X:=GetWMIstring('Win32_BIOS','SerialNumber');
      Y:=GetWMIstring('Win32_PhysicalMedia','SerialNumber');
      Label1.Caption :='Model  Number : ';
      Label2.Caption :='Serial Number : ';
      Label4.Caption := '      '+X;
      Label3.Caption := Y;

               end;
procedure TForm1.Button1Click(Sender: TObject);
begin
Clipboard.AsText := Label1.Caption + Label4.Caption + #13#10 + Label2.Caption + Label3.Caption;
end;

end.
