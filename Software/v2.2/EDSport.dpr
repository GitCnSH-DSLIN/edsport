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
//  SetupApi in '..\..\..\WiseLeg\Delphi\SetupAPI\SetupApi.pas';

uses
  Forms,
  CrcUtil in '..\..\..\#Library#\CRC\ForDelphi\CrcUtil.pas',
  GAProtocol in '..\..\..\#Library#\GAP\ForDelphi\v1.0\GAProtocol.pas',
  EDSport_Protocol in 'EDSport_Protocol.pas',
  EDSport_form in 'EDSport_form.pas' {frmEDSport},
  WdmDeviceApi in '..\..\..\#Library#\USB\ForDelphi\WdmDeviceApi.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmEDSport, frmEDSport);
  Application.Run;
end.
