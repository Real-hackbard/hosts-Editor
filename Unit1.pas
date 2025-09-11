unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Clipbrd, Menus,
  lbExtHints, IniFiles, ShellApi, Vcl.Themes, StrUtils;

type
  TForm1 = class(TForm)
    PopupMenu1: TPopupMenu;
    DeleteSelected1: TMenuItem;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    SaveHost1: TMenuItem;
    Selectall1: TMenuItem;
    ReloadOriginalHost1: TMenuItem;
    OpenDialog1: TOpenDialog;
    ImportHost1: TMenuItem;
    StatusBar1: TStatusBar;
    Options1: TMenuItem;
    Help1: TMenuItem;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    N1: TMenuItem;
    BackupHostFile1: TMenuItem;
    ImportHost2: TMenuItem;
    SaveHost2: TMenuItem;
    N3: TMenuItem;
    ReloadOriginalFile1: TMenuItem;
    N4: TMenuItem;
    Close1: TMenuItem;
    StayTop1: TMenuItem;
    N5: TMenuItem;
    Font2: TMenuItem;
    CopySelecteditem1: TMenuItem;
    DeleteDublicates1: TMenuItem;
    HostBlacklist1: TMenuItem;
    N7: TMenuItem;
    CreateNewhost1: TMenuItem;
    CreateNewhost2: TMenuItem;
    StevenBlack1: TMenuItem;
    AntiPorn1: TMenuItem;
    BaddBoyz1: TMenuItem;
    KAD1: TMenuItem;
    iuxo1: TMenuItem;
    ShockSites1: TMenuItem;
    WikiSpam1: TMenuItem;
    URLHaus1: TMenuItem;
    rackers1: TMenuItem;
    MVPS1: TMenuItem;
    MalwareDomains1: TMenuItem;
    AdAway1: TMenuItem;
    RiskDomains1: TMenuItem;
    VNDomains1: TMenuItem;
    N2o7Net1: TMenuItem;
    OSINTDigitalside1: TMenuItem;
    StevenBlackSpecial1: TMenuItem;
    ExportHost1: TMenuItem;
    SaveDialog1: TSaveDialog;
    ExportHost2: TMenuItem;
    DeaktivateallIPs1: TMenuItem;
    DeaktivateallIPs2: TMenuItem;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    FindDialog1: TFindDialog;
    A1: TMenuItem;
    S1: TMenuItem;
    B1: TMenuItem;
    Panel1: TPanel;
    ListBox1: TListBox;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    Label1: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    CheckBox5: TCheckBox;
    MitchellKrog1: TMenuItem;
    N01: TMenuItem;
    C1: TMenuItem;
    M1: TMenuItem;
    S2: TMenuItem;
    H1: TMenuItem;
    P1: TMenuItem;
    N6: TMenuItem;
    S3: TMenuItem;
    S5: TMenuItem;
    N2: TMenuItem;
    S6: TMenuItem;
    A2: TMenuItem;
    StevenBlackBlacklistpartI1: TMenuItem;
    StevenBlackBlacklistpartII1: TMenuItem;
    h2: TMenuItem;
    h3: TMenuItem;
    h4: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    NissarChababy1: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    B2: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    W1: TMenuItem;
    SpeedButton11: TSpeedButton;
    Label3: TLabel;
    SpeedButton12: TSpeedButton;
    A4: TMenuItem;
    N8: TMenuItem;
    SpeedButton13: TSpeedButton;
    N13: TMenuItem;
    RemoveDuplicatesUltraFast1: TMenuItem;
    AntiPorn21: TMenuItem;
    hackersIPpartIv1: TMenuItem;
    EPCrew1: TMenuItem;
    HashCrew1: TMenuItem;
    LVCrew1: TMenuItem;
    PPCrew1: TMenuItem;
    Spam1: TMenuItem;
    AntiPopads1: TMenuItem;
    N16: TMenuItem;
    OISDBasic1: TMenuItem;
    DanPollock1: TMenuItem;
    PeterLowe1: TMenuItem;
    Memo10: TMemo;
    Memo2: TMemo;
    Memo1: TMemo;
    AddHosttoLIst1: TMenuItem;
    N32: TMenuItem;
    BruteForce1: TMenuItem;
    Ransomware1: TMenuItem;
    Piracy1: TMenuItem;
    DDoS1: TMenuItem;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure DeleteSelected1Click(Sender: TObject);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SaveHost1Click(Sender: TObject);
    procedure Selectall1Click(Sender: TObject);
    procedure ReloadOriginalHost1Click(Sender: TObject);
    procedure ImportHost1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox5Click(Sender: TObject);
    procedure ImportHost2Click(Sender: TObject);
    procedure SaveHost2Click(Sender: TObject);
    procedure ReloadOriginalFile1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure StayTop1Click(Sender: TObject);
    procedure Font2Click(Sender: TObject);
    procedure CopySelecteditem1Click(Sender: TObject);
    procedure DeleteDublicates1Click(Sender: TObject);
    procedure CreateNewhost1Click(Sender: TObject);
    procedure CreateNewhost2Click(Sender: TObject);
    procedure StevenBlack1Click(Sender: TObject);
    procedure AntiPorn1Click(Sender: TObject);
    procedure BaddBoyz1Click(Sender: TObject);
    procedure KAD1Click(Sender: TObject);
    procedure iuxo1Click(Sender: TObject);
    procedure ShockSites1Click(Sender: TObject);
    procedure WikiSpam1Click(Sender: TObject);
    procedure URLHaus1Click(Sender: TObject);
    procedure rackers1Click(Sender: TObject);
    procedure MVPS1Click(Sender: TObject);
    procedure MalwareDomains1Click(Sender: TObject);
    procedure AdAway1Click(Sender: TObject);
    procedure RiskDomains1Click(Sender: TObject);
    procedure VNDomains1Click(Sender: TObject);
    procedure N2o7Net1Click(Sender: TObject);
    procedure OSINTDigitalside1Click(Sender: TObject);
    procedure StevenBlackSpecial1Click(Sender: TObject);
    procedure ExportHost1Click(Sender: TObject);
    procedure ExportHost2Click(Sender: TObject);
    procedure DeaktivateallIPs1Click(Sender: TObject);
    procedure DeaktivateallIPs2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure N01Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure S6Click(Sender: TObject);
    procedure A2Click(Sender: TObject);
    procedure StevenBlackBlacklistpartI1Click(Sender: TObject);
    procedure StevenBlackBlacklistpartII1Click(Sender: TObject);
    procedure h2Click(Sender: TObject);
    procedure h3Click(Sender: TObject);
    procedure h4Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure W1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure A4Click(Sender: TObject);
    procedure RemoveDuplicatesUltraFast1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure AntiPorn21Click(Sender: TObject);
    procedure hackersIPpartIv1Click(Sender: TObject);
    procedure EPCrew1Click(Sender: TObject);
    procedure HashCrew1Click(Sender: TObject);
    procedure LVCrew1Click(Sender: TObject);
    procedure PPCrew1Click(Sender: TObject);
    procedure Spam1Click(Sender: TObject);
    procedure AntiPopads1Click(Sender: TObject);
    procedure OISDBasic1Click(Sender: TObject);
    procedure DanPollock1Click(Sender: TObject);
    procedure PeterLowe1Click(Sender: TObject);
    procedure AddHosttoLIst1Click(Sender: TObject);
    procedure BruteForce1Click(Sender: TObject);
    procedure Ransomware1Click(Sender: TObject);
    procedure Piracy1Click(Sender: TObject);
    procedure DDoS1Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
  private
    { Déclarations privées }
    flbHorzScrollWidth: Integer;
    procedure WriteOptions;
    procedure ReadOptions;
    procedure disable;
    procedure enable;
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  NumY, NumX: Integer;
  SelectedItems: TStrings;
  TextExists : boolean;
  TIF : TIniFile;

