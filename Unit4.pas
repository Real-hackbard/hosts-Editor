unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, ClipBrd, Unit1;

type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    StatusBar1: TStatusBar;
    Edit9: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    CheckBox2: TCheckBox;
    Edit10: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form4: TForm4;

type
  TIPAddr = array[0..3] of Byte;
  PByteArray = ^TByteArray;
  TByteArray = array[0..32767] of Byte;

implementation

{$R *.dfm}

procedure ListBoxToClipboard(ListBox: TListBox; CopyAll: Boolean);
var
  i: Integer;
  s: string;
begin
  s := '';
  for i := 0 to ListBox.Items.Count - 1 do
  begin
    if CopyAll or ListBox.Selected[i] then
      s := s + ListBox.Items[i] + sLineBreak;
  end;
  ClipBoard.AsText := s;
end;

function GetNext(var IPAddr: TIPAddr): Boolean;
var
  C: Integer;
begin
  Result := True;
  for C := 3 downto 0 do
  begin
    if IPAddr[C] < 255 then
    begin
      Inc(IPAddr[C]);
      Exit;
    end;
    IPAddr[C] := 0;
  end;
  Result := False;
end;

function IsBelowOrEqual(IP, Limit: TIPAddr): Boolean;
begin
  Result := (IP[0] shl 24 + IP[1] shl 16 + IP[2] shl 8 + IP[3]) <=
    (Limit[0] shl 24 + Limit[1] shl 16 + Limit[2] shl 8 + Limit[3]);
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
var
  Start, Stop: TIPAddr;
  i, t, b, g, k, l, m, n : Integer;
begin
  StatusBar1.SetFocus;
  StatusBar1.Panels[2].Text := 'Calculate Range, please wait...';
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;
  ListBox1.Clear;

  if CheckBox2.Checked = true then begin
  ListBox1.Items.Add(Edit10.Text);
  end;

  i := StrToInt(Edit1.Text);
  t := StrToInt(Edit2.Text);
  b := StrToInt(Edit3.Text);
  g := StrToInt(Edit4.Text);

  k := StrToInt(Edit5.Text);
  l := StrToInt(Edit6.Text);
  m := StrToInt(Edit7.Text);
  n := StrToInt(Edit8.Text);

  Start[0] := i;
  Start[1] := t;
  Start[2] := b;
  start[3] := g;

  Stop[0] := k;
  Stop[1] := l;
  Stop[2] := m;
  Stop[3] := n;
  repeat

  if CheckBox1.Checked = true then begin
  ListBox1.Items.Add(Edit9.Text + ' ' + IntToStr(Start[0]) + '.' + IntToStr(Start[1]) + '.' +
      IntToStr(Start[2]) + '.' + IntToStr(Start[3]));
  end else begin
    ListBox1.Items.Add(IntToStr(Start[0]) + '.' + IntToStr(Start[1]) + '.' +
      IntToStr(Start[2]) + '.' + IntToStr(Start[3]));
  end;

    if not GetNext(Start) then Exit;
  until not IsBelowOrEqual(Start, Stop);


  if CheckBox2.Checked = true then begin
  ListBox1.Items.Add(Edit10.Text);
  end;
  StatusBar1.Panels[1].Text := IntToStr(ListBox1.Count);
  StatusBar1.Panels[2].Text := 'finish';
  Listbox1.Perform(WM_VSCROLL, SB_BOTTOM, 0);
  Screen.Cursor := crDefault;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  ListBoxToClipboard(ListBox1, True);
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  ListBox1.Clear;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
  StatusBar1.SetFocus;

  if ListBox1.Items.Count = 0 then begin
  Exit;
  end;

  try
  Form1.Listbox1.Items.BeginUpdate;
  Form1.ListBox1.Items.AddStrings(ListBox1.Items);
  Form1.ListBox1.Items.EndUpdate;
  finally
  end;

  Form1.Listbox1.Perform(WM_VSCROLL, SB_BOTTOM, 0);
  Application.ProcessMessages;
end;

procedure TForm4.CheckBox1Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  if CheckBox1.Checked = true then begin
  Edit9.Enabled := true; end else begin Edit9.Enabled := false; end;
end;

procedure TForm4.CheckBox2Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  if CheckBox2.Checked = true then begin
  Edit10.Enabled := true; end else begin Edit10.Enabled := false; end;
end;

procedure TForm4.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in [#46, #48..#57, #8]) then
    Key := #0;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.SpeedButton16.Enabled := true;
end;

end.
