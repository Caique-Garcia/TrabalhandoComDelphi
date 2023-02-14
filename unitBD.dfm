object DataClinica: TDataClinica
  OldCreateOrder = False
  Height = 393
  Width = 578
  object Connection: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 72
  end
  object dsAgendamentos: TDataSource
    DataSet = tbAgendamentos
    Left = 256
    Top = 72
  end
  object dsPacientes: TDataSource
    DataSet = tdPacientes
    Left = 88
    Top = 240
  end
  object tbAgendamentos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Connection
    TableName = 'clinica.agendamentos'
    Left = 184
    Top = 72
    object tbAgendamentosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbAgendamentosidpaciente: TIntegerField
      FieldName = 'idpaciente'
      Origin = 'idpaciente'
      Required = True
    end
    object tbAgendamentosdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object tbAgendamentoshora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      EditMask = '!90:00;1;_'
      Size = 8
    end
    object tbAgendamentosespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 26
    end
    object tbAgendamentosmedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 50
    end
  end
  object tdPacientes: TFDTable
    Active = True
    AfterInsert = tdPacientesAfterInsert
    IndexFieldNames = 'id'
    Connection = Connection
    TableName = 'clinica.paciente'
    Left = 88
    Top = 160
    object tdPacientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tdPacientescpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object tdPacientesnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object tdPacientescelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 16
    end
    object tdPacientesdatacadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
  end
end