implementation

{$R *.dfm}

uses Unit3, Unit4;

{$R 'admin.res'}

function MainDir : string;
begin
 Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm1.WriteOptions;    // ################### Options Write
var OPT :string;
begin
   OPT := 'Options';

   if not DirectoryExists(MainDir + 'Data\Options\')
   then ForceDirectories(MainDir + 'Data\Options\');

   TIF := TIniFile.Create(MainDir + 'Data\Options\Options.ini');
   with TIF do
   begin
   WriteBool(OPT,'StayTop',StayTop1.Checked);
   WriteBool(OPT,'AdminPrivilegs',A1.Checked);
   WriteBool(OPT,'BackupHosts',B1.Checked);
   WriteBool(OPT,'Grid',S1.Checked);
   WriteBool(OPT,'Panel',P1.Checked);
   WriteBool(OPT,'SaveComplete',S6.Checked);
   WriteBool(OPT,'AppendIPs',A2.Checked);
   WriteBool(OPT,'DuplicatesUltraFast',RemoveDuplicatesUltraFast1.Checked);


   //WriteInteger(OPT,'Compress',Combobox1.ItemIndex);
   //WriteInteger(OPT,'Overlay',RadioGroup1.ItemIndex);
   Free;
   end;
end;

procedure TForm1.Ransomware1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
  Memo2.Lines.LoadFromFile(MainDir + 'Data\hosts\Ransomware.ini');
  except
  MessageDlg('Cant find Ransomware.ini File!',mtInformation, [mbOK], 0);
  Screen.Cursor := crDefault;
  Exit;
  end;

  ListBox1.Items.AddStrings(Memo2.Lines);
  ListBox1.Selected[ListBox1.Count-1] := TRUE;
  ListBox1.TopIndex  := ListBox1.Items.Count -1;
  Beep;
  Screen.Cursor := crDefault;
  MessageDlg('Ransomware Hosts IPs Included finish',mtInformation, [mbOK], 0);
  StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
end;

procedure TForm1.ReadOptions;    // ################### Options Read
var OPT:string;
begin
  OPT := 'Options';
  if FileExists(MainDir + 'Data\Options\Options.ini') then
  begin
  TIF:=TIniFile.Create(MainDir + 'Data\Options\Options.ini');
  with TIF do
  begin
  StayTop1.Checked:=ReadBool(OPT,'StayTop',StayTop1.Checked);
  A1.Checked:=ReadBool(OPT,'AdminPrivilegs',A1.Checked);
  B1.Checked:=ReadBool(OPT,'BackupHosts',B1.Checked);
  S1.Checked:=ReadBool(OPT,'Grid',S1.Checked);
  P1.Checked:=ReadBool(OPT,'Panel',P1.Checked);
  S6.Checked:=ReadBool(OPT,'SaveComplete',S6.Checked);
  A2.Checked:=ReadBool(OPT,'AppendIPs',A2.Checked);
  RemoveDuplicatesUltraFast1.Checked:=ReadBool(OPT,'DuplicatesUltraFast',RemoveDuplicatesUltraFast1.Checked);

  //CheckBox1.Checked:=ReadBool(OPT,'SaveOptions',CheckBox1.Checked);
  //Combobox1.ItemIndex:=ReadInteger(OPT,'Compress',combobox1.ItemIndex);
  //RadioGroup1.ItemIndex:=ReadInteger(OPT,'Overlay',RadioGroup1.ItemIndex);
  Free;
  end;
  end;
end;

procedure TForm1.disable;
begin
  SpeedButton1.Enabled := false; SpeedButton2.Enabled := false;
  SpeedButton3.Enabled := false; SpeedButton4.Enabled := false;
  SpeedButton5.Enabled := false; SpeedButton6.Enabled := false;
  SpeedButton7.Enabled := false; SpeedButton8.Enabled := false;
  SpeedButton9.Enabled := false; SpeedButton10.Enabled := false;
  SpeedButton11.Enabled := false;

  MainMenu1.Items[0].Enabled:= False; MainMenu1.Items[1].Enabled:= False;
  MainMenu1.Items[2].Enabled:= False; MainMenu1.Items[3].Enabled:= False;
  MainMenu1.Items[4].Enabled:= False;

  CheckBox5.Checked := false;

  PopupMenu1.Items[0].Enabled := false; PopupMenu1.Items[1].Enabled := false;
  PopupMenu1.Items[2].Enabled := false; PopupMenu1.Items[3].Enabled := false;
  PopupMenu1.Items[4].Enabled := false; PopupMenu1.Items[5].Enabled := false;
  PopupMenu1.Items[6].Enabled := false; PopupMenu1.Items[7].Enabled := false;
  PopupMenu1.Items[8].Enabled := false; PopupMenu1.Items[9].Enabled := false;
  PopupMenu1.Items[10].Enabled := false; PopupMenu1.Items[11].Enabled := false;
  PopupMenu1.Items[12].Enabled := false; PopupMenu1.Items[13].Enabled := false;

  SpeedButton14.Enabled := false; SpeedButton15.Enabled := false;
  SpeedButton16.Enabled := false;
end;

procedure TForm1.enable;
begin
  SpeedButton1.Enabled := true; SpeedButton2.Enabled := true;
  SpeedButton3.Enabled := true; SpeedButton4.Enabled := true;
  SpeedButton5.Enabled := true; SpeedButton6.Enabled := true;
  SpeedButton7.Enabled := true; SpeedButton8.Enabled := true;
  SpeedButton9.Enabled := true; SpeedButton10.Enabled := true;
  SpeedButton11.Enabled := true;

  MainMenu1.Items[0].Enabled:= true; MainMenu1.Items[1].Enabled:= true;
  MainMenu1.Items[2].Enabled:= true; MainMenu1.Items[3].Enabled:= true;
  MainMenu1.Items[4].Enabled:= true;

  CheckBox5.Checked := true;

  PopupMenu1.Items[0].Enabled := true; PopupMenu1.Items[1].Enabled := true;
  PopupMenu1.Items[2].Enabled := true; PopupMenu1.Items[3].Enabled := true;
  PopupMenu1.Items[4].Enabled := true; PopupMenu1.Items[5].Enabled := true;
  PopupMenu1.Items[6].Enabled := true; PopupMenu1.Items[7].Enabled := true;
  PopupMenu1.Items[8].Enabled := true; PopupMenu1.Items[9].Enabled := true;
  PopupMenu1.Items[10].Enabled := true; PopupMenu1.Items[11].Enabled := true;
  PopupMenu1.Items[12].Enabled := true; PopupMenu1.Items[13].Enabled := true;

  SpeedButton14.Enabled := true; SpeedButton15.Enabled := true;
  SpeedButton16.Enabled := true;
end;

function AppendOrWriteTextToFile(FileName : TFilename; WriteText : string): boolean;
var  f : Textfile;
begin
  Result := False;
  AssignFile(f, FileName);
  try
    if FileExists(FileName) = False then
      Rewrite(f) else begin Append(f); end;
    Writeln(f, WriteText); Result := True; finally CloseFile(f); end;
end;

function MsgBox(Handle : HWND ; Message, Caption : string ; Flags : integer) : integer;
begin
  Result := MessageBoxA(Handle, PAnsiChar(Message), PAnsiChar(Caption), Flags);
end;

function NbSousChaine(substr: string; s: string): integer;
function Droite(substr: string; s: string): string;
begin
  if pos(substr,s)=0 then result:='' else
    result:=copy(s, pos(substr, s)+length(substr), length(s)-pos(substr, s)+length(substr));
end;
begin
  result:=0;
  while pos(substr,s)<>0 do
  begin S:=droite(substr,s); inc(result); end;
end;

procedure ListBoxToClipboard(ListBox: TListBox;
  BufferSize: Integer;
  CopyAll: Boolean);
var Buffer: PChar;  Ptr: PChar;
  I: Integer; Line: string[255]; Count: Integer;
begin
  if not Assigned(ListBox) then Exit;
  GetMem(Buffer, BufferSize);
  Ptr   := Buffer;
  Count := 0;
  for I := 0 to ListBox.Items.Count - 1 do  begin
    Line := ListBox.Items.strings[I];
    if not CopyAll and ListBox.MultiSelect and (not ListBox.Selected[I]) then
      Continue; Count := Count + Length(Line) + 3;
    if Count = BufferSize then Break;
    Move(Line[1], Ptr^, Length(Line));
    Ptr    := Ptr + Length(Line);
    Ptr[0] := #13; Ptr[1] := #10; Ptr := Ptr + 2;
  end;
  Ptr[0] := #0; ClipBoard.SetTextBuf(Buffer); FreeMem(Buffer, BufferSize);
end;

function lbxGetMaxItemsLen(const aListBox: TListBox): Integer;
var I: Integer; aRect: TRect;
begin
  Result := 0; with aListBox do begin
    Canvas.Font := Font; SetRectEmpty(aRect);
    for I := 0 to Count -1 do
      DrawText(Canvas.Handle, PChar(Items[I]), -1, aRect,
        DT_LEFT or DT_SINGLELINE or DT_NOPREFIX or DT_CALCRECT);
    if aRect.Right > Result then
      Result := aRect.Right;
  end;
end;

function ColorToHtmlColor(AColor: TColor): string;
begin
  Result := IntToHex(ColorToRgb(AColor), 6);
  Result := '#' + Copy(Result, 5, 2) + Copy(Result, 3, 2) + Copy(Result, 1, 2);
end;

procedure FileCopy(von,nach:string); 
var src,dest : tFilestream; 
begin
  src := tFilestream.create(von,fmShareDenyNone or fmOpenRead); 
  try dest := tFilestream.create(nach,fmCreate);
    try dest.copyfrom(src,src.size);
    finally dest.free; end; finally src.free; end;
end;

function GetApplicationDirectory: string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   if not FileExists('C:\Windows\system32\drivers\etc\hosts') then begin
   MessageDlg('Can not find "hosts" File in your System,' + #13 +
               'Check Path : C:\Windows\system32\drivers\etc\hosts',
               mtInformation, [mbOK], 0);
   end;

   Application.HintPause := 0;
   Application.HintHidePause := 50000;

   ListBox1.DoubleBuffered := true;

   ComboBox1.Items.LoadFromFile(MainDir + 'Data\IP\myIP.ini');
   ComboBox1.ItemIndex := 0;

   Memo1.Lines.LoadFromFile('C:\Windows\System32\Drivers\etc\hosts');
   ListBox1.Items.LoadFromFile('C:\Windows\System32\Drivers\etc\hosts');

   Listbox1.Perform(LB_SetHorizontalExtent, 1000, Longint(0));
   StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);

   ListBox1.MultiSelect := true;
   ListBox1.ExtendedSelect := true;
   SelectedItems := TStringList.Create;

    Panel1.DoubleBuffered := true;
    Panel3.DoubleBuffered := true;
    Panel4.DoubleBuffered := true;
    ListBox1.DoubleBuffered := true;

    /////////////////////////////////////////////////////////////////////////////////////////////////
    //MessageDlg('Deaktivate Anti Virus Agents to Overwrite "hosts" File in your System !',
    //mtInformation, [mbOK], 0);
    ///////////////////////////////////////////////////////////////////   wichtig //////////////

    SpeedButton14.Hint := 'Creates the Selected IP Number as a Blocklist in front of the Domains.' + #13#10 +
                    '(For large lists, this may take a few minutes.).';
    SpeedButton15.Hint := 'Removes the Selected IP Number from the Blocklist in front of the Domains.' + #13#10 +
                    '(For large lists, this may take a few minutes.).'+ #13#10 +
                    'If there are different Block IPs in the list, '+ #13#10 +
                    'you should not use this function or the list will be destroyed.';
    SpeedButton16.Hint := 'Here you can have a Range list of specific IPs Calculated.';

    StatusBar1.Panels[1].Text := 'C:\Windows\system32\drivers\etc\hosts';
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
   if Edit1.GetTextLen<>0 then begin
   Edit1.SelectAll;
   if CheckBox5.Checked = true then begin
   ListBox1.Items.Add('# ' + Edit3.Text); end;
   ListBox1.Items.Add(ComboBox1.Text + '       ' + Edit1.Text);
   ListBox1.TopIndex  := ListBox1.Items.Count -1;
   StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
   end else begin ShowMessage('No URL found !'); end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Edit1.Text := Clipboard.AsText;
end;

procedure TForm1.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var Len: Integer; NewText: String; ListColor : TColor; ListBrush : TBrush;
begin

  NewText:=Listbox1.Items[Index];

  with Listbox1.Canvas do    // horizontal scroller
  begin
    FillRect(Rect);
    TextOut(Rect.Left + 1, Rect.Top, NewText);
    Len:=TextWidth(NewText) + Rect.Left + 10;
    if Len > flbHorzScrollWidth then
    begin
      flbHorzScrollWidth:=Len;
      Listbox1.Perform(LB_SETHORIZONTALEXTENT, flbHorzScrollWidth, 0 );
    end;
  end;

  begin                                   // grid colors
  ListBrush := TBrush.Create;
  with (Control as TListBox).Canvas do begin
    if odSelected in State then begin
      //ListColor := $FF0099;
    end else begin
      if Index and 1 = 1 then ListColor := $e8e7e7 //$FFFF00
                         else ListColor := $FFFFFF;
    end;

    if S1.Checked = true then begin
    ListBrush.Style := bsSolid;
    ListBrush.Color := ListColor;
    Windows.FillRect(Handle, Rect, ListBrush.Handle);
    Brush.Style := bsClear;
    TextOut(Rect.Left, Rect.Top, (Control as TListBox).Items[Index]);
    ListBrush.Free
    end;
  end;
  end;

  with (Control as TListbox)  // auswahl farbig
  do begin
  if odSelected in State then
  Canvas.Brush.Color := clRed;
  Canvas.FillRect(Rect);
  Canvas.TextOut(Rect.Left, Rect.Top, Items[Index]);
  end;
end;

procedure TForm1.DeleteSelected1Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
  StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
end;

procedure TForm1.ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
var ListBox: TListBox; i, TargetIndex: Integer; SelectedItems: TStringList;
begin
  Assert(Source=Sender);
  ListBox := Sender as TListBox;
  TargetIndex := ListBox.ItemAtPos(Point(X, Y), False);
  if TargetIndex<>-1 then
  begin
    SelectedItems := TStringList.Create;
    try ListBox.Items.BeginUpdate;
      try for i := ListBox.Items.Count-1 downto 0 do begin
      if ListBox.Selected[i] then begin
      SelectedItems.AddObject(ListBox.Items[i], ListBox.Items.Objects[i]);
      ListBox.Items.Delete(i);
      if i<TargetIndex then dec(TargetIndex); end; end;
    for i := SelectedItems.Count-1 downto 0 do begin
    ListBox.Items.InsertObject(TargetIndex, SelectedItems[i], SelectedItems.Objects[i]);
    ListBox.Selected[TargetIndex] := True;
    inc(TargetIndex); end; finally
    ListBox.Items.EndUpdate; end; finally SelectedItems.Free; end; end;
end;

procedure TForm1.ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source=ListBox1;
end;

procedure TForm1.ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var  i: Integer;
begin
  NumY:=Y;
  NumX:=X;
  for i := 0 to ListBox1.Items.Count - 1 do
    if ListBox1.ItemIndex = i then
      StatusBar1.Panels[7].Text := IntToStr(i+1);
end;

procedure TForm1.LVCrew1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\LV Crew\LV Crew.ini') then begin
  MessageDlg('Can not find "LV Crew.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\LV Crew\LV Crew.ini');
  finally end;
  Form3.Caption := ' LV Crew - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.SaveHost1Click(Sender: TObject);
begin
  SpeedButton4.Click;
end;

procedure TForm1.Selectall1Click(Sender: TObject);
begin
  SpeedButton6.Click;
end;

procedure TForm1.ReloadOriginalHost1Click(Sender: TObject);
begin
  SpeedButton5.Click;
end;

procedure TForm1.RemoveDuplicatesUltraFast1Click(Sender: TObject);
begin
  RemoveDuplicatesUltraFast1.Checked := not RemoveDuplicatesUltraFast1.Checked;
end;

procedure TForm1.ImportHost1Click(Sender: TObject);
begin
  SpeedButton1.Click;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WriteOptions;
  SelectedItems.Free;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  if CheckBox5.Checked = true then begin  //Label16.Caption := 'on';
  Edit3.Enabled := true; Label15.Enabled := true; Edit3.Color := clWhite;
  end else begin  Edit3.Color := clBtnFace; //Label16.Caption := 'off';
  Edit3.Enabled := false; Label15.Enabled := false;
  end;
end;

procedure TForm1.ImportHost2Click(Sender: TObject);
begin
  SpeedButton1.Click;
end;

procedure TForm1.SaveHost2Click(Sender: TObject);
begin
  SpeedButton4.Click;
end;

procedure TForm1.ReloadOriginalFile1Click(Sender: TObject);
begin
  SpeedButton5.Click;
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.StayTop1Click(Sender: TObject);
begin
  if StayTop1.Checked = false then begin
  StayTop1.Checked := true;
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
  SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end else begin
  StayTop1.Checked := false;
  SetWindowPos(Handle, HWND_NOTOPMOST, Left,Top, Width,Height,
  SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end;
end;

procedure TForm1.Font2Click(Sender: TObject);
begin
  SpeedButton10.Click;
end;

procedure TForm1.CopySelecteditem1Click(Sender: TObject);
begin
  ListBoxToClipboard(Listbox1, 1024, False);
end;

procedure TForm1.DeleteDublicates1Click(Sender: TObject);
begin
  SpeedButton8.Click;
end;

procedure TForm1.CreateNewhost1Click(Sender: TObject);
begin
  Beep;
  IF MessageDlg('ATTENTION !'+#13+
                'Host list will be deleted, are you sure ?!',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    BEGIN
      ListBox1.Clear;
      ListBox1.Items.AddStrings(Memo10.Lines);
      ListBox1.TopIndex  := ListBox1.Items.Count -1;
      StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
    END;
end;

procedure TForm1.CreateNewhost2Click(Sender: TObject);
begin
  CreateNewhost1.Click;
end;

procedure TForm1.StevenBlack1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Steven Black Blacklist.ini') then begin
  MessageDlg('Can not find "Steven Black Blacklist.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Steven Black Blacklist.ini');
  finally end;
  Form3.Caption := ' Blacklist Host Steven Black - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.AntiPopads1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Anti Pop ads.ini') then begin
  MessageDlg('Can not find "Anti Pop ads.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Anti Pop ads.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Anti Pop ads - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.AntiPorn1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Host Anti Porn.ini') then begin
   MessageDlg('Can not find "Host Anti Porn.ini"' + #13 +
               'Check hosts Folder', mtInformation, [mbOK], 0); Exit;  end;
  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Host Anti Porn.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Anti Porn - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.AntiPorn21Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Host Anti Porn 2.ini') then begin
   MessageDlg('Can not find "Host Anti Porn 2.ini"' + #13 +
               'Check hosts Folder', mtInformation, [mbOK], 0); Exit;  end;
  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Host Anti Porn 2.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Anti Porn 2 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.BaddBoyz1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Host Badd-Boyz.ini') then begin
   MessageDlg('Can not find "hosts Badd-Boyz.ini"' + #13 +
               'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Host Badd-Boyz.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Badd-Boyz - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.BruteForce1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
  Memo2.Lines.LoadFromFile(MainDir + 'Data\hosts\hackers\Brute Force.ini');
  except
  MessageDlg('Cant find Brute Force.ini File!',mtInformation, [mbOK], 0);
  Screen.Cursor := crDefault;
  Exit;
  end;

  ListBox1.Items.AddStrings(Memo2.Lines);
  ListBox1.Selected[ListBox1.Count-1] := TRUE;
  ListBox1.TopIndex  := ListBox1.Items.Count -1;
  Beep;
  Screen.Cursor := crDefault;
  MessageDlg('Brute Force Hosts IPs Included finish',mtInformation, [mbOK], 0);
  StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
end;

procedure TForm1.KAD1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Host KAD.ini') then begin
  MessageDlg('Can not find "Host KAD.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Host KAD.ini');
  finally end;
  Form3.Caption := '     Blacklist Host KAD - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.iuxo1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Host Tiuxo.ini') then begin
  MessageDlg('Can not find "Host Tiuxo.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Host Tiuxo.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Tiuxo - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.ShockSites1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Host Shock-Sites.ini') then begin
  MessageDlg('Can not find "Host Shock-Sites.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Host Shock-Sites.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Shock-Sites - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.WikiSpam1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Wiki Spam.ini') then begin
  MessageDlg('Can not find "Wiki Spam.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Wiki Spam.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Wiki Spam - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.URLHaus1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\URLhaus.ini') then begin
  MessageDlg('Can not find "URLhaus.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\URLhaus.ini');
  finally end;
  Form3.Caption := '     Blacklist Host URLhaus - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.rackers1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Trackers.ini') then begin
  MessageDlg('Can not find "Trackers.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Trackers.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Trackers - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.MVPS1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\MVPS.ini') then begin
  MessageDlg('Can not find "MVPS.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\MVPS.ini');
  finally end;
  Form3.Caption := '     Blacklist Host MVPS - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.MalwareDomains1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Malware Domains.ini') then begin
  MessageDlg('Can not find "Malware Domains.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False;  MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Malware Domains.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Malware Domains - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.AdAway1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\AdAway.ini') then begin
  MessageDlg('Can not find "AdAway.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False;  MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\AdAway.ini');
  finally end;
  Form3.Caption := '     Blacklist Host AdAway - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.AddHosttoLIst1Click(Sender: TObject);
