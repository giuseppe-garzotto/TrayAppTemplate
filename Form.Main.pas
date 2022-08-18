unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.AppEvnts;

type
  TfrmMain = class(TForm)
    tryApp: TTrayIcon;
    pmuTrayApp: TPopupMenu;
    About1: TMenuItem;
    Restore1: TMenuItem;
    N1: TMenuItem;
    apeTrayApp: TApplicationEvents;
    pmuApp: TPopupMenu;
    Minimize1: TMenuItem;
    N2: TMenuItem;
    About2: TMenuItem;
    procedure apeTrayAppMinimize(Sender: TObject);
    procedure Restore1Click(Sender: TObject);
    procedure Minimize1Click(Sender: TObject);
    procedure tryAppDblClick(Sender: TObject);
    procedure About2Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
  private
    { Private declarations }
    procedure MinimizeApp;
    procedure RestoreApp;
    procedure AboutBox;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.MinimizeApp;
begin
  { Hide the window and set its state variable to wsMinimized. }
  Self.Hide;
  WindowState := wsMinimized;

  { Show the animated tray icon and also a hint balloon. }
  tryApp.Visible := True;
  tryApp.Animate := True;
  if tryApp.BalloonHint <> '' then
    tryApp.ShowBalloonHint;
end;

procedure TfrmMain.RestoreApp;
begin
  { Hide the tray icon and show the window, setting its state property to
    wsNormal. }
  tryApp.Visible := False;
  Self.Show;
  WindowState := wsNormal;
  Application.BringToFront;
end;

procedure TfrmMain.AboutBox;
const
  Msg = 'TrayIcon application template' + #13#10 + #13#10 +
    'A simple application showing usage of TTrayIcon component.';
begin
  MessageDlg(Msg, mtInformation, [mbOk], 0);
end;

procedure TfrmMain.Minimize1Click(Sender: TObject);
begin
  MinimizeApp;
end;

procedure TfrmMain.tryAppDblClick(Sender: TObject);
begin
  RestoreApp;
end;

procedure TfrmMain.Restore1Click(Sender: TObject);
begin
  RestoreApp;
end;

procedure TfrmMain.apeTrayAppMinimize(Sender: TObject);
begin
  MinimizeApp;
end;

procedure TfrmMain.About1Click(Sender: TObject);
begin
  AboutBox;
end;

procedure TfrmMain.About2Click(Sender: TObject);
begin
  AboutBox;
end;

end.
