unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Menus, ComCtrls;

type
  TForm3 = class(TForm)
    ListBox1: TListBox;
    Panel1: TPanel;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    PopupMenu1: TPopupMenu;
    AddSelected1: TMenuItem;
    StatusBar1: TStatusBar;
    R1: TMenuItem;
    A1: TMenuItem;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure AddSelected1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure R1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
    { Private-Deklarationen }
    flbHorzScrollWidth: Integer;
    FColorKey: TCOLOR;
  public
    { Public-Deklarationen }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}
function MainDir : string;
begin
 Result := ExtractFilePath(ParamStr(0));
end;

function MakeWindowTransparent(Wnd: HWND; nAlpha: Integer = 10): Boolean;
type
  TSetLayeredWindowAttributes = function(hwnd: HWND; crKey: COLORREF; bAlpha: Byte;
    dwFlags: Longint): Longint;
  stdcall;
const LWA_COLORKEY = 1; LWA_ALPHA = 2; WS_EX_LAYERED = $80000;
var hUser32: HMODULE; SetLayeredWindowAttributes: TSetLayeredWindowAttributes;
begin
  Result := False;
  hUser32 := GetModuleHandle('USER32.DLL');
  if hUser32 <> 0 then
  begin @SetLayeredWindowAttributes := GetProcAddress(hUser32, 'SetLayeredWindowAttributes');
    if @SetLayeredWindowAttributes <> nil then
    begin
      SetWindowLong(Wnd, GWL_EXSTYLE, GetWindowLong(Wnd, GWL_EXSTYLE) or WS_EX_LAYERED);
      SetLayeredWindowAttributes(Wnd, 0, Trunc((255 / 100) * (100 - nAlpha)), LWA_ALPHA);
      Result := True;
    end;
  end;
end;

function SetLayeredWindowAttributes( Wnd: hwnd; crKey: ColorRef;
  Alpha: Byte; dwFlags: DWORD): Boolean; stdcall; external 'user32.dll';

procedure TForm3.FormCreate(Sender: TObject);
begin
  Listbox1.Perform(LB_SetHorizontalExtent, 1000, Longint(0));
  ListBox1.MultiSelect := true;
  ListBox1.ExtendedSelect := true;
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
  SetLayeredWindowAttributes(Handle, ColorToRGB(FColorKey), 220, LWA_ALPHA);

  ListBox1.Selected[ListBox1.Count-1] := TRUE;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
var i:integer;
begin
  if Edit1.Text = '' then begin
  MessageBox(Form1.Handle,Pchar('No IP/Domain to Search !'),Pchar('Information'),
  MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_TOPMOST);
  Exit; end;

  StatusBar1.Panels[1].Text := 'Not found..';
  for i:=0 to ListBox1.Items.count-1 do
  if pos(Edit1.Text, ListBox1.Items[i]) > 0 then begin
  ListBox1.ItemIndex := i; StatusBar1.Panels[1].Text := 'found..';
  ListBox1.Selected[i] := true; end;
end;

procedure TForm3.AddSelected1Click(Sender: TObject);
var  i : integer;
begin
  for i := 0 to ListBox1.Items.Count -1 do begin
  if ListBox1.Selected[i] then Form1.ListBox1.Items.Add(ListBox1.Items[i]);
  end;
  Form1.ListBox1.Selected[Form1.ListBox1.Count-1] := TRUE;
  Form1.StatusBar1.Panels[3].Text := IntToStr(Form1.ListBox1.Items.Count);
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crDefault;
  Form1.MainMenu1.Items[1].Enabled:= true;
  Form1.MainMenu1.Items[2].Enabled:= true;
end;

procedure TForm3.R1Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
end;

procedure TForm3.A1Click(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := 'please wait Copy IPs..';
  Screen.Cursor := crHourGlass;
  SpeedButton3.Enabled := false;
  Form1.Listbox1.Items.BeginUpdate;
  Application.ProcessMessages;
  Form1.ListBox1.Items.AddStrings(ListBox1.Items);
  Form1.ListBox1.Items.EndUpdate;

  Form1.ListBox1.TopIndex  := Form1.ListBox1.Items.Count -1;
  Form1.StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
  MessageBox(Form1.Handle,Pchar('All IPs Copy finish !'),Pchar('Information'),
  MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_TOPMOST);
  StatusBar1.Panels[2].Text := 'Copy finish!';
  Form1.StatusBar1.Panels[3].Text := IntToStr(Form1.ListBox1.Items.Count);
  SpeedButton3.Enabled := true;
  Screen.Cursor := crDefault;
end;
procedure TForm3.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var Len: Integer; NewText: String;
begin
  NewText:=Listbox1.Items[Index];
  with Listbox1.Canvas do    // horizontal scroller
  begin
    FillRect(Rect);
    TextOut(Rect.Left + 1, Rect.Top, NewText);
    Len:=TextWidth(NewText) + Rect.Left + 10;
    if Len>flbHorzScrollWidth then
    begin
      flbHorzScrollWidth:=Len;
      Listbox1.Perform(LB_SETHORIZONTALEXTENT, flbHorzScrollWidth, 0 );
    end;
  end;
end;

end.