var list : TStringList;
begin
  Screen.Cursor := crHourGlass;
  StatusBar1.SetFocus;
  list := TStringList.Create;
  if OpenDialog1.Execute then begin
  try
    list.LoadFromFile(OpenDialog1.FileName);
    ListBox1.Items.AddStrings(list);
  finally
  list.Free;
  end;
  StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
  end;
  ListBox1.Selected[ListBox1.Count-1] := TRUE;
  ListBox1.TopIndex  := ListBox1.Items.Count -1;
  StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
  Screen.Cursor := crDefault;
end;

procedure TForm1.RiskDomains1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Risk Domains.ini') then begin
  MessageDlg('Can not find "Risk Domains.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Risk Domains.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Risk Domains - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.VNDomains1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\VN.ini') then begin
  MessageDlg('Can not find "VN.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\VN.ini');
  finally end;
  Form3.Caption := '     Blacklist Host VN Domains - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.N2o7Net1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\2o7Net.ini') then begin
  MessageDlg('Can not find "2o7Net.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\2o7Net.ini');
  finally end;
  Form3.Caption := '     Blacklist Host 2o7 Net - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.OISDBasic1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\oisd basic.ini') then begin
  MessageDlg('Can not find "oisd basic.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\oisd basic.ini');
  finally end;
  Form3.Caption := ' oisd basic - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.OSINTDigitalside1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\OSINT Digitalside.ini') then begin
  MessageDlg('Can not find "OSINT Digitalside.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\OSINT Digitalside.ini');
  finally end;
  Form3.Caption := '     Blacklist Host OSINT Digitalside - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.StevenBlackSpecial1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Steven Black Blacklist part I.ini') then begin
  MessageDlg('Can not find "Steven Black Blacklist part I.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Steven Black Blacklist part I.ini');
  finally end;
  Form3.Caption := ' Blacklist Host Steven Black Special - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.Piracy1Click(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
  try
  Memo2.Lines.LoadFromFile(MainDir + 'Data\hosts\Piracy.ini');
  except
  MessageDlg('Cant find Piracy.ini File!',mtInformation, [mbOK], 0);
  Screen.Cursor := crDefault;
  Exit;
  end;

  ListBox1.Items.AddStrings(Memo2.Lines);
  ListBox1.Selected[ListBox1.Count-1] := TRUE;
  ListBox1.TopIndex  := ListBox1.Items.Count -1;
  Beep;
  Screen.Cursor := crDefault;
  MessageDlg('Piracy Hosts IPs Included finish',mtInformation, [mbOK], 0);
  StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
