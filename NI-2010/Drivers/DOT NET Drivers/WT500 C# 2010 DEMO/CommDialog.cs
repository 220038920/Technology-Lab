using System;
using System.Text;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using Yokogawa.Tm.WT500CommSample.cs;
using TmctlAPINet;
using System.Runtime.InteropServices;

namespace Yokogawa.Tm.WT500CommSample.cs
{
  /// <summary>
  /// WT500 Communication Sample Program, CommDialog.
  /// </summary>
  public class CommDialog : System.Windows.Forms.Form
  {
    #region Variables
	  int m_nEditOrCombo_Ether = 0;	//0:edit 1:combo
	  int m_nEditOrCombo_USB = 0;	//0:edit 1:combo
	  string INIPATH					= GetAppPath() +"\\WT500Demo.ini";
	  const string Ini_Sec_Connect		= "Connection";
	  const string Ini_Key_GPIB_Address = "GIPB_Address";
	  const string Ini_Key_Ether_IPAddr = "VXI11_IPAddr";
	  const string Ini_Key_USB_Serial	= "USBTMC_Serial";
	  private Button IpAddressSearchbutton;
	  private ComboBox IpAddressComboBox;
	  private Button UsbSerialNoSearchbutton;
	  private ComboBox UsbSerialNoComboBox;

	  [DllImport("kernel32.dll", EntryPoint = "GetPrivateProfileString")]
	  private static extern uint GetPrivateProfileString(
		  string lpApplicationName
		  , string lpKeyName
		  , string lpDefault
		  , System.Text.StringBuilder StringBuilder
		  , uint nSize
		  , string lpFileName);

	  [DllImport("kernel32.dll", EntryPoint = "WritePrivateProfileString")]
	  private static extern uint WritePrivateProfileString(
		  string lpApplicationName
		  , string lpEntryName
		  , string lpEntryString
		  , string lpFileName);

    Connection connection = new Connection();
	private static TMCTL tmDev = new TMCTL();
    #endregion

    #region Control Declares
    public System.Windows.Forms.GroupBox Frame1;
    public System.Windows.Forms.ComboBox AddressCombo;
    public System.Windows.Forms.Label AdressLabel;
    public System.Windows.Forms.RadioButton EtherNetButton;
    public System.Windows.Forms.RadioButton GPIBButton;
    public System.Windows.Forms.Button CancelButton_Renamed;
    public System.Windows.Forms.Button OKButton;
    public System.Windows.Forms.ToolTip ToolTip1;
    public System.Windows.Forms.GroupBox Frame2;
    public System.Windows.Forms.TextBox IpAddressText;
    public System.Windows.Forms.Label IpAdressLabel;
  	public System.Windows.Forms.GroupBox groupBox1;
  	public System.Windows.Forms.Label label1;
    public System.Windows.Forms.RadioButton USBButton;
    private TextBox UsbSerialNoTextBox;
    private System.ComponentModel.IContainer components;
    #endregion

    #region Constructor
    public CommDialog()
    {
      InitializeComponent();
    }
    #endregion

    #region Dispose
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    protected override void Dispose(bool disposing)
    {
      if(disposing)
      {
        if(components != null)
        {
          components.Dispose();
        }
      }
      base.Dispose(disposing);
    }
    #endregion

