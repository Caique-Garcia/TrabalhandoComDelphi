object FormCadastroPacientes: TFormCadastroPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 328
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 48
    Top = 125
    Width = 23
    Height = 16
    Align = alCustom
    Caption = 'C'#243'd:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 134
    Top = 125
    Width = 23
    Height = 16
    Align = alCustom
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 181
    Width = 95
    Height = 16
    Align = alCustom
    Caption = 'Nome do Completo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 48
    Top = 237
    Width = 38
    Height = 16
    Align = alCustom
    Caption = 'Celular:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 168
    Top = 237
    Width = 77
    Height = 16
    Align = alCustom
    Caption = 'Data Cadastro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 328
    Top = 126
    Width = 97
    Height = 16
    Caption = 'Pesquisar Paciente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 89
    Align = alTop
    TabOrder = 7
    object Label1: TLabel
      Left = 48
      Top = 28
      Width = 207
      Height = 27
      Caption = 'Cadastro de Pacientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 328
      Top = 33
      Width = 230
      Height = 23
      DataSource = DataClinica.dsPacientes
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 48
    Top = 144
    Width = 57
    Height = 21
    Align = alCustom
    DataField = 'id'
    DataSource = DataClinica.dsPacientes
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 134
    Top = 144
    Width = 147
    Height = 21
    Align = alCustom
    DataField = 'cpf'
    DataSource = DataClinica.dsPacientes
    MaxLength = 14
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 48
    Top = 200
    Width = 233
    Height = 21
    Align = alCustom
    DataField = 'nome'
    DataSource = DataClinica.dsPacientes
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 48
    Top = 256
    Width = 97
    Height = 21
    Align = alCustom
    DataField = 'celular'
    DataSource = DataClinica.dsPacientes
    MaxLength = 15
    TabOrder = 3
  end
  object dataCad: TDBEdit
    Left = 168
    Top = 256
    Width = 113
    Height = 21
    Align = alCustom
    DataField = 'datacadastro'
    DataSource = DataClinica.dsPacientes
    ReadOnly = True
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 181
    Width = 208
    Height = 96
    DataSource = DataClinica.dsPacientes
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Pacientes Cadastrados'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object pesquisarPaciente: TEdit
    Left = 328
    Top = 144
    Width = 202
    Height = 21
    TabOrder = 5
    OnChange = pesquisarPacienteChange
  end
end