end;

procedure TForm1.PPCrew1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\PP Crew\PP Crew.ini') then begin
  MessageDlg('Can not find "PP Crew.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\PP Crew\PP Crew.ini');
  finally end;
  Form3.Caption := ' PP Crew - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.EPCrew1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\EP Crew\EP Crew.ini') then begin
  MessageDlg('Can not find "EP Crew.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\EP Crew\EP Crew.ini');
  finally end;
  Form3.Caption := ' EP Crew - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.ExportHost1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then 
  ListBox1.Items.SaveToFile(SaveDialog1.FileName + '.txt');
end;

procedure TForm1.ExportHost2Click(Sender: TObject);
begin
  ExportHost1.Click;
end;

procedure TForm1.DeaktivateallIPs1Click(Sender: TObject);
var i : integer; s : string;
begin
 Screen.Cursor := crHourGlass;
 if DeaktivateallIPs1.Checked = false then begin
 DeaktivateallIPs1.Checked := true; DeaktivateallIPs2.Checked := true;
 SpeedButton11.Caption := 'Aktivate all IPs';
 SpeedButton11.Glyph.LoadFromFile(MainDir + 'Data\Bmp\Aktivate.bmp');
 DeaktivateallIPs1.Caption := 'Aktivate all IPs';
 DeaktivateallIPs2.Caption := 'Aktivate all IPs';
 s := '# ';
 for i := 0 to ListBox1.Items.Count -1 do begin
 StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
 ListBox1.Items[i] := S + ListBox1.Items[i];
 //Application.ProcessMessages;
 end;

 end else begin

 DeaktivateallIPs1.Checked := false; DeaktivateallIPs2.Checked := false;
 SpeedButton11.Caption := 'Deaktivate all IPs';
 SpeedButton11.Glyph.LoadFromFile(MainDir + 'Data\Bmp\Deaktivate.bmp');
 DeaktivateallIPs1.Caption := 'Deaktivate all IPs';
 DeaktivateallIPs2.Caption := 'Deaktivate all IPs';
 for i := 0 to ListBox1.Items.Count -1 do begin
 StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
 s := ListBox1.Items[i];
 s := Copy(s, 3 ,length(s));
 ListBox1.Items[i] := s;
 //Application.ProcessMessages;
 end;
 end;
 Screen.Cursor := crDefault;
 ShowMessage('Success !');
