unit UWebBrowser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFrmWebBrowser = class(TForm)
    PnlBase: TPanel;
    TxtUrl: TEdit;
    BtnBack: TButton;
    BtnGo: TButton;
    WebBrowser: TWebBrowser;
    procedure BtnGoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWebBrowser: TFrmWebBrowser;

implementation

{$R *.dfm}

procedure TFrmWebBrowser.BtnBackClick(Sender: TObject);
begin
WebBrowser.GoBack;
end;

procedure TFrmWebBrowser.BtnGoClick(Sender: TObject);
begin
WebBrowser.Navigate(TxtUrl.Text);
end;

procedure TFrmWebBrowser.FormCreate(Sender: TObject);
begin
    WebBrowser.Silent:=true;
end;

end.
