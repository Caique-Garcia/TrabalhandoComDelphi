program CliMed;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {FormPrincipal},
  unitCadastroPaciente in 'unitCadastroPaciente.pas' {FormCadastroPacientes},
  unitAgendamento in 'unitAgendamento.pas' {FormAgendamentos},
  unitBD in 'unitBD.pas' {DataClinica: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadastroPacientes, FormCadastroPacientes);
  Application.CreateForm(TFormAgendamentos, FormAgendamentos);
  Application.CreateForm(TDataClinica, DataClinica);
  Application.Run;
end.
