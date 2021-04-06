unit URestDmo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, clTcpClient, clTcpClientTls, clHttp,system.JSON,Vcl.StdCtrls, clOAuth, clHttpRequest
  ,Data.DBXJSON, System.IOUtils,idHTTP, Vcl.ExtCtrls;
type
  TForm1 = class(TForm)
    cmbCountry: TComboBox;
    cmbState: TComboBox;
    cmbCity: TComboBox;
    btnGenerate: TButton;
    Memo1: TMemo;
    clHttp1: TclHttp;
    btnValidate: TButton;
    clOAuth1: TclOAuth;
    Memo2: TMemo;
    clHttpRequest1: TclHttpRequest;
    pnlMaster: TPanel;
    Edit1: TEdit;
    lblCountry: TLabel;
    lblState: TLabel;
    lblCity: TLabel;
    lblToken: TLabel;
    procedure btnGenerateClick(Sender: TObject);
    procedure btnValidateClick(Sender: TObject);
    function GetUrlContent(s: string): string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnGenerateClick(Sender: TObject);
var req:string;
begin


Memo1.Lines.Text:=clHttp1.Get('www.universal-tutorial.com/api/getaccesstoken');
clHttp1.Authorization:='Bearer '+Edit1.Text;
end;

procedure TForm1.btnValidateClick(Sender: TObject);
var
  json: string;
  obj: TJSONObject;
  url: string;
begin
  try
    json := GetUrlContent('https://www.universal-tutorial.com/api/countries');
    obj := TJSONObject.ParseJSONValue(json) as TJSONObject;
    if obj = nil then raise Exception.Create('Error parsing JSON');
    try
      Memo2.Lines.Text:= obj.ToString;
    finally
      obj.Free;
    end;
  except
    on E : Exception do
    begin
      ShowMessage('Error' + sLineBreak + E.ClassName + sLineBreak + E.Message);
    end;
  end;
end;



function TForm1.GetUrlContent(s: string): string;
  var
  IdHTTP1: TIdHTTP;
begin
  IdHTTP1 := TIdHTTP.Create;
  try
    Result := IdHTTP1.Get(s);
  finally
    IdHTTP1.Free;
  end;
end;


end.
