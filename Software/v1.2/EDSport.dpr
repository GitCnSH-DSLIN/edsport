(******************************************************************************
**  ��Ŀ����:    EDSport                                                     **
**  ��������:    �ⴴ��(Aleyn.wu)                                            **
**  ��������:    http://blog.e-midas.cn , aleyn@e-midas.cn                   **
**  -----------------------------------------------------------------------  **
**  ��Ŀ��ַ:    E:\HunMing\EDSport\                                         **
**  ��Ԫ����:    EDSport.dpr                                                 **
**  ��������:    2006-04-12                                                  **
**  ��Ԫ���:    ���ڼ���������֧��Hex��ʽ���ַ�����ʽ���Զ�����Э��     **
**  ������ʷ:                                                                **
******************************************************************************)
program EDSport;

uses
  Forms,
  EDSport_form in 'EDSport_form.pas' {frmEDSport},
  EDSport_Library in 'EDSport_Library.pas',
  EDSport_Protocol in 'EDSport_Protocol.pas',
  SetupApi in '..\..\..\WiseLeg\Delphi\SetupAPI\SetupApi.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmEDSport, frmEDSport);
  Application.Run;
end.
