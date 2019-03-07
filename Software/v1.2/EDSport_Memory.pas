(******************************************************************************
**  ��Ŀ����:    EEPROM                                                      **
**  ��������:    �ⴴ��(Aleyn.wu)                                            **
**  ��������:    http://blog.e-midas.cn , aleyn@e-midas.cn                   **
**  -----------------------------------------------------------------------  **
**  ��Ŀ��ַ:    E:\HunMing\EDSport\                                         **
**  ��Ԫ����:    EDSport_Memory.pas                                          **
**  ��������:    2006-04-26                                                  **
**  ��Ԫ���:    ���EDSport�Ĳ������֮�ڴ����                             **
**  ������ʷ:                                                                **
******************************************************************************)
unit EDSport_Memory;

interface
uses
  Classes, Windows,  EDSport_Protocol;


function SetMemoryManage(
  const InitMemory: TInitProtocolMemory;
  const AllocMemory: TAllocateProtocolMemory;
  const FreeMemory: TFreeProtocolMemory): Integer; stdcall;

function CheckMemoryManage: Boolean;

var
  InitProtocolMemory: TInitProtocolMemory;
  AllocateProtocolMemory: TAllocateProtocolMemory;
  FreeProtocolMemory: TFreeProtocolMemory;


implementation

function SetMemoryManage(
  const InitMemory: TInitProtocolMemory;
  const AllocMemory: TAllocateProtocolMemory;
  const FreeMemory: TFreeProtocolMemory): integer; stdcall;
begin
  @InitProtocolMemory := @InitMemory;
  @AllocateProtocolMemory := @AllocMemory;
  @FreeProtocolMemory := @FreeMemory;
  Result := 0;
end;

function CheckMemoryManage: Boolean;
begin
  Result := (@InitProtocolMemory <> nil)
    and (@AllocateProtocolMemory <> nil)
    and (@FreeProtocolMemory <> nil);
end;

exports
  SetMemoryManage;

initialization
  InitProtocolMemory := nil;
  AllocateProtocolMemory := nil;
  FreeProtocolMemory := nil;

finalization
  //if (BufferMemory <> nil) and Assigned(BufferMemory) then BufferMemory.Free;

end.