	#region Windows Form Designer generated code
	/// <summary>
	/// Required method for Designer support - do not modify
	/// the contents of this method with the code editor.
	/// </summary>
    private void InitializeComponent()
    {
		this.components = new System.ComponentModel.Container();
		System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CommDialog));
		this.Frame1 = new System.Windows.Forms.GroupBox();
		this.AddressCombo = new System.Windows.Forms.ComboBox();
		this.AdressLabel = new System.Windows.Forms.Label();
		this.GPIBButton = new System.Windows.Forms.RadioButton();
		this.EtherNetButton = new System.Windows.Forms.RadioButton();
		this.CancelButton_Renamed = new System.Windows.Forms.Button();
		this.OKButton = new System.Windows.Forms.Button();
		this.ToolTip1 = new System.Windows.Forms.ToolTip(this.components);
		this.Frame2 = new System.Windows.Forms.GroupBox();
		this.IpAddressSearchbutton = new System.Windows.Forms.Button();
		this.IpAddressComboBox = new System.Windows.Forms.ComboBox();
		this.IpAddressText = new System.Windows.Forms.TextBox();
		this.IpAdressLabel = new System.Windows.Forms.Label();
		this.groupBox1 = new System.Windows.Forms.GroupBox();
		this.UsbSerialNoSearchbutton = new System.Windows.Forms.Button();
		this.UsbSerialNoComboBox = new System.Windows.Forms.ComboBox();
		this.UsbSerialNoTextBox = new System.Windows.Forms.TextBox();
		this.label1 = new System.Windows.Forms.Label();
		this.USBButton = new System.Windows.Forms.RadioButton();
		this.Frame1.SuspendLayout();
		this.Frame2.SuspendLayout();
		this.groupBox1.SuspendLayout();
		this.SuspendLayout();
		// 
		// Frame1
		// 
		this.Frame1.BackColor = System.Drawing.SystemColors.Control;
		this.Frame1.Controls.Add(this.AddressCombo);
		this.Frame1.Controls.Add(this.AdressLabel);
		this.Frame1.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.Frame1.ForeColor = System.Drawing.SystemColors.WindowText;
		this.Frame1.Location = new System.Drawing.Point(18, 9);
		this.Frame1.Name = "Frame1";
		this.Frame1.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.Frame1.Size = new System.Drawing.Size(400, 46);
		this.Frame1.TabIndex = 1;
		this.Frame1.TabStop = false;
		// 
		// AddressCombo
		// 
		this.AddressCombo.BackColor = System.Drawing.SystemColors.Window;
		this.AddressCombo.Cursor = System.Windows.Forms.Cursors.Default;
		this.AddressCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this.AddressCombo.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.AddressCombo.ForeColor = System.Drawing.SystemColors.WindowText;
		this.AddressCombo.Items.AddRange(new object[] {
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            "10",
            "11",
            "12",
            "13",
            "14",
            "15",
            "16",
            "17",
            "18",
            "19",
            "20",
            "21",
            "22",
            "23",
            "24",
            "25",
            "26",
            "27",
            "28",
            "29",
            "30"});
		this.AddressCombo.Location = new System.Drawing.Point(208, 16);
		this.AddressCombo.Name = "AddressCombo";
		this.AddressCombo.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.AddressCombo.Size = new System.Drawing.Size(118, 22);
		this.AddressCombo.TabIndex = 1;
		// 
		// AdressLabel
		// 
		this.AdressLabel.BackColor = System.Drawing.SystemColors.Control;
		this.AdressLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
		this.AdressLabel.Cursor = System.Windows.Forms.Cursors.Default;
		this.AdressLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.AdressLabel.ForeColor = System.Drawing.SystemColors.WindowText;
		this.AdressLabel.Location = new System.Drawing.Point(108, 16);
		this.AdressLabel.Name = "AdressLabel";
		this.AdressLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.AdressLabel.Size = new System.Drawing.Size(94, 20);
		this.AdressLabel.TabIndex = 0;
		this.AdressLabel.Text = " Address";
		this.AdressLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
		// 
		// GPIBButton
		// 
		this.GPIBButton.BackColor = System.Drawing.SystemColors.Control;
		this.GPIBButton.Cursor = System.Windows.Forms.Cursors.Default;
		this.GPIBButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.GPIBButton.ForeColor = System.Drawing.SystemColors.ControlText;
		this.GPIBButton.Location = new System.Drawing.Point(34, 26);
		this.GPIBButton.Name = "GPIBButton";
		this.GPIBButton.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.GPIBButton.Size = new System.Drawing.Size(64, 19);
		this.GPIBButton.TabIndex = 0;
		this.GPIBButton.TabStop = true;
		this.GPIBButton.Text = "GPIB";
		this.GPIBButton.UseVisualStyleBackColor = false;
		this.GPIBButton.CheckedChanged += new System.EventHandler(this.GPIBButton_CheckedChanged);
		// 
		// EtherNetButton
		// 
		this.EtherNetButton.BackColor = System.Drawing.SystemColors.Control;
		this.EtherNetButton.Cursor = System.Windows.Forms.Cursors.Default;
		this.EtherNetButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.EtherNetButton.ForeColor = System.Drawing.SystemColors.ControlText;
		this.EtherNetButton.Location = new System.Drawing.Point(34, 131);
		this.EtherNetButton.Name = "EtherNetButton";
		this.EtherNetButton.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.EtherNetButton.Size = new System.Drawing.Size(84, 18);
		this.EtherNetButton.TabIndex = 3;
		this.EtherNetButton.TabStop = true;
		this.EtherNetButton.Text = "Ether Net";
		this.EtherNetButton.UseVisualStyleBackColor = false;
		this.EtherNetButton.CheckedChanged += new System.EventHandler(this.EtherNetButton_CheckedChanged);
		// 
		// CancelButton_Renamed
		// 
		this.CancelButton_Renamed.BackColor = System.Drawing.SystemColors.Control;
		this.CancelButton_Renamed.Cursor = System.Windows.Forms.Cursors.Default;
		this.CancelButton_Renamed.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.CancelButton_Renamed.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.CancelButton_Renamed.ForeColor = System.Drawing.SystemColors.ControlText;
		this.CancelButton_Renamed.Location = new System.Drawing.Point(272, 175);
		this.CancelButton_Renamed.Name = "CancelButton_Renamed";
		this.CancelButton_Renamed.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.CancelButton_Renamed.Size = new System.Drawing.Size(80, 20);
		this.CancelButton_Renamed.TabIndex = 7;
		this.CancelButton_Renamed.Text = "Cancel";
		this.CancelButton_Renamed.UseVisualStyleBackColor = false;
		// 
		// OKButton
		// 
		this.OKButton.BackColor = System.Drawing.SystemColors.Control;
		this.OKButton.Cursor = System.Windows.Forms.Cursors.Default;
		this.OKButton.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.OKButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.OKButton.ForeColor = System.Drawing.SystemColors.ControlText;
		this.OKButton.Location = new System.Drawing.Point(109, 175);
		this.OKButton.Name = "OKButton";
		this.OKButton.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.OKButton.Size = new System.Drawing.Size(80, 20);
		this.OKButton.TabIndex = 6;
		this.OKButton.Text = "OK";
		this.OKButton.UseVisualStyleBackColor = false;
		this.OKButton.Click += new System.EventHandler(this.OKButton_Click);
		// 
		// Frame2
		// 
		this.Frame2.BackColor = System.Drawing.SystemColors.Control;
		this.Frame2.Controls.Add(this.IpAddressSearchbutton);
		this.Frame2.Controls.Add(this.IpAddressComboBox);
		this.Frame2.Controls.Add(this.IpAddressText);
		this.Frame2.Controls.Add(this.IpAdressLabel);
		this.Frame2.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.Frame2.ForeColor = System.Drawing.SystemColors.WindowText;
		this.Frame2.Location = new System.Drawing.Point(18, 114);
		this.Frame2.Name = "Frame2";
		this.Frame2.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.Frame2.Size = new System.Drawing.Size(400, 46);
		this.Frame2.TabIndex = 3;
		this.Frame2.TabStop = false;
		// 
		// IpAddressSearchbutton
		// 
		this.IpAddressSearchbutton.Location = new System.Drawing.Point(332, 14);
		this.IpAddressSearchbutton.Name = "IpAddressSearchbutton";
		this.IpAddressSearchbutton.Size = new System.Drawing.Size(52, 22);
		this.IpAddressSearchbutton.TabIndex = 3;
		this.IpAddressSearchbutton.Text = "Search";
		this.IpAddressSearchbutton.UseVisualStyleBackColor = true;
		this.IpAddressSearchbutton.Click += new System.EventHandler(this.IpAddressSearchbutton_Click);
		// 
		// IpAddressComboBox
		// 
		this.IpAddressComboBox.FormattingEnabled = true;
		this.IpAddressComboBox.Location = new System.Drawing.Point(208, 15);
		this.IpAddressComboBox.Name = "IpAddressComboBox";
		this.IpAddressComboBox.Size = new System.Drawing.Size(118, 22);
		this.IpAddressComboBox.TabIndex = 2;
		this.IpAddressComboBox.Visible = false;
		// 
		// IpAddressText
		// 
		this.IpAddressText.AcceptsReturn = true;
		this.IpAddressText.BackColor = System.Drawing.SystemColors.Window;
		this.IpAddressText.Cursor = System.Windows.Forms.Cursors.IBeam;
		this.IpAddressText.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.IpAddressText.ForeColor = System.Drawing.SystemColors.WindowText;
		this.IpAddressText.Location = new System.Drawing.Point(208, 15);
		this.IpAddressText.MaxLength = 15;
		this.IpAddressText.Name = "IpAddressText";
		this.IpAddressText.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.IpAddressText.Size = new System.Drawing.Size(118, 22);
		this.IpAddressText.TabIndex = 1;
		// 
		// IpAdressLabel
		// 
		this.IpAdressLabel.BackColor = System.Drawing.SystemColors.Control;
		this.IpAdressLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
		this.IpAdressLabel.Cursor = System.Windows.Forms.Cursors.Default;
		this.IpAdressLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.IpAdressLabel.ForeColor = System.Drawing.SystemColors.WindowText;
		this.IpAdressLabel.Location = new System.Drawing.Point(108, 15);
		this.IpAdressLabel.Name = "IpAdressLabel";
		this.IpAdressLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.IpAdressLabel.Size = new System.Drawing.Size(94, 22);
		this.IpAdressLabel.TabIndex = 0;
		this.IpAdressLabel.Text = " IP Address";
		this.IpAdressLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
		// 
		// groupBox1
		// 
		this.groupBox1.BackColor = System.Drawing.SystemColors.Control;
		this.groupBox1.Controls.Add(this.UsbSerialNoSearchbutton);
		this.groupBox1.Controls.Add(this.UsbSerialNoComboBox);
		this.groupBox1.Controls.Add(this.UsbSerialNoTextBox);
		this.groupBox1.Controls.Add(this.label1);
		this.groupBox1.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.groupBox1.ForeColor = System.Drawing.SystemColors.WindowText;
		this.groupBox1.Location = new System.Drawing.Point(18, 63);
		this.groupBox1.Name = "groupBox1";
		this.groupBox1.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.groupBox1.Size = new System.Drawing.Size(400, 46);
		this.groupBox1.TabIndex = 8;
		this.groupBox1.TabStop = false;
		// 
		// UsbSerialNoSearchbutton
		// 
		this.UsbSerialNoSearchbutton.Location = new System.Drawing.Point(332, 16);
		this.UsbSerialNoSearchbutton.Name = "UsbSerialNoSearchbutton";
		this.UsbSerialNoSearchbutton.Size = new System.Drawing.Size(52, 22);
		this.UsbSerialNoSearchbutton.TabIndex = 5;
		this.UsbSerialNoSearchbutton.Text = "Search";
		this.UsbSerialNoSearchbutton.UseVisualStyleBackColor = true;
		this.UsbSerialNoSearchbutton.Click += new System.EventHandler(this.UsbSerialNoSearchbutton_Click);
		// 
		// UsbSerialNoComboBox
		// 
		this.UsbSerialNoComboBox.FormattingEnabled = true;
		this.UsbSerialNoComboBox.Location = new System.Drawing.Point(208, 17);
		this.UsbSerialNoComboBox.Name = "UsbSerialNoComboBox";
		this.UsbSerialNoComboBox.Size = new System.Drawing.Size(118, 22);
		this.UsbSerialNoComboBox.TabIndex = 4;
		this.UsbSerialNoComboBox.Visible = false;
		// 
		// UsbSerialNoTextBox
		// 
		this.UsbSerialNoTextBox.Font = new System.Drawing.Font("Arial", 9.75F);
		this.UsbSerialNoTextBox.Location = new System.Drawing.Point(208, 17);
		this.UsbSerialNoTextBox.Name = "UsbSerialNoTextBox";
		this.UsbSerialNoTextBox.Size = new System.Drawing.Size(118, 22);
		this.UsbSerialNoTextBox.TabIndex = 2;
		// 
		// label1
		// 
		this.label1.BackColor = System.Drawing.SystemColors.Control;
		this.label1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
		this.label1.Cursor = System.Windows.Forms.Cursors.Default;
		this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.label1.ForeColor = System.Drawing.SystemColors.WindowText;
		this.label1.Location = new System.Drawing.Point(108, 17);
		this.label1.Name = "label1";
		this.label1.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.label1.Size = new System.Drawing.Size(94, 20);
		this.label1.TabIndex = 0;
		this.label1.Text = " SerialNo.";
		this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
		// 
		// USBButton
		// 
		this.USBButton.BackColor = System.Drawing.SystemColors.Control;
		this.USBButton.Cursor = System.Windows.Forms.Cursors.Default;
		this.USBButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
		this.USBButton.ForeColor = System.Drawing.SystemColors.ControlText;
		this.USBButton.Location = new System.Drawing.Point(34, 80);
		this.USBButton.Name = "USBButton";
		this.USBButton.RightToLeft = System.Windows.Forms.RightToLeft.No;
		this.USBButton.Size = new System.Drawing.Size(64, 18);
		this.USBButton.TabIndex = 2;
		this.USBButton.TabStop = true;
		this.USBButton.Text = "USB";
		this.USBButton.UseVisualStyleBackColor = false;
		this.USBButton.CheckedChanged += new System.EventHandler(this.USBButton_CheckedChanged);
		// 
		// CommDialog
		// 
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 12);
		this.ClientSize = new System.Drawing.Size(432, 213);
		this.Controls.Add(this.GPIBButton);
		this.Controls.Add(this.Frame1);
		this.Controls.Add(this.EtherNetButton);
		this.Controls.Add(this.USBButton);
		this.Controls.Add(this.CancelButton_Renamed);
		this.Controls.Add(this.OKButton);
		this.Controls.Add(this.Frame2);
		this.Controls.Add(this.groupBox1);
		this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
		this.MaximizeBox = false;
		this.Name = "CommDialog";
		this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "Plese Select the Connection type";
		this.Load += new System.EventHandler(this.CommDialog_Load);
		this.Frame1.ResumeLayout(false);
		this.Frame2.ResumeLayout(false);
		this.Frame2.PerformLayout();
		this.groupBox1.ResumeLayout(false);
		this.groupBox1.PerformLayout();
		this.ResumeLayout(false);

	}
    #endregion

    #region CommDialogLoad
    //********************************************
    ///CommDialogLoad
    //********************************************
    private void CommDialog_Load(object sender, System.EventArgs e)
    {
      //set the list items into comboBoxs

      // set the default values of comboBox
      AddressCombo.SelectedIndex  = 0;

	  GetConnectSettings();
      // set the default selection as GPIB
      GPIBButton.Checked = true;
    }
    #endregion
      
    #region GPIBChecked
    //********************************************
    ///GPIBChecked
    //********************************************
    private void GPIBButton_CheckedChanged(object sender, System.EventArgs e)
    {
	  AddressCombo.Enabled         = true;
	  AddressCombo.BackColor       = SystemColors.Window;

	  UsbSerialNoTextBox.Enabled   = false;
      UsbSerialNoTextBox.BackColor = SystemColors.Control;
	  UsbSerialNoComboBox.Enabled = false;
	  UsbSerialNoComboBox.BackColor = SystemColors.Control;
	  UsbSerialNoSearchbutton.Enabled = false;
	  
	  IpAddressText.Enabled = false;
	  IpAddressText.BackColor = SystemColors.Control; ;
	  IpAddressComboBox.Enabled = false;
	  IpAddressComboBox.BackColor = SystemColors.Control;
	  IpAddressSearchbutton.Enabled = false;
	}
    #endregion

	#region USBChecked
	//********************************************
	///USBChecked
	//********************************************
	private void USBButton_CheckedChanged(object sender, System.EventArgs e)
	{
	  AddressCombo.Enabled         = false;
	  AddressCombo.BackColor       = SystemColors.Control;

	  if (m_nEditOrCombo_USB == 0)
	  {
		  UsbSerialNoTextBox.Enabled = true;
		  UsbSerialNoTextBox.BackColor = SystemColors.Window;
		  UsbSerialNoComboBox.Enabled = false;
		  UsbSerialNoComboBox.BackColor = SystemColors.Control;
	  }
	  else
	  {
		  UsbSerialNoTextBox.Enabled = false;
		  UsbSerialNoTextBox.BackColor = SystemColors.Control;
		  UsbSerialNoComboBox.Enabled = true;
		  UsbSerialNoComboBox.BackColor = SystemColors.Window;
	  }
	  UsbSerialNoSearchbutton.Enabled = true;

	  IpAddressText.Enabled = false;
	  IpAddressText.BackColor = SystemColors.Control;
	  IpAddressComboBox.Enabled = false;
	  IpAddressComboBox.BackColor = SystemColors.Control;
	  IpAddressSearchbutton.Enabled = false;
	}
	#endregion

    #region EtherNetChecked
    //********************************************
    ///EtherNetChecked
    //********************************************
    private void EtherNetButton_CheckedChanged(object sender, System.EventArgs e)
    {
      AddressCombo.Enabled         = false; 
      AddressCombo.BackColor       = SystemColors.Control;

      UsbSerialNoTextBox.Enabled   = false;
      UsbSerialNoTextBox.BackColor = SystemColors.Control;
	  UsbSerialNoComboBox.Enabled = false;
	  UsbSerialNoComboBox.BackColor = SystemColors.Control;
	  UsbSerialNoSearchbutton.Enabled = false;

	  if (m_nEditOrCombo_Ether == 0)
	  {
		  IpAddressText.Enabled = true;
		  IpAddressText.BackColor = SystemColors.Window;
		  IpAddressComboBox.Enabled = false;
		  IpAddressComboBox.BackColor = SystemColors.Control;
	  }
	  else
	  {
		  IpAddressText.Enabled = false;
		  IpAddressText.BackColor = SystemColors.Control; 
		  IpAddressComboBox.Enabled = true;
		  IpAddressComboBox.BackColor = SystemColors.Window;
	  }
	  IpAddressSearchbutton.Enabled = true;
    }
    #endregion

    #region OKButtonClick
    //********************************************
    ///OKButtonClick
    //********************************************
    private void OKButton_Click(object sender, System.EventArgs e)
    {
        StringBuilder decode;
        int len = 256;
        decode  = new StringBuilder(256);

      DialogResult tryAgain = DialogResult.OK;//when connection failed, ask for trying again.
      while(tryAgain == DialogResult.OK)
      {
		  if(GPIBButton.Checked)
		  {
			  //when GPIB is selected, connect with GPIB port.
			  connection.devAddress = AddressCombo.Text;
			  connection.wireType   = 1;
		  }
		  else if(EtherNetButton.Checked)
		  {
			  //when Ether is selected, connect with Ether port.
			  //set the address, username and password.
			  if (m_nEditOrCombo_Ether == 0)
			  {
				  connection.devAddress = IpAddressText.Text;
			  }
			  else
			  {
				  connection.devAddress = IpAddressComboBox.Text;
			  }
				connection.wireType   = 8;
		  }
		  else if(USBButton.Checked)
		  {
			  //when USB is selected, connect with USB port.//
			  if (m_nEditOrCombo_USB == 0)
			  {
				  connection.GetEncodeSerialNumber(decode, len, UsbSerialNoTextBox.Text);
			  }
			  else
			  {
				  connection.GetEncodeSerialNumber(decode, len, UsbSerialNoComboBox.Text);
			  }
              connection.devAddress = decode.ToString();
			  connection.wireType   = 7;
		  }
        //run connection.
        if(connection.Initialize() == 0)
        {
		  WriteConnectSettings();
          //if successed, close this form and display main form.
          this.Close();
          return;
        }
        //if failed, select to try again or abort.
        tryAgain = MessageBox.Show("Can not connect with the instrument, try again?", "Connection failed.", MessageBoxButtons.OKCancel, MessageBoxIcon.Error);
      }
      //after select cancel in connection failed MsgBox, 
      //set a return flag in order to prevent closing.
      this.DialogResult = DialogResult.Retry;
      return;
    }
    #endregion

	#region UsbSerialNoSearchbutton_Click
	//********************************************
	///UsbSerialNoSearchbutton_Click
	//********************************************
	private void UsbSerialNoSearchbutton_Click(object sender, EventArgs e)
	{
		DEVICELIST[] listbuff = new DEVICELIST[128];
		DEVICELIST[] list = new DEVICELIST[128];
		int ret = 0;
		int listindex = 0;
		int num = 0;
		int n = 0;
		StringBuilder decode = new StringBuilder();

		ret = tmDev.SearchDevices(TMCTL.TM_CTL_USBTMC2, listbuff, 128, ref num, null);
		for (n = 0; n < num; n++)
		{
			ret = Check_WTSeries(TMCTL.TM_CTL_USBTMC2, listbuff[n].adr);
			if (ret == 0)
			{
				list[listindex] = listbuff[n];
				listindex++;
			}
		}
		if (listindex > 0)
		{
			MessageBox.Show("Device is found", "Search Result", MessageBoxButtons.OK, MessageBoxIcon.Information);
			if (listindex == 1)
			{
				UsbSerialNoTextBox.Visible = true;
				UsbSerialNoComboBox.Visible = false;
				ret = tmDev.DecodeSerialNumber(decode, 256, list[0].adr);
				UsbSerialNoTextBox.Text = decode.ToString();
				m_nEditOrCombo_USB = 0;
			}
			else
			{
				UsbSerialNoComboBox.Visible = true;
				UsbSerialNoTextBox.Visible = false;
				UsbSerialNoComboBox.Items.Clear();
				for (n = 0; n < listindex; n++)
				{
					ret = tmDev.DecodeSerialNumber(decode, 256, list[n].adr);
					if (ret == 0)
					{
						UsbSerialNoComboBox.Items.Add(decode);
					}
				}
				UsbSerialNoComboBox.SelectedIndex = 0;
				m_nEditOrCombo_USB = 1;
			}
		}
		else
		{
			UsbSerialNoTextBox.Visible = true;
			UsbSerialNoComboBox.Visible = false;
			UsbSerialNoTextBox.Text = ("");
			UsbSerialNoComboBox.Items.Clear();
			m_nEditOrCombo_USB = 0;
			MessageBox.Show("Device is not found", "Search Result", MessageBoxButtons.OK, MessageBoxIcon.Information);
		}
		USBButton_CheckedChanged(true, System.EventArgs.Empty);
	}
	#endregion

	#region IpAddressSearchbutton_Click
	//********************************************
	///IpAddressSearchbutton_Click
	//********************************************
	private void IpAddressSearchbutton_Click(object sender, EventArgs e)
	{
		DEVICELIST[] listbuff = new DEVICELIST[128];
		DEVICELIST[] list = new DEVICELIST[128];
		int listindex = 0;
		int ret = 0;
		int num = 0;
		int n = 0;

		ret = tmDev.SearchDevices(TMCTL.TM_CTL_VXI11, listbuff, 128, ref num, null);
		for (n = 0; n < num; n++)
		{
			ret = Check_WTSeries(TMCTL.TM_CTL_VXI11, listbuff[n].adr);
			if (ret == 0)
			{
				list[listindex] = listbuff[n];
				listindex++;
			}
		}
		if (listindex > 0)
		{
			MessageBox.Show("Device is found", "Search Result", MessageBoxButtons.OK, MessageBoxIcon.Information);
			if (listindex == 1)
			{
				IpAddressText.Visible = true;
				IpAddressComboBox.Visible = false;
				IpAddressText.Text = list[0].adr;
				m_nEditOrCombo_Ether = 0;
			}
			else
			{
				IpAddressComboBox.Visible = true;
				IpAddressText.Visible = false;
				IpAddressComboBox.Items.Clear();
				for (n = 0; n < listindex; n++)
				{
					IpAddressComboBox.Items.Add(list[n].adr);
				}
				IpAddressComboBox.SelectedIndex = 0;
				m_nEditOrCombo_Ether = 1;
			}
		}
		else
		{
			IpAddressText.Visible = true;
			IpAddressComboBox.Visible = false;
			IpAddressText.Text = ("");
			IpAddressComboBox.Items.Clear();
			m_nEditOrCombo_Ether = 0;
			MessageBox.Show("Device is not found", "Search Result", MessageBoxButtons.OK, MessageBoxIcon.Information);
		}
		EtherNetButton_CheckedChanged(true, System.EventArgs.Empty);
	}
	#endregion
  
	#region WriteConnectSettings
	//********************************************
	///WriteConnectSettings
	//********************************************
	private void WriteConnectSettings()
	{
		string buff;

		if (GPIBButton.Checked)
		{
			WritePrivateProfileString(Ini_Sec_Connect, Ini_Key_GPIB_Address, AddressCombo.Text, INIPATH);
		}
		else if (USBButton.Checked)
		{
			if (m_nEditOrCombo_USB == 0)
			{
				buff = UsbSerialNoTextBox.Text;
			}
			else
			{
				buff = UsbSerialNoComboBox.Text;
			}
			WritePrivateProfileString(Ini_Sec_Connect, Ini_Key_USB_Serial, buff, INIPATH);
		}
		else if (EtherNetButton.Checked)
		{
			if (m_nEditOrCombo_Ether == 0)
			{
				buff = IpAddressText.Text;
			}
			else
			{
				buff = UsbSerialNoComboBox.Text;
			}
			WritePrivateProfileString(Ini_Sec_Connect, Ini_Key_Ether_IPAddr, buff, INIPATH);
		}
	}
	#endregion

	#region GetConnectSettings
	//********************************************
	///GetConnectSettings
	//********************************************
	private void GetConnectSettings()
	{
		StringBuilder buff = new StringBuilder(16);
        //GPIB
		GetPrivateProfileString(Ini_Sec_Connect, Ini_Key_GPIB_Address, "", buff, 16, INIPATH);
		AddressCombo.Text = buff.ToString();
        //USBTMC
		GetPrivateProfileString(Ini_Sec_Connect, Ini_Key_USB_Serial, "", buff, 16, INIPATH);
		UsbSerialNoTextBox.Text = buff.ToString();
        //Ether(VXI11)
        GetPrivateProfileString(Ini_Sec_Connect, Ini_Key_Ether_IPAddr, "", buff, 16, INIPATH);
		IpAddressText.Text = buff.ToString();
	}
	#endregion

	#region GetAppPath
	//********************************************
	///GetAppPath
	//********************************************
	public static string GetAppPath()
	{
		return System.IO.Path.GetDirectoryName(
			  System.Reflection.Assembly.GetExecutingAssembly().Location);
	}
	#endregion

	#region Check_WTSeries
	//********************************************
	///Check_WTSeries
	//********************************************
	public int Check_WTSeries(int wire, string adr)
	{
		int rtn;//return 0 when successed.
		int m_iID = -1;
		string model;

		rtn = tmDev.Initialize(wire, adr, ref m_iID);
		if (rtn != 0)
		{
			return rtn;
		}
		//set terminator of the message.
		rtn = tmDev.SetTerm(m_iID, 2, 1);
		if (rtn != 0)
		{
			tmDev.Finish(m_iID);
			return rtn;
		}
		//timeout settings, 1*100ms
		rtn = tmDev.SetTimeout(m_iID, 1);
		if (rtn != 0)
		{
			tmDev.Finish(m_iID);
			return rtn;
		}
		//test the device module connected.
		rtn = tmDev.Send(m_iID, "*IDN?");
		int maxLength = 256;
		int realLength = 0;
		StringBuilder buf;
		buf = new StringBuilder(256);
		tmDev.Receive(m_iID, buf, maxLength, ref realLength);
		model = buf.ToString();
		//check WTseries(WT500Series)
		if (model.Contains("76020"))
		{
			rtn = 0;
		}
		else
		{
			rtn = 1;
		}
		//timeout settings, 20*100ms
		tmDev.SetTimeout(m_iID, 20);
		tmDev.Finish(m_iID);
		return rtn;
	}
	#endregion
  }
}
