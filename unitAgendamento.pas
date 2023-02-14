unit unitAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormAgendamentos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    codAgendamento: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    data: TDBEdit;
    Label3: TLabel;
    hora: TDBEdit;
    Label5: TLabel;
    medico: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    especialidade: TDBComboBox;
    NomePaciente: TDBLookupComboBox;
    grid: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgendamentos: TFormAgendamentos;

implementation

{$R *.dfm}

uses unitBD;

end.
