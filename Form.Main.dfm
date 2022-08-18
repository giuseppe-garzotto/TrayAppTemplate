object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'TrayIcon application template'
  ClientHeight = 223
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pmuApp
  PixelsPerInch = 96
  TextHeight = 13
  object tryApp: TTrayIcon
    BalloonTitle = 'TrayIcon application template'
    BalloonFlags = bfInfo
    PopupMenu = pmuTrayApp
    OnDblClick = tryAppDblClick
    Left = 96
    Top = 24
  end
  object pmuTrayApp: TPopupMenu
    Left = 40
    Top = 24
    object Restore1: TMenuItem
      Caption = '&Restore...'
      OnClick = Restore1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object About1: TMenuItem
      Caption = '&About...'
      OnClick = About1Click
    end
  end
  object apeTrayApp: TApplicationEvents
    OnMinimize = apeTrayAppMinimize
    Left = 176
    Top = 24
  end
  object pmuApp: TPopupMenu
    Left = 40
    Top = 80
    object Minimize1: TMenuItem
      Caption = '&Minimize...'
      OnClick = Minimize1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object About2: TMenuItem
      Caption = '&About...'
      OnClick = About2Click
    end
  end
end
