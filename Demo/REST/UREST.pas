unit UREST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.JSON, System.JSON, Vcl.StdCtrls,
  clHttpRequest, clTcpClient, clTcpClientTls, clHttp, Vcl.ExtCtrls, Vcl.ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TfrmREST = class(TForm)
    pnlMaster: TPanel;
    cmbCountry: TComboBox;
    cmbState: TComboBox;
    cmbCity: TComboBox;
    http: TclHttp;
    httpReq: TclHttpRequest;
    mmoToken: TMemo;
    btnGet: TButton;
    pnlAuthenticate: TPanel;
    pnlDropDown: TPanel;
    lblCountry: TLabel;
    lblState: TLabel;
    lblCity: TLabel;
    lblTitle: TLabel;
    lblToken: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnGetClick(Sender: TObject);
    procedure cmbStateChange(Sender: TObject);
    procedure cmbCountrySelect(Sender: TObject);
    procedure cmbStateSelect(Sender: TObject);
    procedure cmbCityClick(Sender: TObject);
   private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmREST: TfrmREST;

implementation

{$R *.dfm}

procedure TfrmREST.btnGetClick(Sender: TObject);
var
  LITEM, lJsonValue: TJSONValue;
  token: WideString;
  country: TStringStream;
begin
ShowMessage(mmoToken.Lines.Text.Length.ToString);
  token := 'Bearer ' + mmoToken.Text;
  httpReq.Header.Accept := 'application/json';
  httpReq.Header.Authorization := token;
  country := TStringStream.Create();
  http.SendRequest('GET', 'https://www.universal-tutorial.com/api/countries/',
  httpReq, country);
  lJsonValue := TJsonObject.ParseJSONValue(country.DataString);
    if lJsonValue <> nil then
    try
      begin
        for LITEM in lJsonValue as TJSONArray do
        begin
          cmbCountry.Items.Add(((LITEM as TJsonObject).Get('country_name')
            .JsonValue as TJSONString).Value);
        end;
      end;
    finally
      lJsonValue.Free;
    end;
end;


procedure TfrmREST.cmbCityClick(Sender: TObject);
begin
lblCity.Caption:='City : '+cmbCity.Text;
end;

procedure TfrmREST.cmbCountrySelect(Sender: TObject);
var
  cntryName: String;
  LITEM, lJsonValue: TJSONValue;
  c_response: TStringStream;
  token: WideString;
begin
  cntryName := cmbCountry.Text;
  lblCountry.Caption:='Country : '+cntryName;
  token := 'Bearer ' + mmoToken.Text;
   httpReq.Header.Accept := 'application/json';
  httpReq.Header.Authorization := token;
  c_response := TStringStream.Create();
  http.SendRequest('GET', 'https://www.universal-tutorial.com/api/states/' +
  cntryName, httpReq, c_response);
  lJsonValue := TJsonObject.ParseJSONValue(c_response.DataString);
   if lJsonValue <> nil then
    try
      begin
        for LITEM in lJsonValue as TJSONArray do
        begin
          cmbState.Items.Add(((LITEM as TJsonObject).Get('state_name')
            .JsonValue as TJSONString).Value);
        end;
      end;
    finally
      lJsonValue.Free;
    end;

end;

procedure TfrmREST.cmbStateChange(Sender: TObject);
begin
  Update;
end;

procedure TfrmREST.cmbStateSelect(Sender: TObject);
var
  stName: String;
  LITEM, lJsonValue: TJSONValue;
  s_response: TStringStream;
  token: WideString;
begin
  stName := cmbState.Text;
  lblState.Caption:='State : '+stName;
  token := 'Bearer ' + mmoToken.Text;
  httpReq.Header.Accept := 'application/json';
  httpReq.Header.Authorization := token;
  s_response := TStringStream.Create();
  http.SendRequest('GET', 'https://www.universal-tutorial.com/api/cities/' +
  stName, httpReq, s_response);
  lJsonValue := TJsonObject.ParseJSONValue(s_response.DataString);
    if lJsonValue <> nil then
    try
      begin
        for LITEM in lJsonValue as TJSONArray do
        begin
          cmbCity.Items.Add(((LITEM as TJsonObject).Get('city_name')
            .JsonValue as TJSONString).Value);
        end;
      end;
    finally
      lJsonValue.Free;
    end;
end;
 procedure TfrmREST.FormShow(Sender: TObject);
var
  token_responce: TStringStream;

begin
  httpReq.Header.Accept := 'application/json';

  httpReq.HeaderSource.AddPair('api-token','z1dYuraUVWBAnyO5F-0Pp0kLhjRcKfDnYkByhvKBBVjR21qRA_aOL3BPqU9u05RoSg');
  httpReq.HeaderSource.AddPair('user-email','test12kct@gmail.com');
  token_responce := TStringStream.Create();
  http.SendRequest('GET','https://www.universal-tutorial.com/api/getaccesstoken', httpReq,token_responce);





  mmoToken.Lines.Text:=token_responce.DataString;
end;

end.
