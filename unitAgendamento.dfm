object FormAgendamentos: TFormAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Agendamentos'
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
    Width = 111
    Height = 16
    Align = alCustom
    Caption = 'C'#243'd. de Agendamento:'
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
    Width = 92
    Height = 16
    Align = alCustom
    Caption = 'Nome do Paciente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 176
    Top = 128
    Width = 28
    Height = 16
    Align = alCustom
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 288
    Top = 125
    Width = 28
    Height = 16
    Align = alCustom
    Caption = 'Hora:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 48
    Top = 237
    Width = 39
    Height = 16
    Align = alCustom
    Caption = 'M'#233'dico:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 176
    Top = 234
    Width = 71
    Height = 16
    Align = alCustom
    Caption = 'Especialidade:'
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
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 28
      Width = 134
      Height = 27
      Caption = 'Agendamentos'
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
      DataSource = DataClinica.dsAgendamentos
      TabOrder = 0
    end
  end
  object codAgendamento: TDBEdit
    Left = 48
    Top = 147
    Width = 111
    Height = 21
    Align = alCustom
    DataField = 'id'
    DataSource = DataClinica.dsAgendamentos
    ReadOnly = True
    TabOrder = 1
  end
  object data: TDBEdit
    Left = 176
    Top = 147
    Width = 89
    Height = 21
    Align = alCustom
    DataField = 'data'
    DataSource = DataClinica.dsAgendamentos
    MaxLength = 8
    TabOrder = 2
  end
  object hora: TDBEdit
    Left = 288
    Top = 147
    Width = 57
    Height = 21
    Align = alCustom
    DataField = 'hora'
    DataSource = DataClinica.dsAgendamentos
    MaxLength = 5
    TabOrder = 3
  end
  object medico: TDBEdit
    Left = 48
    Top = 256
    Width = 111
    Height = 21
    Align = alCustom
    DataField = 'medico'
    DataSource = DataClinica.dsAgendamentos
    TabOrder = 5
  end
  object especialidade: TDBComboBox
    Left = 176
    Top = 256
    Width = 169
    Height = 24
    DataField = 'especialidade'
    DataSource = DataClinica.dsAgendamentos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    Items.Strings = (
      'Alergia e Imunologia'
      'Anestesiologia'
      'Angiologia'
      'Cardiologia'
      'Cirurgia Cardiovascular'
      'Cirurgia da M'#227'o'
      'Cirurgia de cabe'#231'a e pesco'#231'o'
      'Cirurgia do Aparelho Digestivo'
      'Cirurgia Geral'
      'Cirurgia Pedi'#225'trica'
      'Cirurgia Pl'#225'stica'
      'Cirurgia Tor'#225'cica'
      'Cirurgia Vascular'
      'Cl'#237'nica M'#233'dica (Medicina interna)'
      'Coloproctologia'
      'Dermatologia'
      'Endoscopia'
      'Gastroenterologia'
      'Gen'#233'tica m'#233'dica'
      'Geriatria'
      'Ginecologia e obstetr'#237'cia'
      'Hematologia e Hemoterapia'
      'Homeopatia'
      'Infectologia'
      'Mastologia'
      'Nefrologia'
      'Neurocirurgia'
      'Neurologia'
      'Nutrologia'
      'Obstetr'#237'cia'
      'Oftalmologia'
      'Otorrinolaringologia'
      'Patologia'
      'Pediatria'
      'Pneumologia'
      'Psiquiatria'
      'Radiologia e Diagn'#243'stico por Imagem'
      'Radioterapia'
      'Reumatologia'
      'Toxicologia m'#233'dica'
      'Urologia')
    ParentFont = False
    TabOrder = 6
  end
  object NomePaciente: TDBLookupComboBox
    Left = 48
    Top = 200
    Width = 297
    Height = 21
    DataField = 'idpaciente'
    DataSource = DataClinica.dsAgendamentos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DataClinica.dsPacientes
    TabOrder = 4
  end
  object grid: TDBGrid
    Left = 366
    Top = 143
    Width = 210
    Height = 134
    DataSource = DataClinica.dsAgendamentos
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Visible = True
      end>
  end
end
