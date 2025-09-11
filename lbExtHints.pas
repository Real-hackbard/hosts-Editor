

unit lbExtHints;
interface
uses Windows, {For :DrawText}
  Classes, {For :TRect}
  SysUtils, {For :Format}
  Controls, {For :CM_HINTSHOW}
  Forms, {For :TCMHintShow}
  Messages, {For :TMessage}
  StdCtrls; {For :TStringGrid, TCustomGrid}

type
  TListBox = class(StdCtrls.TListBox)
  private
    FOldHintShortPause: Integer;
    FOldHintHidePause: Integer;
    procedure CMHintShow(var Message: TMessage); message CM_HINTSHOW;
  protected
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  end;

implementation

procedure TListBox.CMHintShow(var Message: TMessage);
var Idx: Integer;
  aRect: TRect;
begin

  message.Result := 1;

  if Items.Count > 0 then
  begin
    with TCMHintShow(message).HintInfo^ do
    begin
      Idx := ItemAtPos(CursorPos, True);
      if Idx <> -1 then
        HintStr := Items[Idx];
      CursorRect := ItemRect(Idx);
      aRect := ItemRect(0);
      Canvas.Font := Font;
      DrawText(Canvas.Handle, PChar(HintStr), -1, aRect,
        DT_LEFT or DT_SINGLELINE or DT_NOPREFIX or DT_CALCRECT);
      if aRect.Right >= ClientWidth then
        message.Result := 0;
    end;
  end;
end;

procedure TListBox.CMMouseEnter(var Message: TMessage);
begin
  with Application do
  begin

    FOldHintHidePause := HintHidePause;
    HintHidePause := 5000;

    FOldHintShortPause := HintShortPause;
    HintShortPause := HintPause;
  end;
  inherited;
end;

procedure TListBox.CMMouseLeave(var Message: TMessage);
begin
  
  Application.HintHidePause := FOldHintHidePause;
  Application.HintShortPause := FOldHintShortPause;
  inherited;
end;

end.

