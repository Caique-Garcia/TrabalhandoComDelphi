unit unitBD;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataClinica = class(TDataModule)
    Connection: TFDConnection;
    dsAgendamentos: TDataSource;
    dsPacientes: TDataSource;
    tbAgendamentos: TFDTable;
    tdPacientes: TFDTable;
    tbAgendamentosid: TFDAutoIncField;
    tbAgendamentosidpaciente: TIntegerField;
    tbAgendamentosdata: TDateField;
    tbAgendamentoshora: TStringField;
    tbAgendamentosespecialidade: TStringField;
    tbAgendamentosmedico: TStringField;
    tdPacientesid: TFDAutoIncField;
    tdPacientescpf: TStringField;
    tdPacientesnome: TStringField;
    tdPacientescelular: TStringField;
    tdPacientesdatacadastro: TDateField;
    procedure tdPacientesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataClinica: TDataClinica;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unitCadastroPaciente;

{$R *.dfm}

procedure TDataClinica.tdPacientesAfterInsert(DataSet: TDataSet);
begin
  tdPacientesdatacadastro.Value := Date();
end;

end.