end;

procedure TForm1.DeaktivateallIPs2Click(Sender: TObject);
begin
  DeaktivateallIPs1.Click;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
  Screen.Cursor := crHourGlass;
  ListBox1.Items.LoadFromFile(OpenDialog1.FileName);
  StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count); end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var  dir, log : string;
begin
  if S6.Checked = true then begin
   Beep;
   IF MessageDlg('ATTENTION !'+#13 +
                'Overwrite System hosts File Complete, are you Sure ?!',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    BEGIN
      try
      ListBox1.Items.SaveToFile('C:\Windows\System32\Drivers\etc\hosts');
      except
      ShowMessage('Cannot overwrite host file because another Process is Accessing the File.'
                  + #13#10 +
                  'Disable your anti-virus agent and try again. !');
      end;
      ShowMessage('Host File Saved !');
    END;
   end;

   if A2.Checked = true then begin
   Beep;
   IF MessageDlg('ATTENTION !'+#13 +
                'Append IPs from List to System hosts File, are you Sure ?!',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    BEGIN
   dir := 'C:\Windows\System32\Drivers\etc\hosts';
  log := ListBox1.Items.Text;
  try
  AppendOrWriteTextToFile(dir, log);
  except
  ShowMessage('Cannot append IPs to host file because another Process is Accessing the File.'
              + #13#10 +
              'Disable your anti-virus agent and try again. !');
  end;
  ShowMessage('IPs append to hosts File finish !');
    END;
   end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
Beep;
  IF MessageDlg('ATTENTION !'+#13+
                'This will Reload System hosts File, are you sure ?!',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    BEGIN
      ListBox1.Items.Text := Memo1.Text;
    StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
    END;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  Listbox1.Perform(LB_SELITEMRANGE, 1, MakeLong(0, Listbox1.Items.Count - 1));
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  Beep;
  IF MessageDlg('ATTENTION !'+#13+
                'Host list will be cleared complete, are you sure ?!',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    BEGIN
      ListBox1.Clear;
      StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
    END;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
var  z, i, f, d : integer; s : string;
     lStringList: TStringList;
begin
  Screen.Cursor := crHourGlass;
  Label3.Caption := 'start';
  StatusBar1.Panels[8].Text := 'searching...';
  Beep;
  if MessageBox(Handle,'This will delete Duplicate Entrys !'+#13+
                'Are sure to continue : ','Delete Duplicates',MB_YESNO) = IDYES then
  BEGIN


  ///// Ultra Fast
    if RemoveDuplicatesUltraFast1.Checked = true then begin
      d := StrToInt(StatusBar1.Panels[3].Text);
      lStringList := TStringList.Create;
      disable;
      SpeedButton12.Enabled := false;
      try
        lStringList.Duplicates := dupIgnore;
        lStringList.Sorted := true;
        lStringList.Assign(ListBox1.Items);
        ListBox1.Items.Assign(lStringList);
      finally
        lStringList.free;
        d := d - ListBox1.Items.Count;
        MessageBox(Form1.Handle,Pchar(IntToStr(d) + ' Duplicates found and Removed!'),
                                Pchar('Remove Duplicates '),
        MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_TOPMOST);
        StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
        enable;
        SpeedButton12.Enabled := true;
        if S6.Checked = true then StatusBar1.Panels[8].Text := 'Overwrite Hosts File';
      if A2.Checked = true then StatusBar1.Panels[8].Text := 'Append to Hosts File';
      end;
      Screen.Cursor := crDefault;
      Exit;
    end;
  ////

  disable;
  i := StrToInt(StatusBar1.Panels[3].Text);
  with ListBox1 do
  begin
  for z := Items.Count-1 downto 0 do
    begin
    if Label3.Caption = 'stop' then begin
       Screen.Cursor := crDefault;
       Application.ProcessMessages;
       ListBox1.ItemIndex := 0;
       ListBox1.Selected[z] := false;
       enable;
       Exit;
    end;
       s := Items[z];

    if (Items.IndexOf(s) <> -1)
      and (Items.IndexOf(s) <> z) then
      Items.Delete(z);
      ListBox1.ItemIndex := z;
      ListBox1.Selected[z-1] := true;
      StatusBar1.Panels[7].Text := IntToStr(z);
      Application.ProcessMessages;
    end;
  end;

      StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
      f := i - StrToInt(StatusBar1.Panels[3].Text);
      StatusBar1.Panels[5].Text := IntToStr(f);
      if S6.Checked = true then StatusBar1.Panels[8].Text := 'Overwrite Hosts File';
      if A2.Checked = true then StatusBar1.Panels[8].Text := 'Append to Hosts File';
      MessageBox(Form1.Handle,Pchar(IntToStr(f) + ' Duplicates found and Removed!'),Pchar('Remove Duplicates '),
      MB_ICONINFORMATION + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_TOPMOST);

    END else begin
    Screen.Cursor := crDefault;
    Exit;
  end;


  ListBox1.ItemIndex := 0;
  ListBox1.Selected[z] := false;
  enable;
  Screen.Cursor := crDefault;
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
var
  MaxCapacity, CurrentIndex, EndSearch,
  RealPos : integer;
  SearchText, CurrentItem : string;
  TextFound, s : integer;
  SearchAgain : boolean;
begin
  SearchText := FindDialog1.FindText;

  RealPos := ListBox1.ItemIndex;
  MaxCapacity := ListBox1.Items.Count - 1;
  SearchAgain := False; TextExists := False;
  if RealPos = -1 then
  begin
    RealPos := 0; CurrentIndex := 0; EndSearch := MaxCapacity;
  end else begin
    CurrentIndex := RealPos; EndSearch := (MaxCapacity + RealPos) - 1;
  end;

  while CurrentIndex < EndSearch do
  begin
    CurrentItem := ListBox1.Items.Strings[CurrentIndex];
    TextFound := NBSousChaine(UpperCase(SearchText), UpperCase(CurrentItem));
    if CurrentIndex = RealPos then
    begin TextFound := 0; end;

    if TextFound > 0 then
    begin
      TextExists := True;
      ListBox1.ItemIndex := CurrentIndex;
      ListBox1.Selected[CurrentIndex] := true;
      s := ListBox1.SelCount;
      StatusBar1.Panels[5].Text := IntToStr(s);
      StatusBar1.Panels[7].Text := IntToStr(RealPos);
      Exit;
    end;
    if CurrentIndex >= MaxCapacity then
    begin
      SearchAgain := True; break;
    end;
    Inc(CurrentIndex);
  end;

  if SearchAgain = True then
  begin
    CurrentIndex := 0;
    while CurrentIndex < RealPos do
    begin
      CurrentItem := ListBox1.Items.Strings[CurrentIndex];
      TextFound := NBSousChaine(UpperCase(SearchText), UpperCase(CurrentItem));

      if CurrentIndex = RealPos then
      begin  TextFound := 0; end;
      if TextFound > 0 then
      begin
        TextExists := True;
        ListBox1.ItemIndex := CurrentIndex;
        s := ListBox1.SelCount;
        StatusBar1.Panels[5].Text := IntToStr(s);
         Exit;
      end; Inc(CurrentIndex);
      end;
  end;

  if TextExists = False then
    MsgBox(FindDialog1.Handle, 'Texte "' + SearchText + 'not found.', 'Result', 64);
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
var i : integer;
begin
  for I := 0 to (Listbox1.Items.Count - 1) do
    begin ListBox1.Selected[i] := False; end;
  StatusBar1.Panels[5].Text := '0';
  StatusBar1.Panels[7].Text := '0';
  FindDialog1.Execute;
end;

procedure TForm1.Spam1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Spam.ini') then begin
  MessageDlg('Can not find "Spam.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Spam.ini');
  finally end;
  Form3.Caption := '     Blacklist Host Spam - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
  if FontDialog1.Execute then begin
  ListBox1.Font := FontDialog1.Font;
  ListBox1.ItemHeight := FontDialog1.Font.Size + 10;
  end;
end;

procedure TForm1.S1Click(Sender: TObject);
begin
   if S1.Checked = false then begin
   S1.Checked := true;
   end else begin
   S1.Checked := false;  end;
   ListBox1.Repaint;
end;

procedure TForm1.B1Click(Sender: TObject);
begin
   if B1.Checked = false then begin
   B1.Checked := true;
   Memo1.Lines.SaveToFile(MainDir + 'Data\Backup\hosts.bak');
   end else begin
   B1.Checked := false; end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ReadOptions;
  if StayTop1.Checked = true then begin
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
  SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end;

  if B1.Checked = true then begin
  Memo1.Lines.SaveToFile(MainDir + 'Data\Backup\hosts.bak');
  end;

  if P1.Checked = false then Panel3.Visible := false;
  if S6.Checked = true then StatusBar1.Panels[8].Text := 'Overwrite Hosts File';
  if A2.Checked = true then StatusBar1.Panels[8].Text := 'Append to Hosts File';
end;

procedure TForm1.A1Click(Sender: TObject);
begin
  if A1.Checked = false then begin
  A1.Checked := true; end else begin A1.Checked := false; end;
end;

procedure TForm1.N01Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2017.ini') then begin
  MessageDlg('Can not find "Mitchell Krog Blacklist 2017.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2017.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2017 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.C1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2018.ini') then begin
  MessageDlg('Can not find "Mitchell Krog Blacklist 2018.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2018.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2018 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.M1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2019.ini') then begin
  MessageDlg('Can not find "Mitchell Krog Blacklist 2019.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2019.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2019 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.S2Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2020.ini') then begin
  MessageDlg('Can not find "Mitchell Krog Blacklist 2020.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False;  MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2020.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2020 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.P1Click(Sender: TObject);
begin
  if P1.Checked = false then begin
   P1.Checked := true; Panel3.Visible := true;
   end else begin
   P1.Checked := false; Panel3.Visible := false;  end;
end;

procedure TForm1.PeterLowe1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Peter Lowe\Peter Lowe.ini') then begin
  MessageDlg('Can not find "Peter Lowe.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Peter Lowe\Peter Lowe.ini');
  finally end;
  Form3.Caption := ' Peter Lowe - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
   {
   Messagebox(form1.handle, 'Deaktivate Anti Virus Agents to ' +#13#13+
   'Overwrite "hosts" File in your System !',
   'Information', MB_OK or MB_ICONINFORMATION);
   }
end;

procedure TForm1.S3Click(Sender: TObject);
begin
  SpeedButton9.Click;
end;

procedure TForm1.S6Click(Sender: TObject);
begin
  S6.Checked := true;
  StatusBar1.Panels[8].Text := 'Overwrite Hosts File';
end;

procedure TForm1.A2Click(Sender: TObject);
begin
  A2.Checked := true;
  StatusBar1.Panels[8].Text := 'Append to Hosts File';
end;

procedure TForm1.StevenBlackBlacklistpartI1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Steven Black Blacklist part II.ini') then begin
  MessageDlg('Can not find "Steven Black Blacklist part II.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Steven Black Blacklist part II.ini');
  finally end;
  Form3.Caption := ' Blacklist Host Steven Black Special - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.StevenBlackBlacklistpartII1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Steven Black Blacklist part III.ini') then begin
  MessageDlg('Can not find "Steven Black Blacklist part III.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False;  MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Steven Black Blacklist part III.ini');
  finally end;
  Form3.Caption := ' Blacklist Host Steven Black Special - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.h2Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\hackers\hackers part I.ini') then begin
  MessageDlg('Can not find "hackers part I.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False;  MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\hackers\hackers part I.ini');
  finally end;
  Form3.Caption := ' Hackers Blacklist - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.h3Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\hackers\hackers part II.ini') then begin
  MessageDlg('Can not find "hackers part II.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\hackers\hackers part II.ini');
  finally end;
  Form3.Caption := ' Hackers Blacklist - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.h4Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\hackers\hackers part III.ini') then begin
  MessageDlg('Can not find "hackers part III.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\hackers\hackers part III.ini');
  finally end;
  Form3.Caption := ' Hackers Blacklist - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.hackersIPpartIv1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\hackers\hackers part IV.ini') then begin
  MessageDlg('Can not find "hackers part IV.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\hackers\hackers part IV.ini');
  finally end;
  Form3.Caption := ' Hackers Blacklist - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.HashCrew1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Hash Crew\HHC.ini') then begin
  MessageDlg('Can not find "HHC.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Hash Crew\HHC.ini');
  finally end;
  Form3.Caption := ' Hash Crew - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2021.ini') then begin
  MessageDlg('Can not find "Mitchell Krog Blacklist 2021.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False;  MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2021.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2021 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.N22Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2022.ini') then begin
  MessageDlg('Can not find "Mitchell Krog Blacklist 2022.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Mitchell Krog Blacklist\Mitchell Krog Blacklist 2022.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2022 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.N23Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2017.ini') then begin
  MessageDlg('Can not find "Nissar Chababy Blacklist 2017.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2017.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2017 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.N24Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2018.ini') then begin
  MessageDlg('Can not find "Nissar Chababy Blacklist 2018.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2018.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2018 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.N25Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2019.ini') then begin
  MessageDlg('Can not find "Nissar Chababy Blacklist 2019.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2019.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2019 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.N26Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2020.ini') then begin
  MessageDlg('Can not find "Nissar Chababy Blacklist 2020.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2020.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2020 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.N27Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2021.ini') then begin
  MessageDlg('Can not find "Nissar Chababy Blacklist 2021.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2021.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2021 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.N28Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2022.ini') then begin
  MessageDlg('Can not find "Nissar Chababy Blacklist 2022.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Nissar Chababy Blacklist\Nissar Chababy Blacklist 2022.ini');
  finally end;
  Form3.Caption := ' Mitchell Krog Blacklist 2022 - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.W1Click(Sender: TObject);
