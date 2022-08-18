program TrayAppTemplate;

uses
  Vcl.Forms,
  Form.Main in 'Form.Main.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'TrayIcon application template';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