begin
  if shellexecute(handle,'open','https://de.wikipedia.org/wiki/Hosts_(Datei)',nil,nil,sw_show)<=32
then showmessage('Internetseite konnte nicht geöffnet werden!');
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
  Label3.Caption := 'stop';
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
  CreateNewhost1.Click;
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
var i : integer;
    s : string;
    list : TStringList;
begin
  StatusBar1.SetFocus;

  IF MessageDlg('ATTENTION !'+#13 +
                'Do you want to add the block IP to the list?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    BEGIN

  Label3.Caption := 'start';
  disable;
  Screen.Cursor := crHourGlass;
  s := ComboBox1.Text;
  i := 0;

    try
    list := TStringList.Create;
    list.Assign(ListBox1.Items);
    for i:= 0 to List.Count-1 do
      begin
      list[i] := ComboBox1.Text + ' ' + list[i];
      end;
    ListBox1.Items.Assign(list);
    finally
    list.Free;
    Beep;
    MessageDlg('Pocess finish!',mtInformation, [mbOK], 0);
    end;

  StatusBar1.Panels[1].Text := IntToStr(ListBox1.Items.Count);
  enable;
  END;

  Screen.Cursor := crDefault;
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
var
   i, m : integer;
   s, k : String;
   hist: array[byte] of Integer;
   list : TStringList;
begin
  StatusBar1.SetFocus;

  IF MessageDlg('ATTENTION !'+#13 +
                'Do you want to remove the block IP from the list?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    BEGIN

  Screen.Cursor := crHourGlass;;
  s:= ComboBox1.Text;
  i := 0;
  list := TStringList.Create;

  for m := 1 to Length(s) do begin
    inc(hist[Ord(s[m])]);
  end;

  try
  for i := 0 to ListBox1.Items.Count -1 do
    begin
      s := ListBox1.Items[i];
      k := RightStr(s, Length(s)- m);
      list.Add(k);
    end;
    ListBox1.Items.Assign(list);
  finally
  list.Free;
  Beep;
  MessageDlg('Pocess finish!',mtInformation, [mbOK], 0);
  end;

  StatusBar1.Panels[1].Text := IntToStr(ListBox1.Items.Count);

  END;

  Screen.Cursor := crDefault;
end;


procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
  SpeedButton16.Enabled := false;
  try
  Form4 := TForm4.Create(self); form4.Show;
  finally end;
end;

procedure TForm1.A4Click(Sender: TObject);
begin
  SpeedButton12.Click;
end;

procedure TForm1.DanPollock1Click(Sender: TObject);
begin
  if not FileExists(MainDir + 'Data\hosts\Dan Pollock\Dan Pollock.ini') then begin
  MessageDlg('Can not find "Dan Pollock.ini"' + #13 +
             'Check Host Folder', mtInformation, [mbOK], 0); Exit;  end;

  form3 := TForm3.Create(self); form3.Show;
  Screen.Cursor := crHourGlass;
  MainMenu1.Items[1].Enabled:= False; MainMenu1.Items[2].Enabled:= False;
  try
  Form3.ListBox1.Items.LoadFromFile(MainDir + 'Data\hosts\Dan Pollock\Dan Pollock.ini');
  finally end;
  Form3.Caption := ' Dan Pollock - ' +
  IntToStr(Form3.ListBox1.Items.Count) + ' IPs';
  Screen.Cursor := crDefault;
end;

procedure TForm1.DDoS1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
  Memo2.Lines.LoadFromFile(MainDir + 'Data\hosts\hackers\DDoS.ini');
  except
  MessageDlg('Cant find DDoS.ini File!',mtInformation, [mbOK], 0);
  Screen.Cursor := crDefault;
  Exit;
  end;

  ListBox1.Items.AddStrings(Memo2.Lines);
  ListBox1.Selected[ListBox1.Count-1] := TRUE;
  ListBox1.TopIndex  := ListBox1.Items.Count -1;
  Beep;
  Screen.Cursor := crDefault;
  MessageDlg('DDoS Hosts IPs Included finish',mtInformation, [mbOK], 0);
  StatusBar1.Panels[3].Text := IntToStr(ListBox1.Items.Count);
end;

end.
