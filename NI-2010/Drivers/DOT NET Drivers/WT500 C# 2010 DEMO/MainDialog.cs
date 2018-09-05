using System;
using System.IO;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using TmctlAPINet;

namespace Yokogawa.Tm.WT500CommSample.cs
{
	/// <summary>
	/// Define WT500 Function list structure
	/// </summary>
	    #region Funstr
	    public struct Funstr
	     {
		   public string FunctionName;
		   public bool ElementFlag;
		   public bool OrderFlag;
	     }
	    #endregion

	/// <summary>
	/// WT500 Communication Sample Program, MainDialog.
	/// </summary>
	public class MainDialog : System.Windows.Forms.Form
	{
		#region Variables
		private readonly string[] errorMsg = new string[14];
		private readonly string[] updateRateList = new string[6];  //update rate combo list(foreach)
		private readonly string[,] voltageList = new string[2,12]; //voltage combo list(while)
		private readonly string[,] currentList = new string[2,19]; //current combo list(direct)
		private readonly string[] eList = new string[6];           //element combo list(while)
		public Funstr[] List=new Funstr[82];
		private readonly string[] oList = new string[102];         //order combo list(foreach)
		private readonly string rangeListAuto = "AUTO";            //auto range list item
		private const string MODEL = "760203";
		private const int MAX_ELEMENT = 3;
		private const int MAX_LINES = 100;
		private const int MAX_ITEM = 10;
        private const int MAX_FUNCTION = 66;
        private const int MAX_ORDER = 51;
        private const int NORMAL_FUNCTION_TOP    = 0;
        private const int NORMAL_FUNCTION_BOTTOM = 41;
        private const int HARM_FUNCTION_TOP      = 42;
        private const int HARM_FUNCTION_BOTTOM   = 61;
        private const int DELTA_FUNCTION_TOP     = 62;
        private const int DELTA_FUNCTION_BOTTOM  = 65;
		private int lastElement;
		private string crestFactor;
		public  int Currentelement;
		private int HarmonicOption;
		private System.Windows.Forms.Button VerboseCommand;
  
		Connection connection = new Connection();
		#endregion

		#region FindFunPos
		/// <summary>
		/// find function position in the List[] arrary
		/// </summary>
		/// <param name="fun"></param>
		/// <param name="postion"></param>
		public void  FindFunPos(string fun,ref int postion)
		{
            for(int i=0; i<MAX_FUNCTION; i++)
			{
				if(List[i].FunctionName == fun)
				{
					postion=i;
					return;
				}
			}
		}
		#endregion

		#region Controls Delcare
		/// <summary>
		/// Controls Delcare
		/// </summary>
		private  System.Windows.Forms.Timer Timer1;
		private  System.Windows.Forms.Timer Timer2;
		private  System.Windows.Forms.Label UpdateRateLabel;
		private  System.Windows.Forms.Label TestCommandSendLabel;
		private  System.Windows.Forms.GroupBox RangeSettingsFrame;
		private  System.Windows.Forms.ComboBox CurrentRangeCombo;
		private  System.Windows.Forms.ComboBox VoltRangeCombo;
		private  System.Windows.Forms.Button RangeSetCommand;
		private  System.Windows.Forms.Label SelectionLabel;
		private  System.Windows.Forms.Label CurrentRangeLabel;
		private  System.Windows.Forms.Label VoltRangeLabel;
		private  System.Windows.Forms.Label RangeSettingsLabel;
		private  System.Windows.Forms.Label NumericItemSettingsLabel;
		private  System.Windows.Forms.Label ModelTypeLabel;
		private  System.Windows.Forms.Label ErrorInformationLabel;
		private  System.Windows.Forms.Button HeaderCommand;
		private  System.Windows.Forms.Button CloseCommand;
		private  System.Windows.Forms.ComboBox UpdateRateCombo;
		private  System.Windows.Forms.Button AllResetCommand;
		private  System.Windows.Forms.Button ErrInfoGetCommand;
		private  System.Windows.Forms.TextBox ModelTypeTextBox;
		private  System.Windows.Forms.TextBox ErrInfoText;
		private  System.Windows.Forms.GroupBox NumericSettingsFrame;
		private  System.Windows.Forms.Button GetAllItemsCommand;
		private  System.Windows.Forms.TextBox FileNameText;
		private  System.Windows.Forms.TextBox TimerText;
		private  System.Windows.Forms.Button GetDataTimerCommand;
		private  System.Windows.Forms.Button GetDataURateCommand;
		private  System.Windows.Forms.Button GetDataSgCommand;
		private  System.Windows.Forms.RadioButton ASCIIOption;
		private  System.Windows.Forms.RadioButton BinaryOption;
		private  System.Windows.Forms.ComboBox ItemNumberCombo;
		private  System.Windows.Forms.Button SetAllItemsCommand;
		private  System.Windows.Forms.CheckBox DataSaveCheckBox;
		private  System.Windows.Forms.TextBox ItemRowText2;
		private  System.Windows.Forms.TextBox ItemRowText1;
		private  System.Windows.Forms.Label FileNameLabel;
		private  System.Windows.Forms.Label msecLabel;
		private  System.Windows.Forms.Label ItemColumeLabel2;
		private  System.Windows.Forms.Label ItemColumeLabel1;
		private  System.Windows.Forms.Label ItemNumberLabel;
		private  System.Windows.Forms.Button TestCmdSendCommand;
		private  System.Windows.Forms.TextBox TestCmdSendText;
		private  System.Windows.Forms.Button UpdateRateSetCommand;
		private  System.Windows.Forms.GroupBox MonitorFrame;
		private  System.Windows.Forms.Button ReceiveClearCommand;
		private  System.Windows.Forms.Button SendClearCommand;
		private  System.Windows.Forms.TextBox ReceiveMntText;
		private  System.Windows.Forms.TextBox SendCmdMntText;
		private  System.Windows.Forms.Label ReceiveMntLabel;
		private  System.Windows.Forms.Label SendCmdMntLabel;

		private  System.Windows.Forms.RadioButton _ElementOption_0;
		private  System.Windows.Forms.RadioButton _ElementOption_1;
        private System.Windows.Forms.RadioButton _ElementOption_2;
		private  System.Windows.Forms.TextBox _DText_0;
		private  System.Windows.Forms.TextBox _DText_1;
		private  System.Windows.Forms.TextBox _DText_2;
		private  System.Windows.Forms.TextBox _DText_3;
		private  System.Windows.Forms.TextBox _DText_4;
		private  System.Windows.Forms.TextBox _DText_5;
		private  System.Windows.Forms.TextBox _DText_6;
		private  System.Windows.Forms.TextBox _DText_7;
		private  System.Windows.Forms.TextBox _DText_8;
		private  System.Windows.Forms.TextBox _DText_9;
		private  System.Windows.Forms.ComboBox _OCombo_0;
		private  System.Windows.Forms.ComboBox _OCombo_1;
		private  System.Windows.Forms.ComboBox _OCombo_2;
		private  System.Windows.Forms.ComboBox _OCombo_3;
		private  System.Windows.Forms.ComboBox _OCombo_4;
		private  System.Windows.Forms.ComboBox _OCombo_5;
		private  System.Windows.Forms.ComboBox _OCombo_6;
		private  System.Windows.Forms.ComboBox _OCombo_7;
		private  System.Windows.Forms.ComboBox _OCombo_8;
		private  System.Windows.Forms.ComboBox _OCombo_9;
		private  System.Windows.Forms.ComboBox _ECombo_0;
		private  System.Windows.Forms.ComboBox _ECombo_1;
		private  System.Windows.Forms.ComboBox _ECombo_2;
		private  System.Windows.Forms.ComboBox _ECombo_3;
		private  System.Windows.Forms.ComboBox _ECombo_4;
		private  System.Windows.Forms.ComboBox _ECombo_5;
		private  System.Windows.Forms.ComboBox _ECombo_6;
		private  System.Windows.Forms.ComboBox _ECombo_7;
		private  System.Windows.Forms.ComboBox _ECombo_8;
		private  System.Windows.Forms.ComboBox _ECombo_9;
		private  System.Windows.Forms.ComboBox _FCombo_0;
		private  System.Windows.Forms.ComboBox _FCombo_1;
		private  System.Windows.Forms.ComboBox _FCombo_2;
		private  System.Windows.Forms.ComboBox _FCombo_3;
		private  System.Windows.Forms.ComboBox _FCombo_4;
		private  System.Windows.Forms.ComboBox _FCombo_5;
		private  System.Windows.Forms.ComboBox _FCombo_6;
		private  System.Windows.Forms.ComboBox _FCombo_7;
		private  System.Windows.Forms.ComboBox _FCombo_8;
		private  System.Windows.Forms.ComboBox _FCombo_9;
		private  ControlsArray FCombos;
		private  ControlsArray ECombos;
		private  ControlsArray OCombos;
		private  ControlsArray DTexts;
		private  ControlsArray ElementOptions;

		private System.ComponentModel.IContainer components;
		#endregion

		#region Construction
		public MainDialog()
		{
			InitializeComponent();
			InitListItem();
		}
		#endregion

		#region Dispose
		/// <summary>
		///  Clean up any resources being used.
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

		#region InitializeComponent
		//******************************************************
		/// <summary>
		/// InitializeComponent Method
		/// </summary>
		//******************************************************
		private void InitializeComponent()
		{
            this.components = new System.ComponentModel.Container();
            this.RangeSettingsFrame = new System.Windows.Forms.GroupBox();
            this.CurrentRangeCombo = new System.Windows.Forms.ComboBox();
            this.VoltRangeCombo = new System.Windows.Forms.ComboBox();
            this.RangeSetCommand = new System.Windows.Forms.Button();
            this._ElementOption_0 = new System.Windows.Forms.RadioButton();
            this._ElementOption_1 = new System.Windows.Forms.RadioButton();
            this._ElementOption_2 = new System.Windows.Forms.RadioButton();
            this.SelectionLabel = new System.Windows.Forms.Label();
            this.CurrentRangeLabel = new System.Windows.Forms.Label();
            this.VoltRangeLabel = new System.Windows.Forms.Label();
            this.RangeSettingsLabel = new System.Windows.Forms.Label();
            this.UpdateRateLabel = new System.Windows.Forms.Label();
            this.UpdateRateCombo = new System.Windows.Forms.ComboBox();
            this.UpdateRateSetCommand = new System.Windows.Forms.Button();
            this.TestCommandSendLabel = new System.Windows.Forms.Label();
            this.TestCmdSendCommand = new System.Windows.Forms.Button();
            this.TestCmdSendText = new System.Windows.Forms.TextBox();
            this.ErrorInformationLabel = new System.Windows.Forms.Label();
            this.ErrInfoGetCommand = new System.Windows.Forms.Button();
            this.ErrInfoText = new System.Windows.Forms.TextBox();
            this.AllResetCommand = new System.Windows.Forms.Button();
            this.ModelTypeLabel = new System.Windows.Forms.Label();
            this.ModelTypeTextBox = new System.Windows.Forms.TextBox();
            this.NumericSettingsFrame = new System.Windows.Forms.GroupBox();
            this.GetAllItemsCommand = new System.Windows.Forms.Button();
            this.FileNameText = new System.Windows.Forms.TextBox();
            this.TimerText = new System.Windows.Forms.TextBox();
            this.GetDataTimerCommand = new System.Windows.Forms.Button();
            this.GetDataURateCommand = new System.Windows.Forms.Button();
            this.GetDataSgCommand = new System.Windows.Forms.Button();
            this._DText_0 = new System.Windows.Forms.TextBox();
            this._DText_1 = new System.Windows.Forms.TextBox();
            this._DText_2 = new System.Windows.Forms.TextBox();
            this._DText_3 = new System.Windows.Forms.TextBox();
            this._DText_4 = new System.Windows.Forms.TextBox();
            this._DText_5 = new System.Windows.Forms.TextBox();
            this._DText_6 = new System.Windows.Forms.TextBox();
            this._DText_7 = new System.Windows.Forms.TextBox();
            this._DText_8 = new System.Windows.Forms.TextBox();
            this._DText_9 = new System.Windows.Forms.TextBox();
            this._OCombo_0 = new System.Windows.Forms.ComboBox();
            this._OCombo_1 = new System.Windows.Forms.ComboBox();
            this._OCombo_2 = new System.Windows.Forms.ComboBox();
            this._OCombo_3 = new System.Windows.Forms.ComboBox();
            this._OCombo_4 = new System.Windows.Forms.ComboBox();
            this._OCombo_5 = new System.Windows.Forms.ComboBox();
            this._OCombo_6 = new System.Windows.Forms.ComboBox();
            this._OCombo_7 = new System.Windows.Forms.ComboBox();
            this._OCombo_8 = new System.Windows.Forms.ComboBox();
            this._OCombo_9 = new System.Windows.Forms.ComboBox();
            this._ECombo_0 = new System.Windows.Forms.ComboBox();
            this._ECombo_1 = new System.Windows.Forms.ComboBox();
            this._ECombo_2 = new System.Windows.Forms.ComboBox();
            this._ECombo_3 = new System.Windows.Forms.ComboBox();
            this._ECombo_4 = new System.Windows.Forms.ComboBox();
            this._ECombo_5 = new System.Windows.Forms.ComboBox();
            this._ECombo_6 = new System.Windows.Forms.ComboBox();
            this._ECombo_7 = new System.Windows.Forms.ComboBox();
            this._ECombo_8 = new System.Windows.Forms.ComboBox();
            this._ECombo_9 = new System.Windows.Forms.ComboBox();
            this.ItemNumberCombo = new System.Windows.Forms.ComboBox();
            this.SetAllItemsCommand = new System.Windows.Forms.Button();
            this.DataSaveCheckBox = new System.Windows.Forms.CheckBox();
            this._FCombo_9 = new System.Windows.Forms.ComboBox();
            this._FCombo_8 = new System.Windows.Forms.ComboBox();
            this._FCombo_7 = new System.Windows.Forms.ComboBox();
            this._FCombo_6 = new System.Windows.Forms.ComboBox();
            this._FCombo_5 = new System.Windows.Forms.ComboBox();
            this.ItemRowText2 = new System.Windows.Forms.TextBox();
            this._FCombo_4 = new System.Windows.Forms.ComboBox();
            this._FCombo_3 = new System.Windows.Forms.ComboBox();
            this._FCombo_2 = new System.Windows.Forms.ComboBox();
            this._FCombo_1 = new System.Windows.Forms.ComboBox();
            this._FCombo_0 = new System.Windows.Forms.ComboBox();
            this.ItemRowText1 = new System.Windows.Forms.TextBox();
            this.FileNameLabel = new System.Windows.Forms.Label();
            this.msecLabel = new System.Windows.Forms.Label();
            this.ItemColumeLabel2 = new System.Windows.Forms.Label();
            this.ItemColumeLabel1 = new System.Windows.Forms.Label();
            this.ItemNumberLabel = new System.Windows.Forms.Label();
            this.ASCIIOption = new System.Windows.Forms.RadioButton();
            this.BinaryOption = new System.Windows.Forms.RadioButton();
            this.NumericItemSettingsLabel = new System.Windows.Forms.Label();
            this.Timer1 = new System.Windows.Forms.Timer(this.components);
            this.Timer2 = new System.Windows.Forms.Timer(this.components);
            this.MonitorFrame = new System.Windows.Forms.GroupBox();
            this.ReceiveClearCommand = new System.Windows.Forms.Button();
            this.SendClearCommand = new System.Windows.Forms.Button();
            this.ReceiveMntText = new System.Windows.Forms.TextBox();
            this.SendCmdMntText = new System.Windows.Forms.TextBox();
            this.ReceiveMntLabel = new System.Windows.Forms.Label();
            this.SendCmdMntLabel = new System.Windows.Forms.Label();
            this.HeaderCommand = new System.Windows.Forms.Button();
            this.CloseCommand = new System.Windows.Forms.Button();
            this.VerboseCommand = new System.Windows.Forms.Button();
            this.RangeSettingsFrame.SuspendLayout();
            this.NumericSettingsFrame.SuspendLayout();
            this.MonitorFrame.SuspendLayout();
            this.SuspendLayout();
            // 
            // RangeSettingsFrame
            // 
            this.RangeSettingsFrame.BackColor = System.Drawing.SystemColors.Control;
            this.RangeSettingsFrame.Controls.Add(this.CurrentRangeCombo);
            this.RangeSettingsFrame.Controls.Add(this.VoltRangeCombo);
            this.RangeSettingsFrame.Controls.Add(this.RangeSetCommand);
            this.RangeSettingsFrame.Controls.Add(this._ElementOption_0);
            this.RangeSettingsFrame.Controls.Add(this._ElementOption_1);
            this.RangeSettingsFrame.Controls.Add(this._ElementOption_2);
            this.RangeSettingsFrame.Controls.Add(this.SelectionLabel);
            this.RangeSettingsFrame.Controls.Add(this.CurrentRangeLabel);
            this.RangeSettingsFrame.Controls.Add(this.VoltRangeLabel);
            this.RangeSettingsFrame.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.RangeSettingsFrame.ForeColor = System.Drawing.SystemColors.WindowText;
            this.RangeSettingsFrame.Location = new System.Drawing.Point(14, 44);
            this.RangeSettingsFrame.Name = "RangeSettingsFrame";
            this.RangeSettingsFrame.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.RangeSettingsFrame.Size = new System.Drawing.Size(297, 132);
            this.RangeSettingsFrame.TabIndex = 1;
            this.RangeSettingsFrame.TabStop = false;
            // 
            // CurrentRangeCombo
            // 
            this.CurrentRangeCombo.BackColor = System.Drawing.SystemColors.Window;
            this.CurrentRangeCombo.Cursor = System.Windows.Forms.Cursors.Default;
            this.CurrentRangeCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.CurrentRangeCombo.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CurrentRangeCombo.ForeColor = System.Drawing.SystemColors.WindowText;
            this.CurrentRangeCombo.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this.CurrentRangeCombo.Location = new System.Drawing.Point(134, 93);
            this.CurrentRangeCombo.Name = "CurrentRangeCombo";
            this.CurrentRangeCombo.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.CurrentRangeCombo.Size = new System.Drawing.Size(80, 22);
            this.CurrentRangeCombo.TabIndex = 10;
            // 
            // VoltRangeCombo
            // 
            this.VoltRangeCombo.BackColor = System.Drawing.SystemColors.Window;
            this.VoltRangeCombo.Cursor = System.Windows.Forms.Cursors.Default;
            this.VoltRangeCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.VoltRangeCombo.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.VoltRangeCombo.ForeColor = System.Drawing.SystemColors.WindowText;
            this.VoltRangeCombo.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this.VoltRangeCombo.Location = new System.Drawing.Point(134, 67);
            this.VoltRangeCombo.Name = "VoltRangeCombo";
            this.VoltRangeCombo.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.VoltRangeCombo.Size = new System.Drawing.Size(80, 22);
            this.VoltRangeCombo.TabIndex = 8;
            // 
            // RangeSetCommand
            // 
            this.RangeSetCommand.BackColor = System.Drawing.SystemColors.Control;
            this.RangeSetCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.RangeSetCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.RangeSetCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.RangeSetCommand.Location = new System.Drawing.Point(225, 67);
            this.RangeSetCommand.Name = "RangeSetCommand";
            this.RangeSetCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.RangeSetCommand.Size = new System.Drawing.Size(55, 48);
            this.RangeSetCommand.TabIndex = 11;
            this.RangeSetCommand.Text = "SET";
            this.RangeSetCommand.UseVisualStyleBackColor = false;
            this.RangeSetCommand.Click += new System.EventHandler(this.RangeSetCommand_Click);
            // 
            // _ElementOption_0
            // 
            this._ElementOption_0.BackColor = System.Drawing.SystemColors.Control;
            this._ElementOption_0.Cursor = System.Windows.Forms.Cursors.Default;
            this._ElementOption_0.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ElementOption_0.ForeColor = System.Drawing.SystemColors.ControlText;
            this._ElementOption_0.Location = new System.Drawing.Point(90, 14);
            this._ElementOption_0.Name = "_ElementOption_0";
            this._ElementOption_0.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ElementOption_0.Size = new System.Drawing.Size(26, 45);
            this._ElementOption_0.TabIndex = 0;
            this._ElementOption_0.TabStop = true;
            this._ElementOption_0.Text = "1";
            this._ElementOption_0.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._ElementOption_0.UseVisualStyleBackColor = false;
            this._ElementOption_0.CheckedChanged += new System.EventHandler(this.ElementOption_CheckedChanged);
            // 
            // _ElementOption_1
            // 
            this._ElementOption_1.BackColor = System.Drawing.SystemColors.Control;
            this._ElementOption_1.Cursor = System.Windows.Forms.Cursors.Default;
            this._ElementOption_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ElementOption_1.ForeColor = System.Drawing.SystemColors.ControlText;
            this._ElementOption_1.Location = new System.Drawing.Point(123, 14);
            this._ElementOption_1.Name = "_ElementOption_1";
            this._ElementOption_1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ElementOption_1.Size = new System.Drawing.Size(27, 45);
            this._ElementOption_1.TabIndex = 1;
            this._ElementOption_1.TabStop = true;
            this._ElementOption_1.Text = "2";
            this._ElementOption_1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._ElementOption_1.UseVisualStyleBackColor = false;
            this._ElementOption_1.CheckedChanged += new System.EventHandler(this.ElementOption_CheckedChanged);
            // 
            // _ElementOption_2
            // 
            this._ElementOption_2.BackColor = System.Drawing.SystemColors.Control;
            this._ElementOption_2.Cursor = System.Windows.Forms.Cursors.Default;
            this._ElementOption_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ElementOption_2.ForeColor = System.Drawing.SystemColors.ControlText;
            this._ElementOption_2.Location = new System.Drawing.Point(156, 14);
            this._ElementOption_2.Name = "_ElementOption_2";
            this._ElementOption_2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ElementOption_2.Size = new System.Drawing.Size(27, 45);
            this._ElementOption_2.TabIndex = 2;
            this._ElementOption_2.TabStop = true;
            this._ElementOption_2.Text = "3";
            this._ElementOption_2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._ElementOption_2.UseVisualStyleBackColor = false;
            this._ElementOption_2.CheckedChanged += new System.EventHandler(this.ElementOption_CheckedChanged);
            // 
            // SelectionLabel
            // 
            this.SelectionLabel.BackColor = System.Drawing.SystemColors.Control;
            this.SelectionLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.SelectionLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.SelectionLabel.ForeColor = System.Drawing.SystemColors.ControlText;
            this.SelectionLabel.Location = new System.Drawing.Point(18, 43);
            this.SelectionLabel.Name = "SelectionLabel";
            this.SelectionLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.SelectionLabel.Size = new System.Drawing.Size(60, 20);
            this.SelectionLabel.TabIndex = 6;
            this.SelectionLabel.Text = " Element :";
            // 
            // CurrentRangeLabel
            // 
            this.CurrentRangeLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.CurrentRangeLabel.BackColor = System.Drawing.SystemColors.Control;
            this.CurrentRangeLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.CurrentRangeLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.CurrentRangeLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CurrentRangeLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.CurrentRangeLabel.Location = new System.Drawing.Point(20, 93);
            this.CurrentRangeLabel.Name = "CurrentRangeLabel";
            this.CurrentRangeLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.CurrentRangeLabel.Size = new System.Drawing.Size(114, 22);
            this.CurrentRangeLabel.TabIndex = 9;
            this.CurrentRangeLabel.Text = " Current Range";
            this.CurrentRangeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // VoltRangeLabel
            // 
            this.VoltRangeLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.VoltRangeLabel.BackColor = System.Drawing.SystemColors.Control;
            this.VoltRangeLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.VoltRangeLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.VoltRangeLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.VoltRangeLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.VoltRangeLabel.Location = new System.Drawing.Point(20, 67);
            this.VoltRangeLabel.Name = "VoltRangeLabel";
            this.VoltRangeLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.VoltRangeLabel.Size = new System.Drawing.Size(114, 22);
            this.VoltRangeLabel.TabIndex = 7;
            this.VoltRangeLabel.Text = " Voltage Range";
            this.VoltRangeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // RangeSettingsLabel
            // 
            this.RangeSettingsLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.RangeSettingsLabel.BackColor = System.Drawing.SystemColors.Control;
            this.RangeSettingsLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.RangeSettingsLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.RangeSettingsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.RangeSettingsLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.RangeSettingsLabel.Location = new System.Drawing.Point(15, 22);
            this.RangeSettingsLabel.Name = "RangeSettingsLabel";
            this.RangeSettingsLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.RangeSettingsLabel.Size = new System.Drawing.Size(297, 22);
            this.RangeSettingsLabel.TabIndex = 0;
            this.RangeSettingsLabel.Text = "    Range Settings ";
            this.RangeSettingsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.RangeSettingsLabel.Click += new System.EventHandler(this.RangeSettingsLabel_Click);
            // 
            // UpdateRateLabel
            // 
            this.UpdateRateLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.UpdateRateLabel.BackColor = System.Drawing.SystemColors.Control;
            this.UpdateRateLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.UpdateRateLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.UpdateRateLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.UpdateRateLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.UpdateRateLabel.Location = new System.Drawing.Point(324, 23);
            this.UpdateRateLabel.Name = "UpdateRateLabel";
            this.UpdateRateLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.UpdateRateLabel.Size = new System.Drawing.Size(116, 23);
            this.UpdateRateLabel.TabIndex = 2;
            this.UpdateRateLabel.Text = "  Update Rate ";
            this.UpdateRateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // UpdateRateCombo
            // 
            this.UpdateRateCombo.BackColor = System.Drawing.SystemColors.Window;
            this.UpdateRateCombo.Cursor = System.Windows.Forms.Cursors.Default;
            this.UpdateRateCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.UpdateRateCombo.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.UpdateRateCombo.ForeColor = System.Drawing.SystemColors.WindowText;
            this.UpdateRateCombo.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this.UpdateRateCombo.Location = new System.Drawing.Point(440, 22);
            this.UpdateRateCombo.Name = "UpdateRateCombo";
            this.UpdateRateCombo.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.UpdateRateCombo.Size = new System.Drawing.Size(70, 22);
            this.UpdateRateCombo.TabIndex = 3;
            // 
            // UpdateRateSetCommand
            // 
            this.UpdateRateSetCommand.BackColor = System.Drawing.SystemColors.Control;
            this.UpdateRateSetCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.UpdateRateSetCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.UpdateRateSetCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.UpdateRateSetCommand.Location = new System.Drawing.Point(510, 22);
            this.UpdateRateSetCommand.Name = "UpdateRateSetCommand";
            this.UpdateRateSetCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.UpdateRateSetCommand.Size = new System.Drawing.Size(107, 22);
            this.UpdateRateSetCommand.TabIndex = 4;
            this.UpdateRateSetCommand.Text = "SET";
            this.UpdateRateSetCommand.UseVisualStyleBackColor = false;
            this.UpdateRateSetCommand.Click += new System.EventHandler(this.UpdateRateSetCommand_Click);
            // 
            // TestCommandSendLabel
            // 
            this.TestCommandSendLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.TestCommandSendLabel.BackColor = System.Drawing.SystemColors.Control;
            this.TestCommandSendLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.TestCommandSendLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.TestCommandSendLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TestCommandSendLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.TestCommandSendLabel.Location = new System.Drawing.Point(325, 49);
            this.TestCommandSendLabel.Name = "TestCommandSendLabel";
            this.TestCommandSendLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.TestCommandSendLabel.Size = new System.Drawing.Size(186, 20);
            this.TestCommandSendLabel.TabIndex = 5;
            this.TestCommandSendLabel.Text = "  Test Command Send ";
            this.TestCommandSendLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // TestCmdSendCommand
            // 
            this.TestCmdSendCommand.BackColor = System.Drawing.SystemColors.Control;
            this.TestCmdSendCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.TestCmdSendCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TestCmdSendCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.TestCmdSendCommand.Location = new System.Drawing.Point(510, 49);
            this.TestCmdSendCommand.Name = "TestCmdSendCommand";
            this.TestCmdSendCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.TestCmdSendCommand.Size = new System.Drawing.Size(107, 20);
            this.TestCmdSendCommand.TabIndex = 6;
            this.TestCmdSendCommand.Text = "SEND";
            this.TestCmdSendCommand.UseVisualStyleBackColor = false;
            this.TestCmdSendCommand.Click += new System.EventHandler(this.TestCmdSendCommand_Click);
            // 
            // TestCmdSendText
            // 
            this.TestCmdSendText.AcceptsReturn = true;
            this.TestCmdSendText.BackColor = System.Drawing.SystemColors.Window;
            this.TestCmdSendText.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.TestCmdSendText.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TestCmdSendText.ForeColor = System.Drawing.SystemColors.WindowText;
            this.TestCmdSendText.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this.TestCmdSendText.Location = new System.Drawing.Point(324, 69);
            this.TestCmdSendText.MaxLength = 100;
            this.TestCmdSendText.Multiline = true;
            this.TestCmdSendText.Name = "TestCmdSendText";
            this.TestCmdSendText.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.TestCmdSendText.ScrollBars = System.Windows.Forms.ScrollBars.Horizontal;
            this.TestCmdSendText.Size = new System.Drawing.Size(293, 40);
            this.TestCmdSendText.TabIndex = 7;
            this.TestCmdSendText.WordWrap = false;
            // 
            // ErrorInformationLabel
            // 
            this.ErrorInformationLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.ErrorInformationLabel.BackColor = System.Drawing.SystemColors.Control;
            this.ErrorInformationLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.ErrorInformationLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.ErrorInformationLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ErrorInformationLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.ErrorInformationLabel.Location = new System.Drawing.Point(324, 116);
            this.ErrorInformationLabel.Name = "ErrorInformationLabel";
            this.ErrorInformationLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ErrorInformationLabel.Size = new System.Drawing.Size(184, 21);
            this.ErrorInformationLabel.TabIndex = 8;
            this.ErrorInformationLabel.Text = "  Error Information ";
            this.ErrorInformationLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // ErrInfoGetCommand
            // 
            this.ErrInfoGetCommand.BackColor = System.Drawing.SystemColors.Control;
            this.ErrInfoGetCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.ErrInfoGetCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ErrInfoGetCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.ErrInfoGetCommand.Location = new System.Drawing.Point(510, 116);
            this.ErrInfoGetCommand.Name = "ErrInfoGetCommand";
            this.ErrInfoGetCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ErrInfoGetCommand.Size = new System.Drawing.Size(107, 21);
            this.ErrInfoGetCommand.TabIndex = 9;
            this.ErrInfoGetCommand.Text = "GET";
            this.ErrInfoGetCommand.UseVisualStyleBackColor = false;
            this.ErrInfoGetCommand.Click += new System.EventHandler(this.ErrInfoGetCommand_Click);
            // 
            // ErrInfoText
            // 
            this.ErrInfoText.AcceptsReturn = true;
            this.ErrInfoText.BackColor = System.Drawing.SystemColors.Window;
            this.ErrInfoText.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.ErrInfoText.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ErrInfoText.ForeColor = System.Drawing.SystemColors.WindowText;
            this.ErrInfoText.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this.ErrInfoText.Location = new System.Drawing.Point(324, 137);
            this.ErrInfoText.MaxLength = 100;
            this.ErrInfoText.Multiline = true;
            this.ErrInfoText.Name = "ErrInfoText";
            this.ErrInfoText.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ErrInfoText.ScrollBars = System.Windows.Forms.ScrollBars.Horizontal;
            this.ErrInfoText.Size = new System.Drawing.Size(293, 39);
            this.ErrInfoText.TabIndex = 10;
            this.ErrInfoText.WordWrap = false;
            // 
            // AllResetCommand
            // 
            this.AllResetCommand.BackColor = System.Drawing.SystemColors.Control;
            this.AllResetCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.AllResetCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.AllResetCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.AllResetCommand.Location = new System.Drawing.Point(640, 476);
            this.AllResetCommand.Name = "AllResetCommand";
            this.AllResetCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.AllResetCommand.Size = new System.Drawing.Size(122, 25);
            this.AllResetCommand.TabIndex = 11;
            this.AllResetCommand.Text = "RESET WT500";
            this.AllResetCommand.UseVisualStyleBackColor = false;
            this.AllResetCommand.Click += new System.EventHandler(this.AllResetCommand_Click);
            // 
            // ModelTypeLabel
            // 
            this.ModelTypeLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.ModelTypeLabel.BackColor = System.Drawing.SystemColors.Control;
            this.ModelTypeLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.ModelTypeLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.ModelTypeLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ModelTypeLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.ModelTypeLabel.Location = new System.Drawing.Point(632, 20);
            this.ModelTypeLabel.Name = "ModelTypeLabel";
            this.ModelTypeLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ModelTypeLabel.Size = new System.Drawing.Size(80, 22);
            this.ModelTypeLabel.TabIndex = 14;
            this.ModelTypeLabel.Text = "  Model Type";
            this.ModelTypeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // ModelTypeTextBox
            // 
            this.ModelTypeTextBox.AcceptsReturn = true;
            this.ModelTypeTextBox.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.ModelTypeTextBox.BackColor = System.Drawing.SystemColors.Control;
            this.ModelTypeTextBox.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.ModelTypeTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ModelTypeTextBox.ForeColor = System.Drawing.SystemColors.WindowText;
            this.ModelTypeTextBox.Location = new System.Drawing.Point(714, 22);
            this.ModelTypeTextBox.MaxLength = 0;
            this.ModelTypeTextBox.Name = "ModelTypeTextBox";
            this.ModelTypeTextBox.ReadOnly = true;
            this.ModelTypeTextBox.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ModelTypeTextBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.ModelTypeTextBox.Size = new System.Drawing.Size(195, 20);
            this.ModelTypeTextBox.TabIndex = 15;
            this.ModelTypeTextBox.TabStop = false;
            this.ModelTypeTextBox.Text = "760304-04... ...";
            this.ModelTypeTextBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // NumericSettingsFrame
            // 
            this.NumericSettingsFrame.BackColor = System.Drawing.SystemColors.Control;
            this.NumericSettingsFrame.Controls.Add(this.GetAllItemsCommand);
            this.NumericSettingsFrame.Controls.Add(this.FileNameText);
            this.NumericSettingsFrame.Controls.Add(this.TimerText);
            this.NumericSettingsFrame.Controls.Add(this.GetDataTimerCommand);
            this.NumericSettingsFrame.Controls.Add(this.GetDataURateCommand);
            this.NumericSettingsFrame.Controls.Add(this.GetDataSgCommand);
            this.NumericSettingsFrame.Controls.Add(this._DText_0);
            this.NumericSettingsFrame.Controls.Add(this._DText_1);
            this.NumericSettingsFrame.Controls.Add(this._DText_2);
            this.NumericSettingsFrame.Controls.Add(this._DText_3);
            this.NumericSettingsFrame.Controls.Add(this._DText_4);
            this.NumericSettingsFrame.Controls.Add(this._DText_5);
            this.NumericSettingsFrame.Controls.Add(this._DText_6);
            this.NumericSettingsFrame.Controls.Add(this._DText_7);
            this.NumericSettingsFrame.Controls.Add(this._DText_8);
            this.NumericSettingsFrame.Controls.Add(this._DText_9);
            this.NumericSettingsFrame.Controls.Add(this._OCombo_0);
            this.NumericSettingsFrame.Controls.Add(this._OCombo_1);
            this.NumericSettingsFrame.Controls.Add(this._OCombo_2);
            this.NumericSettingsFrame.Controls.Add(this._OCombo_3);
            this.NumericSettingsFrame.Controls.Add(this._OCombo_4);
            this.NumericSettingsFrame.Controls.Add(this._OCombo_5);
            this.NumericSettingsFrame.Controls.Add(this._OCombo_6);
            this.NumericSettingsFrame.Controls.Add(this._OCombo_7);
            this.NumericSettingsFrame.Controls.Add(this._OCombo_8);
            this.NumericSettingsFrame.Controls.Add(this._OCombo_9);
            this.NumericSettingsFrame.Controls.Add(this._ECombo_0);
            this.NumericSettingsFrame.Controls.Add(this._ECombo_1);
            this.NumericSettingsFrame.Controls.Add(this._ECombo_2);
            this.NumericSettingsFrame.Controls.Add(this._ECombo_3);
            this.NumericSettingsFrame.Controls.Add(this._ECombo_4);
            this.NumericSettingsFrame.Controls.Add(this._ECombo_5);
            this.NumericSettingsFrame.Controls.Add(this._ECombo_6);
            this.NumericSettingsFrame.Controls.Add(this._ECombo_7);
            this.NumericSettingsFrame.Controls.Add(this._ECombo_8);
            this.NumericSettingsFrame.Controls.Add(this._ECombo_9);
            this.NumericSettingsFrame.Controls.Add(this.ItemNumberCombo);
            this.NumericSettingsFrame.Controls.Add(this.SetAllItemsCommand);
            this.NumericSettingsFrame.Controls.Add(this.DataSaveCheckBox);
            this.NumericSettingsFrame.Controls.Add(this._FCombo_9);
            this.NumericSettingsFrame.Controls.Add(this._FCombo_8);
            this.NumericSettingsFrame.Controls.Add(this._FCombo_7);
            this.NumericSettingsFrame.Controls.Add(this._FCombo_6);
            this.NumericSettingsFrame.Controls.Add(this._FCombo_5);
            this.NumericSettingsFrame.Controls.Add(this.ItemRowText2);
            this.NumericSettingsFrame.Controls.Add(this._FCombo_4);
            this.NumericSettingsFrame.Controls.Add(this._FCombo_3);
            this.NumericSettingsFrame.Controls.Add(this._FCombo_2);
            this.NumericSettingsFrame.Controls.Add(this._FCombo_1);
            this.NumericSettingsFrame.Controls.Add(this._FCombo_0);
            this.NumericSettingsFrame.Controls.Add(this.ItemRowText1);
            this.NumericSettingsFrame.Controls.Add(this.FileNameLabel);
            this.NumericSettingsFrame.Controls.Add(this.msecLabel);
            this.NumericSettingsFrame.Controls.Add(this.ItemColumeLabel2);
            this.NumericSettingsFrame.Controls.Add(this.ItemColumeLabel1);
            this.NumericSettingsFrame.Controls.Add(this.ItemNumberLabel);
            this.NumericSettingsFrame.Controls.Add(this.ASCIIOption);
            this.NumericSettingsFrame.Controls.Add(this.BinaryOption);
            this.NumericSettingsFrame.ForeColor = System.Drawing.SystemColors.WindowText;
            this.NumericSettingsFrame.Location = new System.Drawing.Point(16, 208);
            this.NumericSettingsFrame.Name = "NumericSettingsFrame";
            this.NumericSettingsFrame.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.NumericSettingsFrame.Size = new System.Drawing.Size(603, 287);
            this.NumericSettingsFrame.TabIndex = 13;
            this.NumericSettingsFrame.TabStop = false;
            // 
            // GetAllItemsCommand
            // 
            this.GetAllItemsCommand.BackColor = System.Drawing.SystemColors.Control;
            this.GetAllItemsCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.GetAllItemsCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.GetAllItemsCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.GetAllItemsCommand.Location = new System.Drawing.Point(328, 30);
            this.GetAllItemsCommand.Name = "GetAllItemsCommand";
            this.GetAllItemsCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.GetAllItemsCommand.Size = new System.Drawing.Size(120, 26);
            this.GetAllItemsCommand.TabIndex = 4;
            this.GetAllItemsCommand.Text = "Read Item Settings";
            this.GetAllItemsCommand.UseVisualStyleBackColor = false;
            this.GetAllItemsCommand.Click += new System.EventHandler(this.GetAllItemsCommand_Click);
            // 
            // FileNameText
            // 
            this.FileNameText.AcceptsReturn = true;
            this.FileNameText.BackColor = System.Drawing.SystemColors.Window;
            this.FileNameText.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.FileNameText.Enabled = false;
            this.FileNameText.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FileNameText.ForeColor = System.Drawing.Color.Black;
            this.FileNameText.Location = new System.Drawing.Point(427, 245);
            this.FileNameText.MaxLength = 0;
            this.FileNameText.Name = "FileNameText";
            this.FileNameText.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.FileNameText.Size = new System.Drawing.Size(161, 20);
            this.FileNameText.TabIndex = 57;
            this.FileNameText.Text = "MeasuredData.csv";
            this.FileNameText.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // TimerText
            // 
            this.TimerText.AcceptsReturn = true;
            this.TimerText.BackColor = System.Drawing.SystemColors.Window;
            this.TimerText.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.TimerText.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TimerText.ForeColor = System.Drawing.SystemColors.WindowText;
            this.TimerText.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this.TimerText.Location = new System.Drawing.Point(294, 225);
            this.TimerText.MaxLength = 6;
            this.TimerText.Name = "TimerText";
            this.TimerText.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.TimerText.Size = new System.Drawing.Size(52, 22);
            this.TimerText.TabIndex = 53;
            this.TimerText.Text = "500";
            // 
            // GetDataTimerCommand
            // 
            this.GetDataTimerCommand.BackColor = System.Drawing.SystemColors.Control;
            this.GetDataTimerCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.GetDataTimerCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.GetDataTimerCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.GetDataTimerCommand.Location = new System.Drawing.Point(215, 225);
            this.GetDataTimerCommand.Name = "GetDataTimerCommand";
            this.GetDataTimerCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.GetDataTimerCommand.Size = new System.Drawing.Size(80, 40);
            this.GetDataTimerCommand.TabIndex = 52;
            this.GetDataTimerCommand.Text = "Get Data (Timer)";
            this.GetDataTimerCommand.UseVisualStyleBackColor = false;
            this.GetDataTimerCommand.Click += new System.EventHandler(this.GetDataTimerCommand_Click);
            // 
            // GetDataURateCommand
            // 
            this.GetDataURateCommand.BackColor = System.Drawing.SystemColors.Control;
            this.GetDataURateCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.GetDataURateCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.GetDataURateCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.GetDataURateCommand.Location = new System.Drawing.Point(106, 225);
            this.GetDataURateCommand.Name = "GetDataURateCommand";
            this.GetDataURateCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.GetDataURateCommand.Size = new System.Drawing.Size(104, 40);
            this.GetDataURateCommand.TabIndex = 51;
            this.GetDataURateCommand.Text = "Get Data   (Update Rate)";
            this.GetDataURateCommand.UseVisualStyleBackColor = false;
            this.GetDataURateCommand.Click += new System.EventHandler(this.GetDataURateCommand_Click);
            // 
            // GetDataSgCommand
            // 
            this.GetDataSgCommand.BackColor = System.Drawing.SystemColors.Control;
            this.GetDataSgCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.GetDataSgCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.GetDataSgCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.GetDataSgCommand.Location = new System.Drawing.Point(21, 225);
            this.GetDataSgCommand.Name = "GetDataSgCommand";
            this.GetDataSgCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.GetDataSgCommand.Size = new System.Drawing.Size(80, 40);
            this.GetDataSgCommand.TabIndex = 50;
            this.GetDataSgCommand.Text = "Get Data (Single)";
            this.GetDataSgCommand.UseVisualStyleBackColor = false;
            this.GetDataSgCommand.Click += new System.EventHandler(this.GetDataSgCommand_Click);
            // 
            // _DText_0
            // 
            this._DText_0.AcceptsReturn = true;
            this._DText_0.BackColor = System.Drawing.SystemColors.Window;
            this._DText_0.Cursor = System.Windows.Forms.Cursors.IBeam;
            this._DText_0.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._DText_0.ForeColor = System.Drawing.SystemColors.WindowText;
            this._DText_0.Location = new System.Drawing.Point(204, 93);
            this._DText_0.MaxLength = 0;
            this._DText_0.Name = "_DText_0";
            this._DText_0.ReadOnly = true;
            this._DText_0.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._DText_0.Size = new System.Drawing.Size(90, 21);
            this._DText_0.TabIndex = 13;
            // 
            // _DText_1
            // 
            this._DText_1.AcceptsReturn = true;
            this._DText_1.BackColor = System.Drawing.SystemColors.Window;
            this._DText_1.Cursor = System.Windows.Forms.Cursors.IBeam;
            this._DText_1.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._DText_1.ForeColor = System.Drawing.SystemColors.WindowText;
            this._DText_1.Location = new System.Drawing.Point(204, 117);
            this._DText_1.MaxLength = 0;
            this._DText_1.Name = "_DText_1";
            this._DText_1.ReadOnly = true;
            this._DText_1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._DText_1.Size = new System.Drawing.Size(90, 21);
            this._DText_1.TabIndex = 17;
            // 
            // _DText_2
            // 
            this._DText_2.AcceptsReturn = true;
            this._DText_2.BackColor = System.Drawing.SystemColors.Window;
            this._DText_2.Cursor = System.Windows.Forms.Cursors.IBeam;
            this._DText_2.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._DText_2.ForeColor = System.Drawing.SystemColors.WindowText;
            this._DText_2.Location = new System.Drawing.Point(204, 141);
            this._DText_2.MaxLength = 0;
            this._DText_2.Name = "_DText_2";
            this._DText_2.ReadOnly = true;
            this._DText_2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._DText_2.Size = new System.Drawing.Size(90, 21);
            this._DText_2.TabIndex = 21;
            // 
            // _DText_3
            // 
            this._DText_3.AcceptsReturn = true;
            this._DText_3.BackColor = System.Drawing.SystemColors.Window;
            this._DText_3.Cursor = System.Windows.Forms.Cursors.IBeam;
            this._DText_3.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._DText_3.ForeColor = System.Drawing.SystemColors.WindowText;
            this._DText_3.Location = new System.Drawing.Point(204, 165);
            this._DText_3.MaxLength = 0;
            this._DText_3.Name = "_DText_3";
            this._DText_3.ReadOnly = true;
            this._DText_3.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._DText_3.Size = new System.Drawing.Size(90, 21);
            this._DText_3.TabIndex = 25;
            // 
            // _DText_4
            // 
            this._DText_4.AcceptsReturn = true;
            this._DText_4.BackColor = System.Drawing.SystemColors.Window;
            this._DText_4.Cursor = System.Windows.Forms.Cursors.IBeam;
            this._DText_4.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._DText_4.ForeColor = System.Drawing.SystemColors.WindowText;
            this._DText_4.Location = new System.Drawing.Point(204, 189);
            this._DText_4.MaxLength = 0;
            this._DText_4.Name = "_DText_4";
            this._DText_4.ReadOnly = true;
            this._DText_4.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._DText_4.Size = new System.Drawing.Size(90, 21);
            this._DText_4.TabIndex = 29;
            // 
            // _DText_5
            // 
            this._DText_5.AcceptsReturn = true;
            this._DText_5.BackColor = System.Drawing.SystemColors.Window;
            this._DText_5.Cursor = System.Windows.Forms.Cursors.IBeam;
            this._DText_5.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._DText_5.ForeColor = System.Drawing.SystemColors.WindowText;
            this._DText_5.Location = new System.Drawing.Point(498, 93);
            this._DText_5.MaxLength = 0;
            this._DText_5.Name = "_DText_5";
            this._DText_5.ReadOnly = true;
            this._DText_5.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._DText_5.Size = new System.Drawing.Size(90, 21);
            this._DText_5.TabIndex = 33;
            // 
            // _DText_6
            // 
            this._DText_6.AcceptsReturn = true;
            this._DText_6.BackColor = System.Drawing.SystemColors.Window;
            this._DText_6.Cursor = System.Windows.Forms.Cursors.IBeam;
            this._DText_6.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._DText_6.ForeColor = System.Drawing.SystemColors.WindowText;
            this._DText_6.Location = new System.Drawing.Point(498, 117);
            this._DText_6.MaxLength = 0;
            this._DText_6.Name = "_DText_6";
            this._DText_6.ReadOnly = true;
            this._DText_6.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._DText_6.Size = new System.Drawing.Size(90, 21);
            this._DText_6.TabIndex = 37;
            // 
            // _DText_7
            // 
            this._DText_7.AcceptsReturn = true;
            this._DText_7.BackColor = System.Drawing.SystemColors.Window;
            this._DText_7.Cursor = System.Windows.Forms.Cursors.IBeam;
            this._DText_7.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._DText_7.ForeColor = System.Drawing.SystemColors.WindowText;
            this._DText_7.Location = new System.Drawing.Point(498, 141);
            this._DText_7.MaxLength = 0;
            this._DText_7.Name = "_DText_7";
            this._DText_7.ReadOnly = true;
            this._DText_7.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._DText_7.Size = new System.Drawing.Size(90, 21);
            this._DText_7.TabIndex = 41;
            // 
            // _DText_8
            // 
            this._DText_8.AcceptsReturn = true;
            this._DText_8.BackColor = System.Drawing.SystemColors.Window;
            this._DText_8.Cursor = System.Windows.Forms.Cursors.IBeam;
            this._DText_8.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._DText_8.ForeColor = System.Drawing.SystemColors.WindowText;
            this._DText_8.Location = new System.Drawing.Point(498, 165);
            this._DText_8.MaxLength = 0;
            this._DText_8.Name = "_DText_8";
            this._DText_8.ReadOnly = true;
            this._DText_8.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._DText_8.Size = new System.Drawing.Size(90, 21);
            this._DText_8.TabIndex = 45;
            // 
            // _DText_9
            // 
            this._DText_9.AcceptsReturn = true;
            this._DText_9.BackColor = System.Drawing.SystemColors.Window;
            this._DText_9.Cursor = System.Windows.Forms.Cursors.IBeam;
            this._DText_9.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._DText_9.ForeColor = System.Drawing.SystemColors.WindowText;
            this._DText_9.Location = new System.Drawing.Point(498, 189);
            this._DText_9.MaxLength = 0;
            this._DText_9.Name = "_DText_9";
            this._DText_9.ReadOnly = true;
            this._DText_9.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._DText_9.Size = new System.Drawing.Size(90, 21);
            this._DText_9.TabIndex = 49;
            // 
            // _OCombo_0
            // 
            this._OCombo_0.BackColor = System.Drawing.SystemColors.Window;
            this._OCombo_0.Cursor = System.Windows.Forms.Cursors.Default;
            this._OCombo_0.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._OCombo_0.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._OCombo_0.ForeColor = System.Drawing.SystemColors.WindowText;
            this._OCombo_0.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._OCombo_0.ItemHeight = 16;
            this._OCombo_0.Location = new System.Drawing.Point(149, 93);
            this._OCombo_0.Name = "_OCombo_0";
            this._OCombo_0.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._OCombo_0.Size = new System.Drawing.Size(57, 24);
            this._OCombo_0.TabIndex = 12;
            // 
            // _OCombo_1
            // 
            this._OCombo_1.BackColor = System.Drawing.SystemColors.Window;
            this._OCombo_1.Cursor = System.Windows.Forms.Cursors.Default;
            this._OCombo_1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._OCombo_1.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._OCombo_1.ForeColor = System.Drawing.SystemColors.WindowText;
            this._OCombo_1.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._OCombo_1.ItemHeight = 16;
            this._OCombo_1.Location = new System.Drawing.Point(149, 117);
            this._OCombo_1.Name = "_OCombo_1";
            this._OCombo_1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._OCombo_1.Size = new System.Drawing.Size(57, 24);
            this._OCombo_1.TabIndex = 16;
            // 
            // _OCombo_2
            // 
            this._OCombo_2.BackColor = System.Drawing.SystemColors.Window;
            this._OCombo_2.Cursor = System.Windows.Forms.Cursors.Default;
            this._OCombo_2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._OCombo_2.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._OCombo_2.ForeColor = System.Drawing.SystemColors.WindowText;
            this._OCombo_2.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._OCombo_2.ItemHeight = 16;
            this._OCombo_2.Location = new System.Drawing.Point(149, 141);
            this._OCombo_2.Name = "_OCombo_2";
            this._OCombo_2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._OCombo_2.Size = new System.Drawing.Size(57, 24);
            this._OCombo_2.TabIndex = 20;
            // 
            // _OCombo_3
            // 
            this._OCombo_3.BackColor = System.Drawing.SystemColors.Window;
            this._OCombo_3.Cursor = System.Windows.Forms.Cursors.Default;
            this._OCombo_3.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._OCombo_3.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._OCombo_3.ForeColor = System.Drawing.SystemColors.WindowText;
            this._OCombo_3.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._OCombo_3.ItemHeight = 16;
            this._OCombo_3.Location = new System.Drawing.Point(149, 165);
            this._OCombo_3.Name = "_OCombo_3";
            this._OCombo_3.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._OCombo_3.Size = new System.Drawing.Size(57, 24);
            this._OCombo_3.TabIndex = 24;
            // 
            // _OCombo_4
            // 
            this._OCombo_4.BackColor = System.Drawing.SystemColors.Window;
            this._OCombo_4.Cursor = System.Windows.Forms.Cursors.Default;
            this._OCombo_4.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._OCombo_4.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._OCombo_4.ForeColor = System.Drawing.SystemColors.WindowText;
            this._OCombo_4.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._OCombo_4.ItemHeight = 16;
            this._OCombo_4.Location = new System.Drawing.Point(149, 189);
            this._OCombo_4.Name = "_OCombo_4";
            this._OCombo_4.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._OCombo_4.Size = new System.Drawing.Size(57, 24);
            this._OCombo_4.TabIndex = 28;
            // 
            // _OCombo_5
            // 
            this._OCombo_5.BackColor = System.Drawing.SystemColors.Window;
            this._OCombo_5.Cursor = System.Windows.Forms.Cursors.Default;
            this._OCombo_5.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._OCombo_5.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._OCombo_5.ForeColor = System.Drawing.SystemColors.WindowText;
            this._OCombo_5.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._OCombo_5.ItemHeight = 16;
            this._OCombo_5.Location = new System.Drawing.Point(443, 93);
            this._OCombo_5.Name = "_OCombo_5";
            this._OCombo_5.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._OCombo_5.Size = new System.Drawing.Size(57, 24);
            this._OCombo_5.TabIndex = 32;
            // 
            // _OCombo_6
            // 
            this._OCombo_6.BackColor = System.Drawing.SystemColors.Window;
            this._OCombo_6.Cursor = System.Windows.Forms.Cursors.Default;
            this._OCombo_6.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._OCombo_6.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._OCombo_6.ForeColor = System.Drawing.SystemColors.WindowText;
            this._OCombo_6.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._OCombo_6.ItemHeight = 16;
            this._OCombo_6.Location = new System.Drawing.Point(443, 117);
            this._OCombo_6.Name = "_OCombo_6";
            this._OCombo_6.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._OCombo_6.Size = new System.Drawing.Size(57, 24);
            this._OCombo_6.TabIndex = 36;
            // 
            // _OCombo_7
            // 
            this._OCombo_7.BackColor = System.Drawing.SystemColors.Window;
            this._OCombo_7.Cursor = System.Windows.Forms.Cursors.Default;
            this._OCombo_7.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._OCombo_7.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._OCombo_7.ForeColor = System.Drawing.SystemColors.WindowText;
            this._OCombo_7.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._OCombo_7.ItemHeight = 16;
            this._OCombo_7.Location = new System.Drawing.Point(443, 141);
            this._OCombo_7.Name = "_OCombo_7";
            this._OCombo_7.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._OCombo_7.Size = new System.Drawing.Size(57, 24);
            this._OCombo_7.TabIndex = 40;
            // 
            // _OCombo_8
            // 
            this._OCombo_8.BackColor = System.Drawing.SystemColors.Window;
            this._OCombo_8.Cursor = System.Windows.Forms.Cursors.Default;
            this._OCombo_8.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._OCombo_8.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._OCombo_8.ForeColor = System.Drawing.SystemColors.WindowText;
            this._OCombo_8.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._OCombo_8.ItemHeight = 16;
            this._OCombo_8.Location = new System.Drawing.Point(443, 165);
            this._OCombo_8.Name = "_OCombo_8";
            this._OCombo_8.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._OCombo_8.Size = new System.Drawing.Size(57, 24);
            this._OCombo_8.TabIndex = 44;
            // 
            // _OCombo_9
            // 
            this._OCombo_9.BackColor = System.Drawing.SystemColors.Window;
            this._OCombo_9.Cursor = System.Windows.Forms.Cursors.Default;
            this._OCombo_9.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._OCombo_9.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._OCombo_9.ForeColor = System.Drawing.SystemColors.WindowText;
            this._OCombo_9.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._OCombo_9.ItemHeight = 16;
            this._OCombo_9.Location = new System.Drawing.Point(443, 189);
            this._OCombo_9.Name = "_OCombo_9";
            this._OCombo_9.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._OCombo_9.Size = new System.Drawing.Size(57, 24);
            this._OCombo_9.TabIndex = 48;
            // 
            // _ECombo_0
            // 
            this._ECombo_0.BackColor = System.Drawing.SystemColors.Window;
            this._ECombo_0.Cursor = System.Windows.Forms.Cursors.Default;
            this._ECombo_0.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._ECombo_0.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ECombo_0.ForeColor = System.Drawing.SystemColors.WindowText;
            this._ECombo_0.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._ECombo_0.ItemHeight = 16;
            this._ECombo_0.Location = new System.Drawing.Point(94, 93);
            this._ECombo_0.Name = "_ECombo_0";
            this._ECombo_0.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ECombo_0.Size = new System.Drawing.Size(57, 24);
            this._ECombo_0.TabIndex = 11;
            this._ECombo_0.SelectedIndexChanged += new System.EventHandler(this._ECombo_0_SelectedIndexChanged);
            // 
            // _ECombo_1
            // 
            this._ECombo_1.BackColor = System.Drawing.SystemColors.Window;
            this._ECombo_1.Cursor = System.Windows.Forms.Cursors.Default;
            this._ECombo_1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._ECombo_1.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ECombo_1.ForeColor = System.Drawing.SystemColors.WindowText;
            this._ECombo_1.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._ECombo_1.ItemHeight = 16;
            this._ECombo_1.Location = new System.Drawing.Point(94, 117);
            this._ECombo_1.Name = "_ECombo_1";
            this._ECombo_1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ECombo_1.Size = new System.Drawing.Size(57, 24);
            this._ECombo_1.TabIndex = 15;
            // 
            // _ECombo_2
            // 
            this._ECombo_2.BackColor = System.Drawing.SystemColors.Window;
            this._ECombo_2.Cursor = System.Windows.Forms.Cursors.Default;
            this._ECombo_2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._ECombo_2.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ECombo_2.ForeColor = System.Drawing.SystemColors.WindowText;
            this._ECombo_2.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._ECombo_2.ItemHeight = 16;
            this._ECombo_2.Location = new System.Drawing.Point(94, 141);
            this._ECombo_2.Name = "_ECombo_2";
            this._ECombo_2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ECombo_2.Size = new System.Drawing.Size(57, 24);
            this._ECombo_2.TabIndex = 19;
            // 
            // _ECombo_3
            // 
            this._ECombo_3.BackColor = System.Drawing.SystemColors.Window;
            this._ECombo_3.Cursor = System.Windows.Forms.Cursors.Default;
            this._ECombo_3.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._ECombo_3.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ECombo_3.ForeColor = System.Drawing.SystemColors.WindowText;
            this._ECombo_3.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._ECombo_3.ItemHeight = 16;
            this._ECombo_3.Location = new System.Drawing.Point(94, 165);
            this._ECombo_3.Name = "_ECombo_3";
            this._ECombo_3.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ECombo_3.Size = new System.Drawing.Size(57, 24);
            this._ECombo_3.TabIndex = 23;
            // 
            // _ECombo_4
            // 
            this._ECombo_4.BackColor = System.Drawing.SystemColors.Window;
            this._ECombo_4.Cursor = System.Windows.Forms.Cursors.Default;
            this._ECombo_4.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._ECombo_4.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ECombo_4.ForeColor = System.Drawing.SystemColors.WindowText;
            this._ECombo_4.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._ECombo_4.ItemHeight = 16;
            this._ECombo_4.Location = new System.Drawing.Point(94, 189);
            this._ECombo_4.Name = "_ECombo_4";
            this._ECombo_4.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ECombo_4.Size = new System.Drawing.Size(57, 24);
            this._ECombo_4.TabIndex = 27;
            // 
            // _ECombo_5
            // 
            this._ECombo_5.BackColor = System.Drawing.SystemColors.Window;
            this._ECombo_5.Cursor = System.Windows.Forms.Cursors.Default;
            this._ECombo_5.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._ECombo_5.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ECombo_5.ForeColor = System.Drawing.SystemColors.WindowText;
            this._ECombo_5.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._ECombo_5.ItemHeight = 16;
            this._ECombo_5.Location = new System.Drawing.Point(388, 93);
            this._ECombo_5.Name = "_ECombo_5";
            this._ECombo_5.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ECombo_5.Size = new System.Drawing.Size(57, 24);
            this._ECombo_5.TabIndex = 31;
            // 
            // _ECombo_6
            // 
            this._ECombo_6.BackColor = System.Drawing.SystemColors.Window;
            this._ECombo_6.Cursor = System.Windows.Forms.Cursors.Default;
            this._ECombo_6.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._ECombo_6.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ECombo_6.ForeColor = System.Drawing.SystemColors.WindowText;
            this._ECombo_6.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._ECombo_6.ItemHeight = 16;
            this._ECombo_6.Location = new System.Drawing.Point(388, 117);
            this._ECombo_6.Name = "_ECombo_6";
            this._ECombo_6.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ECombo_6.Size = new System.Drawing.Size(57, 24);
            this._ECombo_6.TabIndex = 35;
            // 
            // _ECombo_7
            // 
            this._ECombo_7.BackColor = System.Drawing.SystemColors.Window;
            this._ECombo_7.Cursor = System.Windows.Forms.Cursors.Default;
            this._ECombo_7.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._ECombo_7.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ECombo_7.ForeColor = System.Drawing.SystemColors.WindowText;
            this._ECombo_7.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._ECombo_7.ItemHeight = 16;
            this._ECombo_7.Location = new System.Drawing.Point(388, 141);
            this._ECombo_7.Name = "_ECombo_7";
            this._ECombo_7.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ECombo_7.Size = new System.Drawing.Size(57, 24);
            this._ECombo_7.TabIndex = 39;
            // 
            // _ECombo_8
            // 
            this._ECombo_8.BackColor = System.Drawing.SystemColors.Window;
            this._ECombo_8.Cursor = System.Windows.Forms.Cursors.Default;
            this._ECombo_8.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._ECombo_8.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ECombo_8.ForeColor = System.Drawing.SystemColors.WindowText;
            this._ECombo_8.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._ECombo_8.ItemHeight = 16;
            this._ECombo_8.Location = new System.Drawing.Point(388, 165);
            this._ECombo_8.Name = "_ECombo_8";
            this._ECombo_8.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ECombo_8.Size = new System.Drawing.Size(57, 24);
            this._ECombo_8.TabIndex = 43;
            // 
            // _ECombo_9
            // 
            this._ECombo_9.BackColor = System.Drawing.SystemColors.Window;
            this._ECombo_9.Cursor = System.Windows.Forms.Cursors.Default;
            this._ECombo_9.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._ECombo_9.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._ECombo_9.ForeColor = System.Drawing.SystemColors.WindowText;
            this._ECombo_9.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._ECombo_9.ItemHeight = 16;
            this._ECombo_9.Location = new System.Drawing.Point(388, 189);
            this._ECombo_9.Name = "_ECombo_9";
            this._ECombo_9.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._ECombo_9.Size = new System.Drawing.Size(57, 24);
            this._ECombo_9.TabIndex = 47;
            // 
            // ItemNumberCombo
            // 
            this.ItemNumberCombo.BackColor = System.Drawing.SystemColors.Window;
            this.ItemNumberCombo.Cursor = System.Windows.Forms.Cursors.Default;
            this.ItemNumberCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.ItemNumberCombo.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ItemNumberCombo.ForeColor = System.Drawing.SystemColors.WindowText;
            this.ItemNumberCombo.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this.ItemNumberCombo.Items.AddRange(new object[] {
            " 1",
            " 2",
            " 3",
            " 4",
            " 5",
            " 6",
            " 7",
            " 8",
            " 9",
            "10"});
            this.ItemNumberCombo.Location = new System.Drawing.Point(116, 33);
            this.ItemNumberCombo.Name = "ItemNumberCombo";
            this.ItemNumberCombo.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ItemNumberCombo.Size = new System.Drawing.Size(54, 22);
            this.ItemNumberCombo.TabIndex = 2;
            this.ItemNumberCombo.SelectedIndexChanged += new System.EventHandler(this.ItemNumberCombo_SelectedIndexChanged);
            // 
            // SetAllItemsCommand
            // 
            this.SetAllItemsCommand.BackColor = System.Drawing.SystemColors.Control;
            this.SetAllItemsCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.SetAllItemsCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.SetAllItemsCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.SetAllItemsCommand.Location = new System.Drawing.Point(456, 30);
            this.SetAllItemsCommand.Name = "SetAllItemsCommand";
            this.SetAllItemsCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.SetAllItemsCommand.Size = new System.Drawing.Size(120, 26);
            this.SetAllItemsCommand.TabIndex = 5;
            this.SetAllItemsCommand.Text = "Send Item Settings";
            this.SetAllItemsCommand.UseVisualStyleBackColor = false;
            this.SetAllItemsCommand.Click += new System.EventHandler(this.SetAllItemsCommand_Click);
            // 
            // DataSaveCheckBox
            // 
            this.DataSaveCheckBox.BackColor = System.Drawing.SystemColors.Control;
            this.DataSaveCheckBox.Cursor = System.Windows.Forms.Cursors.Default;
            this.DataSaveCheckBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.DataSaveCheckBox.ForeColor = System.Drawing.SystemColors.ControlText;
            this.DataSaveCheckBox.Location = new System.Drawing.Point(354, 224);
            this.DataSaveCheckBox.Name = "DataSaveCheckBox";
            this.DataSaveCheckBox.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.DataSaveCheckBox.Size = new System.Drawing.Size(95, 20);
            this.DataSaveCheckBox.TabIndex = 55;
            this.DataSaveCheckBox.Text = "Data Save";
            this.DataSaveCheckBox.UseVisualStyleBackColor = false;
            this.DataSaveCheckBox.CheckedChanged += new System.EventHandler(this.DataSaveCheckBox_CheckedChanged);
            // 
            // _FCombo_9
            // 
            this._FCombo_9.BackColor = System.Drawing.SystemColors.Window;
            this._FCombo_9.Cursor = System.Windows.Forms.Cursors.Default;
            this._FCombo_9.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._FCombo_9.ForeColor = System.Drawing.SystemColors.WindowText;
            this._FCombo_9.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._FCombo_9.ItemHeight = 16;
            this._FCombo_9.Location = new System.Drawing.Point(315, 189);
            this._FCombo_9.Name = "_FCombo_9";
            this._FCombo_9.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._FCombo_9.Size = new System.Drawing.Size(75, 24);
            this._FCombo_9.TabIndex = 46;
            this._FCombo_9.TextChanged += new System.EventHandler(this.FCombo_TextChanged);
            // 
            // _FCombo_8
            // 
            this._FCombo_8.BackColor = System.Drawing.SystemColors.Window;
            this._FCombo_8.Cursor = System.Windows.Forms.Cursors.Default;
            this._FCombo_8.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._FCombo_8.ForeColor = System.Drawing.SystemColors.WindowText;
            this._FCombo_8.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._FCombo_8.ItemHeight = 16;
            this._FCombo_8.Location = new System.Drawing.Point(315, 165);
            this._FCombo_8.Name = "_FCombo_8";
            this._FCombo_8.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._FCombo_8.Size = new System.Drawing.Size(75, 24);
            this._FCombo_8.TabIndex = 42;
            this._FCombo_8.TextChanged += new System.EventHandler(this.FCombo_TextChanged);
            // 
            // _FCombo_7
            // 
            this._FCombo_7.BackColor = System.Drawing.SystemColors.Window;
            this._FCombo_7.Cursor = System.Windows.Forms.Cursors.Default;
            this._FCombo_7.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._FCombo_7.ForeColor = System.Drawing.SystemColors.WindowText;
            this._FCombo_7.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._FCombo_7.ItemHeight = 16;
            this._FCombo_7.Location = new System.Drawing.Point(315, 141);
            this._FCombo_7.Name = "_FCombo_7";
            this._FCombo_7.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._FCombo_7.Size = new System.Drawing.Size(75, 24);
            this._FCombo_7.TabIndex = 38;
            this._FCombo_7.TextChanged += new System.EventHandler(this.FCombo_TextChanged);
            // 
            // _FCombo_6
            // 
            this._FCombo_6.BackColor = System.Drawing.SystemColors.Window;
            this._FCombo_6.Cursor = System.Windows.Forms.Cursors.Default;
            this._FCombo_6.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._FCombo_6.ForeColor = System.Drawing.SystemColors.WindowText;
            this._FCombo_6.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._FCombo_6.ItemHeight = 16;
            this._FCombo_6.Location = new System.Drawing.Point(315, 117);
            this._FCombo_6.Name = "_FCombo_6";
            this._FCombo_6.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._FCombo_6.Size = new System.Drawing.Size(75, 24);
            this._FCombo_6.TabIndex = 34;
            this._FCombo_6.TextChanged += new System.EventHandler(this.FCombo_TextChanged);
            // 
            // _FCombo_5
            // 
            this._FCombo_5.BackColor = System.Drawing.SystemColors.Window;
            this._FCombo_5.Cursor = System.Windows.Forms.Cursors.Default;
            this._FCombo_5.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._FCombo_5.ForeColor = System.Drawing.SystemColors.WindowText;
            this._FCombo_5.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._FCombo_5.ItemHeight = 16;
            this._FCombo_5.Location = new System.Drawing.Point(315, 93);
            this._FCombo_5.Name = "_FCombo_5";
            this._FCombo_5.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._FCombo_5.Size = new System.Drawing.Size(75, 24);
            this._FCombo_5.TabIndex = 30;
            this._FCombo_5.TextChanged += new System.EventHandler(this.FCombo_TextChanged);
            // 
            // ItemRowText2
            // 
            this.ItemRowText2.AcceptsReturn = true;
            this.ItemRowText2.BackColor = System.Drawing.SystemColors.Control;
            this.ItemRowText2.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.ItemRowText2.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.ItemRowText2.Font = new System.Drawing.Font("Microsoft Sans Serif", 6.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ItemRowText2.ForeColor = System.Drawing.SystemColors.WindowText;
            this.ItemRowText2.Location = new System.Drawing.Point(303, 96);
            this.ItemRowText2.MaxLength = 0;
            this.ItemRowText2.Multiline = true;
            this.ItemRowText2.Name = "ItemRowText2";
            this.ItemRowText2.ReadOnly = true;
            this.ItemRowText2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ItemRowText2.Size = new System.Drawing.Size(17, 120);
            this.ItemRowText2.TabIndex = 9;
            this.ItemRowText2.TabStop = false;
            this.ItemRowText2.Text = "  6\r\n\r\n  7\r\n\r\n  8\r\n\r\n  9\r\n\r\n10\r\n";
            // 
            // _FCombo_4
            // 
            this._FCombo_4.BackColor = System.Drawing.SystemColors.Window;
            this._FCombo_4.Cursor = System.Windows.Forms.Cursors.Default;
            this._FCombo_4.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._FCombo_4.ForeColor = System.Drawing.SystemColors.WindowText;
            this._FCombo_4.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._FCombo_4.ItemHeight = 16;
            this._FCombo_4.Location = new System.Drawing.Point(21, 189);
            this._FCombo_4.Name = "_FCombo_4";
            this._FCombo_4.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._FCombo_4.Size = new System.Drawing.Size(75, 24);
            this._FCombo_4.TabIndex = 26;
            this._FCombo_4.TextChanged += new System.EventHandler(this.FCombo_TextChanged);
            // 
            // _FCombo_3
            // 
            this._FCombo_3.BackColor = System.Drawing.SystemColors.Window;
            this._FCombo_3.Cursor = System.Windows.Forms.Cursors.Default;
            this._FCombo_3.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._FCombo_3.ForeColor = System.Drawing.SystemColors.WindowText;
            this._FCombo_3.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._FCombo_3.ItemHeight = 16;
            this._FCombo_3.Location = new System.Drawing.Point(21, 165);
            this._FCombo_3.Name = "_FCombo_3";
            this._FCombo_3.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._FCombo_3.Size = new System.Drawing.Size(75, 24);
            this._FCombo_3.TabIndex = 22;
            this._FCombo_3.TextChanged += new System.EventHandler(this.FCombo_TextChanged);
            // 
            // _FCombo_2
            // 
            this._FCombo_2.BackColor = System.Drawing.SystemColors.Window;
            this._FCombo_2.Cursor = System.Windows.Forms.Cursors.Default;
            this._FCombo_2.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._FCombo_2.ForeColor = System.Drawing.SystemColors.WindowText;
            this._FCombo_2.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._FCombo_2.ItemHeight = 16;
            this._FCombo_2.Location = new System.Drawing.Point(21, 141);
            this._FCombo_2.Name = "_FCombo_2";
            this._FCombo_2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._FCombo_2.Size = new System.Drawing.Size(75, 24);
            this._FCombo_2.TabIndex = 18;
            this._FCombo_2.TextChanged += new System.EventHandler(this.FCombo_TextChanged);
            // 
            // _FCombo_1
            // 
            this._FCombo_1.BackColor = System.Drawing.SystemColors.Window;
            this._FCombo_1.Cursor = System.Windows.Forms.Cursors.Default;
            this._FCombo_1.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._FCombo_1.ForeColor = System.Drawing.SystemColors.WindowText;
            this._FCombo_1.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._FCombo_1.ItemHeight = 16;
            this._FCombo_1.Location = new System.Drawing.Point(21, 117);
            this._FCombo_1.Name = "_FCombo_1";
            this._FCombo_1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._FCombo_1.Size = new System.Drawing.Size(75, 24);
            this._FCombo_1.TabIndex = 14;
            this._FCombo_1.TextChanged += new System.EventHandler(this.FCombo_TextChanged);
            // 
            // _FCombo_0
            // 
            this._FCombo_0.BackColor = System.Drawing.SystemColors.Window;
            this._FCombo_0.Cursor = System.Windows.Forms.Cursors.Default;
            this._FCombo_0.Font = new System.Drawing.Font("Arial Narrow", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this._FCombo_0.ForeColor = System.Drawing.SystemColors.WindowText;
            this._FCombo_0.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this._FCombo_0.ItemHeight = 16;
            this._FCombo_0.Location = new System.Drawing.Point(21, 93);
            this._FCombo_0.Name = "_FCombo_0";
            this._FCombo_0.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this._FCombo_0.Size = new System.Drawing.Size(75, 24);
            this._FCombo_0.TabIndex = 10;
            this._FCombo_0.TextChanged += new System.EventHandler(this.FCombo_TextChanged);
            // 
            // ItemRowText1
            // 
            this.ItemRowText1.AcceptsReturn = true;
            this.ItemRowText1.BackColor = System.Drawing.SystemColors.Control;
            this.ItemRowText1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.ItemRowText1.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.ItemRowText1.Font = new System.Drawing.Font("Microsoft Sans Serif", 6.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ItemRowText1.ForeColor = System.Drawing.SystemColors.WindowText;
            this.ItemRowText1.Location = new System.Drawing.Point(13, 96);
            this.ItemRowText1.MaxLength = 0;
            this.ItemRowText1.Multiline = true;
            this.ItemRowText1.Name = "ItemRowText1";
            this.ItemRowText1.ReadOnly = true;
            this.ItemRowText1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ItemRowText1.Size = new System.Drawing.Size(10, 120);
            this.ItemRowText1.TabIndex = 8;
            this.ItemRowText1.TabStop = false;
            this.ItemRowText1.Text = "1\r\n\r\n2\r\n\r\n3\r\n\r\n4\r\n\r\n5\r\n";
            // 
            // FileNameLabel
            // 
            this.FileNameLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.FileNameLabel.BackColor = System.Drawing.SystemColors.Control;
            this.FileNameLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.FileNameLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.FileNameLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FileNameLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.FileNameLabel.Location = new System.Drawing.Point(353, 245);
            this.FileNameLabel.Name = "FileNameLabel";
            this.FileNameLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.FileNameLabel.Size = new System.Drawing.Size(73, 20);
            this.FileNameLabel.TabIndex = 56;
            this.FileNameLabel.Text = " File Name";
            this.FileNameLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // msecLabel
            // 
            this.msecLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.msecLabel.BackColor = System.Drawing.SystemColors.Control;
            this.msecLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.msecLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.msecLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.msecLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.msecLabel.Location = new System.Drawing.Point(293, 245);
            this.msecLabel.Name = "msecLabel";
            this.msecLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.msecLabel.Size = new System.Drawing.Size(52, 20);
            this.msecLabel.TabIndex = 54;
            this.msecLabel.Text = "msec";
            this.msecLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // ItemColumeLabel2
            // 
            this.ItemColumeLabel2.BackColor = System.Drawing.SystemColors.Control;
            this.ItemColumeLabel2.Cursor = System.Windows.Forms.Cursors.Default;
            this.ItemColumeLabel2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ItemColumeLabel2.ForeColor = System.Drawing.SystemColors.ControlText;
            this.ItemColumeLabel2.Location = new System.Drawing.Point(315, 72);
            this.ItemColumeLabel2.Name = "ItemColumeLabel2";
            this.ItemColumeLabel2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ItemColumeLabel2.Size = new System.Drawing.Size(267, 20);
            this.ItemColumeLabel2.TabIndex = 7;
            this.ItemColumeLabel2.Text = "Function          Element      Order            Data";
            // 
            // ItemColumeLabel1
            // 
            this.ItemColumeLabel1.BackColor = System.Drawing.SystemColors.Control;
            this.ItemColumeLabel1.Cursor = System.Windows.Forms.Cursors.Default;
            this.ItemColumeLabel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ItemColumeLabel1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.ItemColumeLabel1.Location = new System.Drawing.Point(21, 72);
            this.ItemColumeLabel1.Name = "ItemColumeLabel1";
            this.ItemColumeLabel1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ItemColumeLabel1.Size = new System.Drawing.Size(267, 20);
            this.ItemColumeLabel1.TabIndex = 6;
            this.ItemColumeLabel1.Text = "Function          Element      Order            Data";
            // 
            // ItemNumberLabel
            // 
            this.ItemNumberLabel.BackColor = System.Drawing.SystemColors.Control;
            this.ItemNumberLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.ItemNumberLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.ItemNumberLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ItemNumberLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.ItemNumberLabel.Location = new System.Drawing.Point(18, 30);
            this.ItemNumberLabel.Name = "ItemNumberLabel";
            this.ItemNumberLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ItemNumberLabel.Size = new System.Drawing.Size(96, 22);
            this.ItemNumberLabel.TabIndex = 1;
            this.ItemNumberLabel.Text = " Number of Items ";
            this.ItemNumberLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // ASCIIOption
            // 
            this.ASCIIOption.BackColor = System.Drawing.SystemColors.Control;
            this.ASCIIOption.Cursor = System.Windows.Forms.Cursors.Default;
            this.ASCIIOption.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ASCIIOption.ForeColor = System.Drawing.SystemColors.ControlText;
            this.ASCIIOption.Location = new System.Drawing.Point(180, 34);
            this.ASCIIOption.Name = "ASCIIOption";
            this.ASCIIOption.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ASCIIOption.Size = new System.Drawing.Size(56, 20);
            this.ASCIIOption.TabIndex = 0;
            this.ASCIIOption.TabStop = true;
            this.ASCIIOption.Text = "ASCII";
            this.ASCIIOption.UseVisualStyleBackColor = false;
            // 
            // BinaryOption
            // 
            this.BinaryOption.BackColor = System.Drawing.SystemColors.Control;
            this.BinaryOption.Cursor = System.Windows.Forms.Cursors.Default;
            this.BinaryOption.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.BinaryOption.ForeColor = System.Drawing.SystemColors.ControlText;
            this.BinaryOption.Location = new System.Drawing.Point(250, 34);
            this.BinaryOption.Name = "BinaryOption";
            this.BinaryOption.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.BinaryOption.Size = new System.Drawing.Size(64, 20);
            this.BinaryOption.TabIndex = 1;
            this.BinaryOption.TabStop = true;
            this.BinaryOption.Text = "BINARY";
            this.BinaryOption.UseVisualStyleBackColor = false;
            // 
            // NumericItemSettingsLabel
            // 
            this.NumericItemSettingsLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.NumericItemSettingsLabel.BackColor = System.Drawing.SystemColors.Control;
            this.NumericItemSettingsLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.NumericItemSettingsLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.NumericItemSettingsLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.NumericItemSettingsLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.NumericItemSettingsLabel.Location = new System.Drawing.Point(16, 181);
            this.NumericItemSettingsLabel.Name = "NumericItemSettingsLabel";
            this.NumericItemSettingsLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.NumericItemSettingsLabel.Size = new System.Drawing.Size(297, 22);
            this.NumericItemSettingsLabel.TabIndex = 12;
            this.NumericItemSettingsLabel.Text = "    Numeric  Item  Settings";
            this.NumericItemSettingsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // Timer1
            // 
            this.Timer1.Interval = 1;
            this.Timer1.Tick += new System.EventHandler(this.Timer1_Tick);
            // 
            // Timer2
            // 
            this.Timer2.Interval = 1;
            this.Timer2.Tick += new System.EventHandler(this.Timer2_Tick);
            // 
            // MonitorFrame
            // 
            this.MonitorFrame.BackColor = System.Drawing.SystemColors.Control;
            this.MonitorFrame.Controls.Add(this.ReceiveClearCommand);
            this.MonitorFrame.Controls.Add(this.SendClearCommand);
            this.MonitorFrame.Controls.Add(this.ReceiveMntText);
            this.MonitorFrame.Controls.Add(this.SendCmdMntText);
            this.MonitorFrame.Controls.Add(this.ReceiveMntLabel);
            this.MonitorFrame.Controls.Add(this.SendCmdMntLabel);
            this.MonitorFrame.ForeColor = System.Drawing.SystemColors.WindowText;
            this.MonitorFrame.Location = new System.Drawing.Point(631, 44);
            this.MonitorFrame.Name = "MonitorFrame";
            this.MonitorFrame.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.MonitorFrame.Size = new System.Drawing.Size(279, 420);
            this.MonitorFrame.TabIndex = 16;
            this.MonitorFrame.TabStop = false;
            // 
            // ReceiveClearCommand
            // 
            this.ReceiveClearCommand.BackColor = System.Drawing.SystemColors.Control;
            this.ReceiveClearCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.ReceiveClearCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ReceiveClearCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.ReceiveClearCommand.Location = new System.Drawing.Point(176, 180);
            this.ReceiveClearCommand.Name = "ReceiveClearCommand";
            this.ReceiveClearCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ReceiveClearCommand.Size = new System.Drawing.Size(86, 20);
            this.ReceiveClearCommand.TabIndex = 4;
            this.ReceiveClearCommand.Text = "Clear";
            this.ReceiveClearCommand.UseVisualStyleBackColor = false;
            this.ReceiveClearCommand.Click += new System.EventHandler(this.ReceiveClearCommand_Click);
            // 
            // SendClearCommand
            // 
            this.SendClearCommand.BackColor = System.Drawing.SystemColors.Control;
            this.SendClearCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.SendClearCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.SendClearCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.SendClearCommand.Location = new System.Drawing.Point(174, 18);
            this.SendClearCommand.Name = "SendClearCommand";
            this.SendClearCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.SendClearCommand.Size = new System.Drawing.Size(88, 20);
            this.SendClearCommand.TabIndex = 1;
            this.SendClearCommand.Text = "Clear";
            this.SendClearCommand.UseVisualStyleBackColor = false;
            this.SendClearCommand.Click += new System.EventHandler(this.SendClearCommand_Click);
            // 
            // ReceiveMntText
            // 
            this.ReceiveMntText.AcceptsReturn = true;
            this.ReceiveMntText.BackColor = System.Drawing.SystemColors.Window;
            this.ReceiveMntText.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.ReceiveMntText.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ReceiveMntText.ForeColor = System.Drawing.SystemColors.WindowText;
            this.ReceiveMntText.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this.ReceiveMntText.Location = new System.Drawing.Point(2, 200);
            this.ReceiveMntText.MaxLength = 60000;
            this.ReceiveMntText.Multiline = true;
            this.ReceiveMntText.Name = "ReceiveMntText";
            this.ReceiveMntText.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ReceiveMntText.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.ReceiveMntText.Size = new System.Drawing.Size(278, 207);
            this.ReceiveMntText.TabIndex = 5;
            this.ReceiveMntText.WordWrap = false;
            // 
            // SendCmdMntText
            // 
            this.SendCmdMntText.AcceptsReturn = true;
            this.SendCmdMntText.BackColor = System.Drawing.SystemColors.Window;
            this.SendCmdMntText.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.SendCmdMntText.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.SendCmdMntText.ForeColor = System.Drawing.SystemColors.WindowText;
            this.SendCmdMntText.ImeMode = System.Windows.Forms.ImeMode.Disable;
            this.SendCmdMntText.Location = new System.Drawing.Point(4, 38);
            this.SendCmdMntText.MaxLength = 60000;
            this.SendCmdMntText.Multiline = true;
            this.SendCmdMntText.Name = "SendCmdMntText";
            this.SendCmdMntText.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.SendCmdMntText.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.SendCmdMntText.Size = new System.Drawing.Size(276, 132);
            this.SendCmdMntText.TabIndex = 2;
            this.SendCmdMntText.WordWrap = false;
            // 
            // ReceiveMntLabel
            // 
            this.ReceiveMntLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.ReceiveMntLabel.BackColor = System.Drawing.SystemColors.Control;
            this.ReceiveMntLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.ReceiveMntLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.ReceiveMntLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ReceiveMntLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.ReceiveMntLabel.Location = new System.Drawing.Point(4, 180);
            this.ReceiveMntLabel.Name = "ReceiveMntLabel";
            this.ReceiveMntLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ReceiveMntLabel.Size = new System.Drawing.Size(160, 20);
            this.ReceiveMntLabel.TabIndex = 3;
            this.ReceiveMntLabel.Text = "  Receive Monitor";
            this.ReceiveMntLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // SendCmdMntLabel
            // 
            this.SendCmdMntLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.SendCmdMntLabel.BackColor = System.Drawing.SystemColors.Control;
            this.SendCmdMntLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.SendCmdMntLabel.Cursor = System.Windows.Forms.Cursors.Default;
            this.SendCmdMntLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.SendCmdMntLabel.ForeColor = System.Drawing.SystemColors.WindowText;
            this.SendCmdMntLabel.Location = new System.Drawing.Point(5, 18);
            this.SendCmdMntLabel.Name = "SendCmdMntLabel";
            this.SendCmdMntLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.SendCmdMntLabel.Size = new System.Drawing.Size(155, 20);
            this.SendCmdMntLabel.TabIndex = 0;
            this.SendCmdMntLabel.Text = " Send Command Monitor";
            this.SendCmdMntLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // HeaderCommand
            // 
            this.HeaderCommand.BackColor = System.Drawing.SystemColors.Control;
            this.HeaderCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.HeaderCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.HeaderCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.HeaderCommand.Location = new System.Drawing.Point(342, 184);
            this.HeaderCommand.Name = "HeaderCommand";
            this.HeaderCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.HeaderCommand.Size = new System.Drawing.Size(120, 22);
            this.HeaderCommand.TabIndex = 17;
            this.HeaderCommand.Text = "Header on/off";
            this.HeaderCommand.UseVisualStyleBackColor = false;
            this.HeaderCommand.Click += new System.EventHandler(this.HeaderCommand_Click);
            // 
            // CloseCommand
            // 
            this.CloseCommand.BackColor = System.Drawing.SystemColors.Control;
            this.CloseCommand.Cursor = System.Windows.Forms.Cursors.Default;
            this.CloseCommand.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CloseCommand.ForeColor = System.Drawing.SystemColors.ControlText;
            this.CloseCommand.Location = new System.Drawing.Point(784, 476);
            this.CloseCommand.Name = "CloseCommand";
            this.CloseCommand.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.CloseCommand.Size = new System.Drawing.Size(110, 25);
            this.CloseCommand.TabIndex = 18;
            this.CloseCommand.Text = "CLOSE";
            this.CloseCommand.UseVisualStyleBackColor = false;
            this.CloseCommand.Click += new System.EventHandler(this.CloseCommand_Click);
            // 
            // VerboseCommand
            // 
            this.VerboseCommand.Location = new System.Drawing.Point(470, 184);
            this.VerboseCommand.Name = "VerboseCommand";
            this.VerboseCommand.Size = new System.Drawing.Size(120, 22);
            this.VerboseCommand.TabIndex = 19;
            this.VerboseCommand.Text = "Verbose on/off";
            this.VerboseCommand.Click += new System.EventHandler(this.VerboseCommand_Click);
            // 
            // MainDialog
            // 
            this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
            this.ClientSize = new System.Drawing.Size(918, 508);
            this.Controls.Add(this.VerboseCommand);
            this.Controls.Add(this.RangeSettingsLabel);
            this.Controls.Add(this.NumericItemSettingsLabel);
            this.Controls.Add(this.ModelTypeLabel);
            this.Controls.Add(this.ErrorInformationLabel);
            this.Controls.Add(this.HeaderCommand);
            this.Controls.Add(this.CloseCommand);
            this.Controls.Add(this.UpdateRateCombo);
            this.Controls.Add(this.AllResetCommand);
            this.Controls.Add(this.ErrInfoGetCommand);
            this.Controls.Add(this.ModelTypeTextBox);
            this.Controls.Add(this.ErrInfoText);
            this.Controls.Add(this.TestCmdSendText);
            this.Controls.Add(this.NumericSettingsFrame);
            this.Controls.Add(this.TestCmdSendCommand);
            this.Controls.Add(this.UpdateRateSetCommand);
            this.Controls.Add(this.MonitorFrame);
            this.Controls.Add(this.UpdateRateLabel);
            this.Controls.Add(this.TestCommandSendLabel);
            this.Controls.Add(this.RangeSettingsFrame);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.Name = "MainDialog";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "WT500CommSample";
            this.Closed += new System.EventHandler(this.MainDialog_Closed);
            this.Load += new System.EventHandler(this.MainDialog_Load);
            this.RangeSettingsFrame.ResumeLayout(false);
            this.NumericSettingsFrame.ResumeLayout(false);
            this.NumericSettingsFrame.PerformLayout();
            this.MonitorFrame.ResumeLayout(false);
            this.MonitorFrame.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

		}
		#endregion

		#region Function: InitListItem
		//********************************************
		///<summary>
		///Function: InitListItem
		///</summary>
		//********************************************
		private void InitListItem()
		{
			InitErrorMsg();
			InitUpdateRateList();
			InitVoltageList();
			InitCurrDirList();
			IniteList();
			InitoList();
			InitList();
		}
		private void InitErrorMsg()
		{
			//===========================
			///Error Code from Tmctl
			//===========================

			//Error Number  Problem                                 Solutions
			errorMsg[0]  = "Device not found";            //   2  1 Check the wiring.  
			errorMsg[1]  = "Connection to device failed"; //   4  2 Check the wiring.  
			errorMsg[2]  = "Device not connected";        //   8  3 Connect the device using the initialization function.  
			errorMsg[3]  = "Device already connected";    //  16  4 Two connections cannot be opened.  
			errorMsg[4]  = "Incompatible PC";             //  32  5 Check the hardware you are using.  
			errorMsg[5]  = "Illegal parameter";           //  64  6 Check parameter type etc. 
			errorMsg[6]  = "";
			errorMsg[7]  = "Send error";                  // 256  8 Check the wiring, address, and ID.
			errorMsg[8]  = "Receive error";               // 512  9 Check whether an error occurred on the device.  
			errorMsg[9]  = "Received data not block data";//1024 10
			errorMsg[10] = "";
			errorMsg[11] = "System error";                //4096 12 There is a problem with the operating environment.  
			errorMsg[12] = "Illegal device ID";           //8192 13 Use the ID of the device acquired by the initialization function. 
			errorMsg[13] = "";
		}

		private void InitUpdateRateList()
		{
			//===========================
			///UpdateRate List
			//===========================
			updateRateList[0] = "100ms";
			updateRateList[1] = "200ms";
			updateRateList[2] = "500ms";
			updateRateList[3] = "1s";
			updateRateList[4] = "2s";
			updateRateList[5] = "5s";
		}

		private void InitVoltageList()
		{
			//===========================
			///Voltage Range List
			//===========================

			//CrestFactor = 3
			voltageList[0, 0] = "15V";
			voltageList[0, 1] = "30V";
			voltageList[0, 2] = "60V";
			voltageList[0, 3] = "100V";
			voltageList[0, 4] = "150V";
			voltageList[0, 5] = "300V";
			voltageList[0, 6] = "600V";
			voltageList[0, 7] = "1000V";
			voltageList[0, 8] = "";
			voltageList[0, 9] = "";
			voltageList[0, 10] = "";
			voltageList[0, 11] = "";

			//CrestFactor = 6
			voltageList[1, 0] = "7.5V";
			voltageList[1, 1] = "15V";
			voltageList[1, 2] = "30V";
			voltageList[1, 3] = "50V";
			voltageList[1, 4] = "75V";
			voltageList[1, 5] = "150V";
			voltageList[1, 6] = "300V";
			voltageList[1, 7] = "500V";
			voltageList[1, 8] = "";
			voltageList[1, 9] = "";
			voltageList[1, 10] = "";
			voltageList[1, 11] = "";
		}

		private void InitCurrDirList()
		{
			//===========================
			///Current Range List
			//===========================

			//CrestFactor = 3
			currentList[0, 0] = "500mA";
			currentList[0, 1] = "1A";
			currentList[0, 2] = "2A";
			currentList[0, 3] = "5A";
			currentList[0, 4] = "10A";
			currentList[0, 5] = "20A";
			currentList[0, 6] = "40A";

			//Selecting the External Current Sensor Range
			currentList[0, 7] = "50mV";
			currentList[0, 8] = "100mV";
			currentList[0, 9] = "200mV";
			currentList[0, 10] = "500mV";
			currentList[0, 11] = "1V";
			currentList[0, 12] = "2V";
			currentList[0, 13] = "5V";
			currentList[0, 14] = "10V";
			currentList[0, 15] = "";
			currentList[0, 16] = "";
			currentList[0, 17] = "";
			currentList[0, 18] = "";

			//CrestFactor = 6
			currentList[1, 0] = "250mA";
			currentList[1, 1] = "500mA";
			currentList[1, 2] = "1A";
			currentList[1, 3] = "2.5A";
			currentList[1, 4] = "5A";
			currentList[1, 5] = "10A";
			currentList[1, 6] = "20A";

			//Selecting the External Current Sensor Range
			currentList[1, 7] = "25mV";
			currentList[1, 8] = "50mV";
			currentList[1, 9] = "100mV";
			currentList[1, 10] = "250mV";
			currentList[1, 11] = "500mV";
            currentList[1, 12] = "1V";
			currentList[1, 13] = "2.5V";
			currentList[1, 14] = "5V";
			currentList[1, 15] = "";
			currentList[1, 16] = "";
			currentList[1, 17] = "";
			currentList[1, 18] = "";
		}

		private void IniteList()
		{
			//===========================
			///Element List
			//===========================
			eList[0] = "1";
			eList[1] = "2";
			eList[2] = "3";
			eList[3] = "SIGMA";
			eList[4] = "";
            eList[5] = "";
		}

		private void InitoList()
		{
			//===========================
			///Order List
			//===========================
			oList[0] = "Total";
			oList[1] = "DC";
			oList[2] = "1";
			oList[3] = "2";
			oList[4] = "3";
			oList[5] = "4";
			oList[6] = "5";
			oList[7] = "6";
			oList[8] = "7";
			oList[9] = "8";
			oList[10] = "9";
			oList[11] = "10";
			oList[12] = "11";
			oList[13] = "12";
			oList[14] = "13";
			oList[15] = "14";
			oList[16] = "15";
			oList[17] = "16";
			oList[18] = "17";
			oList[19] = "18";
			oList[20] = "19";
			oList[21] = "20";
			oList[22] = "21";
			oList[23] = "22";
			oList[24] = "23";
			oList[25] = "24";
			oList[26] = "25";
			oList[27] = "26";
			oList[28] = "27";
			oList[29] = "28";
			oList[30] = "29";
			oList[31] = "30";
			oList[32] = "31";
			oList[33] = "32";
			oList[34] = "33";
			oList[35] = "34";
			oList[36] = "35";
			oList[37] = "36";
			oList[38] = "37";
			oList[39] = "38";
			oList[40] = "39";
			oList[41] = "40";
			oList[42] = "41";
			oList[43] = "42";
			oList[44] = "43";
			oList[45] = "44";
			oList[46] = "45";
			oList[47] = "46";
			oList[48] = "47";
			oList[49] = "48";
			oList[50] = "49";
			oList[51] = "50";
			oList[52] = "";
			oList[53] = "";
			oList[54] = "";
			oList[55] = "";
			oList[56] = "";
			oList[57] = "";
			oList[58] = "";
			oList[59] = "";
			oList[60] = "";
			oList[61] = "";
			oList[62] = "";
			oList[63] = "";
			oList[64] = "";
			oList[65] = "";
			oList[66] = "";
			oList[67] = "";
			oList[68] = "";
			oList[69] = "";
			oList[70] = "";
			oList[71] = "";
			oList[72] = "";
			oList[73] = "";
			oList[74] = "";
			oList[75] = "";
			oList[76] = "";
			oList[77] = "";
			oList[78] = "";
			oList[79] = "";
			oList[80] = "";
			oList[81] = "";
			oList[82] = "";
			oList[83] = "";
			oList[84] = "";
			oList[85] = "";
			oList[86] = "";
			oList[87] = "";
			oList[88] = "";
			oList[89] = "";
			oList[90] = "";
			oList[91] = "";
			oList[92] = "";
			oList[93] = "";
			oList[94] = "";
			oList[95] = "";
			oList[96] = "";
			oList[97] = "";
			oList[98] = "";
			oList[99] = "";
			oList[100] = "";
			oList[101] = "";
		}
		private void InitList()
		{
			//===========================
			//     init Struct
			//===========================
            List[0].FunctionName = "URMS";
            List[0].ElementFlag  = true;
            List[0].OrderFlag    = false;

            List[1].FunctionName = "UMN";
            List[1].ElementFlag  = true;
            List[1].OrderFlag    = false;

            List[2].FunctionName = "UDC";
            List[2].ElementFlag  = true;
            List[2].OrderFlag    = false;

            List[3].FunctionName = "URMN";
            List[3].ElementFlag  = true;
            List[3].OrderFlag    = false;

            List[4].FunctionName = "UAC";
            List[4].ElementFlag  = true;
            List[4].OrderFlag    = false;

            List[5].FunctionName = "IRMS";
            List[5].ElementFlag  = true;
            List[5].OrderFlag    = false;

            List[6].FunctionName = "IMN";
            List[6].ElementFlag  = true;
            List[6].OrderFlag    = false;

            List[7].FunctionName = "IDC";
            List[7].ElementFlag  = true;
            List[7].OrderFlag    = false;

            List[8].FunctionName = "IRMN";
            List[8].ElementFlag  = true;
            List[8].OrderFlag    = false;

            List[9].FunctionName = "IAC";
            List[9].ElementFlag  = true;
            List[9].OrderFlag    = false;

            List[10].FunctionName = "P";
            List[10].ElementFlag  = true;
            List[10].OrderFlag    = false;

            List[11].FunctionName = "S";
            List[11].ElementFlag  = true;
            List[11].OrderFlag    = false;

            List[12].FunctionName = "Q";
            List[12].ElementFlag  = true;
            List[12].OrderFlag    = false;

            List[13].FunctionName = "LAMBDA"; //"LAMBda"
            List[13].ElementFlag  = true;
            List[13].OrderFlag    = false;

            List[14].FunctionName = "PHI";
            List[14].ElementFlag  = true;
            List[14].OrderFlag    = false;

            List[15].FunctionName = "FU"; //"FreqU[fU]"
            List[15].ElementFlag  = true;
            List[15].OrderFlag    = false;

            List[16].FunctionName = "FI"; //"FreqI[fI]"
            List[16].ElementFlag  = true;
            List[16].OrderFlag    = false;

			List[17].FunctionName = "UPPEAK"; //"U+peak[U+peak]"
            List[17].ElementFlag  = true;
            List[17].OrderFlag    = false;

			List[18].FunctionName = "UMPEAK"; //"U-peak[U-peak]"
            List[18].ElementFlag  = true;
            List[18].OrderFlag    = false;

			List[19].FunctionName = "IPPEAK"; //"i +peak"
            List[19].ElementFlag  = true;
            List[19].OrderFlag    = false;

            List[20].FunctionName = "IMPEAK"; //"i -peak"
            List[20].ElementFlag  = true;
            List[20].OrderFlag    = false;

            List[21].FunctionName = "CFU"; //"CfU"
            List[21].ElementFlag  = true;
            List[21].OrderFlag    = false;

            List[22].FunctionName = "CFI"; //"CfI"
            List[22].ElementFlag  = true;
            List[22].OrderFlag    = false;

            List[23].FunctionName = "TIME"; //"i-Time"
            List[23].ElementFlag  = true;
            List[23].OrderFlag    = false;

            List[24].FunctionName = "WH"; //"Wp"
            List[24].ElementFlag  = true;
            List[24].OrderFlag    = false;

            List[25].FunctionName = "WHP"; //"Wp+"
            List[25].ElementFlag  = true;
            List[25].OrderFlag    = false;

            List[26].FunctionName = "WHM"; //"Wp-"
            List[26].ElementFlag  = true;
            List[26].OrderFlag    = false;

            List[27].FunctionName = "AH"; //"q"
            List[27].ElementFlag  = true;
            List[27].OrderFlag    = false;

            List[28].FunctionName = "AHP"; //"q+"
            List[28].ElementFlag  = true;
            List[28].OrderFlag    = false;

            List[29].FunctionName = "AHM"; //"q-"
            List[29].ElementFlag  = true;
            List[29].OrderFlag    = false;

            List[30].FunctionName = "WS"; //"WS"
            List[30].ElementFlag  = true;
            List[30].OrderFlag    = false;

            List[31].FunctionName = "WQ"; //"WQ"
            List[31].ElementFlag  = true;
            List[31].OrderFlag    = false;

            List[32].FunctionName = "ETA1"; //"ETA1"
            List[32].ElementFlag  = false;
            List[32].OrderFlag    = false;

            List[33].FunctionName = "ETA2"; //"ETA2"
            List[33].ElementFlag  = false;
            List[33].OrderFlag    = false;

            //-------------F1~F8----------------
            List[34].FunctionName = "F1";
            List[34].ElementFlag  = false;
            List[34].OrderFlag    = false;

            List[35].FunctionName = "F2";
            List[35].ElementFlag  = false;
            List[35].OrderFlag    = false;

            List[36].FunctionName = "F3";
            List[36].ElementFlag  = false;
            List[36].OrderFlag    = false;

            List[37].FunctionName = "F4";
            List[37].ElementFlag  = false;
            List[37].OrderFlag    = false;

            List[38].FunctionName = "F5";
            List[38].ElementFlag  = false;
            List[38].OrderFlag    = false;

            List[39].FunctionName = "F6";
            List[39].ElementFlag  = false;
            List[39].OrderFlag    = false;

            List[40].FunctionName = "F7";
            List[40].ElementFlag  = false;
            List[40].OrderFlag    = false;

            List[41].FunctionName = "F8";
            List[41].ElementFlag  = false;
            List[41].OrderFlag    = false;

            //-------------'/G5 optional--------------

            List[42].FunctionName = "UK";
            List[42].ElementFlag  = true;
            List[42].OrderFlag    = true;

            List[43].FunctionName = "IK";
            List[43].ElementFlag  = true;
            List[43].OrderFlag    = true;

            List[44].FunctionName = "PK";
            List[44].ElementFlag  = true;
            List[44].OrderFlag    = true;

            List[45].FunctionName = "SK";
            List[45].ElementFlag  = true;
            List[45].OrderFlag    = true;

            List[46].FunctionName = "QK";
            List[46].ElementFlag  = true;
            List[46].OrderFlag    = true;

            List[47].FunctionName = "LAMBDAK"; //"LAMBda"
            List[47].ElementFlag  = true;
            List[47].OrderFlag    = true;

            List[48].FunctionName = "PHIK";
            List[48].ElementFlag  = true;
            List[48].OrderFlag    = true;

            List[49].FunctionName = "PHIUK";
            List[49].ElementFlag  = true;
            List[49].OrderFlag    = true;

            List[50].FunctionName = "PHIIK";
            List[50].ElementFlag  = true;
            List[50].OrderFlag    = true;

            List[51].FunctionName = "UHDF";
            List[51].ElementFlag  = true;
            List[51].OrderFlag    = true;

            List[52].FunctionName = "IHDF";
            List[52].ElementFlag  = true;
            List[52].OrderFlag    = true;

            List[53].FunctionName = "PHDF";
            List[53].ElementFlag  = true;
            List[53].OrderFlag    = true;

            List[54].FunctionName = "UTHD"; //"Uthd"
            List[54].ElementFlag  = true;
            List[54].OrderFlag    = false;

            List[55].FunctionName = "ITHD"; //"Ithd"
            List[55].ElementFlag  = true;
            List[55].OrderFlag    = false;

            List[56].FunctionName = "PTHD"; //"Pthd"
            List[56].ElementFlag  = true;
            List[56].OrderFlag    = false;

            List[57].FunctionName = "PHI_U1U2"; //"PHIU1-U2"
            List[57].ElementFlag  = false;
            List[57].OrderFlag    = false;

            List[58].FunctionName = "PHI_U1U3"; //"PHIU1-U3"
            List[58].ElementFlag  = false;
            List[58].OrderFlag    = false;

            List[59].FunctionName = "PHI_U1I1"; //"PHIU1-I1"
            List[59].ElementFlag  = false;
            List[59].OrderFlag    = false;

            List[60].FunctionName = "PHI_U1I2"; //"PHIU1-I2"
            List[60].ElementFlag  = false;
            List[60].OrderFlag    = false;

            List[61].FunctionName = "PHI_U1I3"; //"PHIU1-I3
            List[61].ElementFlag  = false;
            List[61].OrderFlag    = false;

            //---------/DT delta computation version-------

            List[62].FunctionName = "DELTA1"; //"DELTAF1"
            List[62].ElementFlag  = false;
            List[62].OrderFlag    = false;

            List[63].FunctionName = "DELTA2"; //"DELTAF2"
            List[63].ElementFlag  = false;
            List[63].OrderFlag    = false;

            List[64].FunctionName = "DELTA3"; //"DELTAF3"
            List[64].ElementFlag  = false;
            List[64].OrderFlag    = false;

            List[65].FunctionName = "DELTA4"; //"DELTAF4"
            List[65].ElementFlag  = false;
            List[65].OrderFlag    = false;
		}
     
		#endregion

		#region MainDialog_Load
		//******************************************************
		/// <summary>
		/// MainDialog_Load
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="e"></param>
		//******************************************************
		private void MainDialog_Load(object sender, EventArgs e)
		{
			#region ControlsArray Init
			/// ControlsArray
			///
			this.ElementOptions = new ControlsArray();
			this.FCombos = new ControlsArray();
			this.ECombos = new ControlsArray();
			this.OCombos = new ControlsArray();
			this.DTexts = new ControlsArray();
			this.ElementOptions.Add(this._ElementOption_0);
			this.ElementOptions.Add(this._ElementOption_1);
			this.ElementOptions.Add(this._ElementOption_2);
			this.FCombos.Add(this._FCombo_0);
			this.FCombos.Add(this._FCombo_1);
			this.FCombos.Add(this._FCombo_2);
			this.FCombos.Add(this._FCombo_3);
			this.FCombos.Add(this._FCombo_4);
			this.FCombos.Add(this._FCombo_5);
			this.FCombos.Add(this._FCombo_6);
			this.FCombos.Add(this._FCombo_7);
			this.FCombos.Add(this._FCombo_8);
			this.FCombos.Add(this._FCombo_9);
			this.ECombos.Add(this._ECombo_0);
			this.ECombos.Add(this._ECombo_1);
			this.ECombos.Add(this._ECombo_2);
			this.ECombos.Add(this._ECombo_3);
			this.ECombos.Add(this._ECombo_4);
			this.ECombos.Add(this._ECombo_5);
			this.ECombos.Add(this._ECombo_6);
			this.ECombos.Add(this._ECombo_7);
			this.ECombos.Add(this._ECombo_8);
			this.ECombos.Add(this._ECombo_9);
			this.OCombos.Add(this._OCombo_0);
			this.OCombos.Add(this._OCombo_1);
			this.OCombos.Add(this._OCombo_2);
			this.OCombos.Add(this._OCombo_3);
			this.OCombos.Add(this._OCombo_4);
			this.OCombos.Add(this._OCombo_5);
			this.OCombos.Add(this._OCombo_6);
			this.OCombos.Add(this._OCombo_7);
			this.OCombos.Add(this._OCombo_8);
			this.OCombos.Add(this._OCombo_9);
			this.DTexts.Add(this._DText_0);
			this.DTexts.Add(this._DText_1);
			this.DTexts.Add(this._DText_2);
			this.DTexts.Add(this._DText_3);
			this.DTexts.Add(this._DText_4);
			this.DTexts.Add(this._DText_5);
			this.DTexts.Add(this._DText_6);
			this.DTexts.Add(this._DText_7);
			this.DTexts.Add(this._DText_8);
			this.DTexts.Add(this._DText_9);
			#endregion

			///Set ModelType Display#
			string model = Connection.DevModel;

			//--GET IDN--
			string msg = "*IDN?";
			string tem_idn="";
			SetSendMonitor(msg);
			if (!QueriesData(50, msg, ref tem_idn))
			{
				return;
			}
			SetReceiveMonitor(tem_idn);

			model = CutLeft("\n",ref model);
			ModelTypeTextBox.Text = model;
			//check model.
			CutLeft("," , ref model);
			int symbol = model.IndexOf(",");
			if(model.Substring(0, symbol) != "760201" && model.Substring(0, symbol) != "760202" && model.Substring(0, symbol) != "760203")
			{
				DispError("it seems not WT500, program may run incorrectly!");
			}
			//set unuse element RadioBox disable.
            lastElement = Convert.ToInt32(model.Substring(5, 1));

			int elementIndex;
			for(elementIndex=0; elementIndex<MAX_ELEMENT; elementIndex++)
			{
				if(elementIndex > lastElement - 1)
				{
					ElementOptions[elementIndex].Enabled = false;
				}
			}

			///Queries the CrestFactor#
			string tempFactor = "";
			msg = ":INPUT:CFACTOR?";
			SetSendMonitor(msg);
			if(!QueriesData(20, msg, ref tempFactor))
			{
				return;
			}
			SetReceiveMonitor(tempFactor);
			crestFactor = CutLeft("\n", ref tempFactor);//cut left with LF.

			GetUpdateRate();

			//initialize  Function base on  option
			GetOption();

			///get current item settings from instrument
			ReadItemSettings();

			//set the first RadioBox to be checked.
			if(lastElement > 0)
			{
				ElementOptions[0].Select();
			}
			ItemNumberCombo.SelectedIndex = ItemNumberCombo.Items.Count - 1;

			return;
		}

		#endregion

		#region MainDialog_Close
		//********************************************
		///Dialog Close
		//********************************************
		private void MainDialog_Closed(object sender, System.EventArgs e)
		{
			//close connection after exiting.
			connection.Finish();    
		}
		private void CloseCommand_Click(object sender, System.EventArgs e)
		{
			this.Close();
		}
		#endregion

		//#-------------------------#
		///--Common Functions--
		//#-------------------------#

		#region Class: ControlArray
		//********************************************
		///<summary>Class: ControlArray(Index)</summary>
		///<remark>
		///used when setting controls in group.
		///</remark>
		//********************************************
		private class ControlsArray : System.Collections.CollectionBase 
		{
			// indexer
			public System.Windows.Forms.Control this[int Index]
			{
				get
				{
					return (System.Windows.Forms.Control)this.List[Index];
				}
				set 
				{ 
					this.List[Index] = value; 
				}
			}
			// add object into ControlsArray.
			public void Add(System.Windows.Forms.Control control)
			{
				this.List.Add(control);
			}
			// get the index of the given object.
			public int GetIndex(object sender)
			{
				int n;
				for(n=0; n<this.Count; n++)
				{
					if (this.List[n] == sender)
					{
						break;
					}
				}
				return n;
			}
			// set the index of the array as the given index.
			public void SetIndex(object item, int index)
			{
			}
			// get the checked radio only when this is a radio array.
			public int GetActiveBtn(int startIndex)
			{
				int n;
				RadioButton btn;
				for(n=startIndex; n<this.Count; n++)
				{
					btn = (RadioButton)this.List[n];
					if(btn.Checked == true)
					{
						break;
					}
				}
				return n;
			}
		}
		#endregion
    
		#region Function: CutLeft
		//*********************************************
		/// <summary> Function: CutLeft </summary>
		/// <remarks>
		///cut the left half to outData,
		///and the right portion remain in inData.
		/// </remarks>
		/// <example>
		///symbol:"2", in:"12345" => out:"1", in:"345"
		/// </example>
		//*********************************************
		private string CutLeft(string symbol, ref string inData)
		{
			string outData = inData;
			int pos = inData.IndexOf(symbol);
			if(pos == -1)
			{
				//if no symbol, cut with LF.
				pos = inData.IndexOf((char)10);
			}
			if(pos != -1)
			{
				outData = inData.Substring(0, pos);
				inData = inData.Substring(pos + 1);
			}

			//cut data when harmonics mode
			pos = outData.IndexOf(" ");
			if(pos != -1)
			{
				outData = outData.Substring(pos + 1);
			}
			return outData;
		}
		#endregion

		#region Function: QueriesData
		//********************************************
		///<summary>Function: QueriesData</summary>
		//********************************************
		private bool QueriesData(int maxLength, string msg, ref string data)
		{
			int rtn;
			//Send Command.
			rtn = connection.Send(msg);
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				return false;
			}

			//Queries Data.
			int realLength = 0;
			rtn = connection.Receive(ref data, maxLength, ref realLength);
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				return false;
			}
			return true;
		}

		#endregion

		#region Function: SetSendMonitor
		//***********************************************
		///<summary>Function: SetSendMonitor</summary>
		//***********************************************
		private void SetSendMonitor(string msg)
		{
			//when lines count over 500, delete the oldest one.
			if(SendCmdMntText.Lines.Length >= MAX_LINES)
			{
				SendCmdMntText.Text = SendCmdMntText.Text.Remove(0, SendCmdMntText.Lines[0].Length + 2);
			}
			int selPos = SendCmdMntText.Text.Length;
			if(SendCmdMntText.Text != "")
			{
				if(selPos < 32700)
				{
					//"AppendText()"is fast, but has a limit of 32,766.
					SendCmdMntText.AppendText("\r\n");
				}
				else
				{
					SendCmdMntText.Text += "\r\n";
				}
			}
			if(selPos < 32700)
			{
				//AppendText() has a limit of 32,766.
				SendCmdMntText.AppendText(msg);
			}
			else
			{
				SendCmdMntText.Text += msg;
			}

			//scroll the window to bottom.
			SendCmdMntText.Select(selPos + 2,0);
			SendCmdMntText.ScrollToCaret();
		}
		#endregion

		#region Function: SetReceiveMonitor
		//*****************************************
		/// <summary>
		/// Function: SetReceiveMonitor
		/// </summary>
		//*****************************************
		private void SetReceiveMonitor(string data)
		{
			if(data.IndexOf("\n") != -1)
			{
				data = data.Substring(0, data.IndexOf("\n"));
			}
			//when lines count over 500, delete the oldest one.
			if(ReceiveMntText.Lines.Length >= MAX_LINES)
			{
				ReceiveMntText.Text  = ReceiveMntText.Text.Remove(0, ReceiveMntText.Lines[0].Length + 2);
			}
			int selPos = ReceiveMntText.Text.Length;
			if(ReceiveMntText.Text != "")
			{
				if(selPos < 32700)
				{
					//AppendText() has a limit of 32,766.
					ReceiveMntText.AppendText("\r\n");
				}
				else
				{
					ReceiveMntText.Text += "\r\n";
				}
			}
			//scroll the window to button.
			if(selPos < 32700)
			{
				//AppendText() has a limit of 32,766.
				ReceiveMntText.AppendText(data);
			}
			else
			{
				ReceiveMntText.Text += data;
			}

			//scroll the window to bottom.
			ReceiveMntText.Select(selPos + 2,0);
			ReceiveMntText.ScrollToCaret();
		}
		#endregion

		#region Function: DisplayError
		//********************************************
		/// <summary> Function: DispError </summary>
		///<remark>
		///the errorID is received from tmctl.
		///get the errorMsg corresponding the errorID.
		///</remark>
		//********************************************
		private void DispError(int errorID)
		{
			if(errorID == 0)
			{
				ErrInfoText.Text = "Getting error failed!";
				return;
			}
			int n = 0;
			while(2 << n != errorID)
			{
				n ++;
			}
			//set errorMsg to display.
			ErrInfoText.Text = errorMsg[n];
		}
		private void DispError(string errorInfo)
		{
			//set errorMsg to display.
			ErrInfoText.Text = errorInfo;    
		}
		#endregion

		#region Function: GetItemData
		//********************************************
		/// <summary> Function: GetData </summary>
		//********************************************
		private void GetItemData()
		{
			int n;
			int rtn;
			string msg;

			///#print title(Function) when getting data once and saveBox is checked.#
			if(DataSaveCheckBox.Checked == true
				&& FileNameText.Text != ""//when file name is null, do not save.
				&& GetDataSgCommand.Enabled == true)
			{
				//open specified file
				FileStream csvStream;
				try
				{
					csvStream = new FileStream(FileNameText.Text, FileMode.Append);
				}
				catch(Exception)
				{
					MessageBox.Show("File can not open!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
					return;
				}
				if(!csvStream.CanWrite)
				{
					MessageBox.Show("File can not open!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
					return;
				}
				StreamWriter csvOutput = new StreamWriter (csvStream);

				//out put current date.
				System.DateTime currentTime=new System.DateTime(); 
				currentTime = System.DateTime.Now; 
				csvOutput.Write("Date: ");
				csvOutput.Write(currentTime.Year);
				csvOutput.Write("/");
				csvOutput.Write(currentTime.Month);
				csvOutput.Write("/");
				csvOutput.Write(currentTime.Day);
				csvOutput.Write(",");
				for(n=0; n<Convert.ToInt32(ItemNumberCombo.Text); n++)
				{
					csvOutput.Write(FCombos[n].Text);
					csvOutput.Write(",");
				}
				csvOutput.WriteLine();
				csvOutput.Close ();
				csvStream.Close ();
			}

			///----------------------#get data#
				msg = ":NUMERIC:NORMAL:VALUE?";

			///----------------------#send message#
			SetSendMonitor(msg);
			//###ASCII:TmcSend(); FLOAT:TmcSendBuLength()###
			if(ASCIIOption.Checked == true)
			{
				rtn = connection.Send(msg);
			}
			else
			{
				rtn = connection.SendByLength(msg, msg.Length);
			}
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				return;
			}

			///----------------------#receive values#
			int maxLength = 0;
			int realLength = 0;
			string data = "";

			if(ASCIIOption.Checked == true)
			{
				///----------------------#receive values by ASCII#
				//###ASCII:TmcReceive()###
				maxLength = 15 * Convert.ToInt32(ItemNumberCombo.Text);
				rtn = connection.Receive(ref data, maxLength, ref realLength);
				if(rtn != 0)
				{
					DispError(connection.GetLastError());
					return;
				}
				SetReceiveMonitor(data);
				data = CutLeft("\n", ref data);
			}
			else
			{
				byte[] byteData;
				byte[] bytes = new byte[4];
				///----------------------#receive values by Float#
				//###FLOAT:TmcReceiveBlock()###
				rtn = connection.ReceiveBlockHeader(ref maxLength);
				if(maxLength < 1)
				{
					return;
				}
				maxLength += 2;//see tmctl's help
				byteData = new byte[maxLength];

				int isEnd = 0;
			    string outputValue="";
				float floatBuf;
				string temstr="";
				while(isEnd == 0)
				{
					rtn = connection.ReceiveBlockData(ref byteData, maxLength, ref realLength, ref isEnd);
					if(rtn != 0)
					{
						DispError(connection.GetLastError());
						return;
					}
					for(n=0; n<=realLength-1; n++)
					{
					/****************************************************/
					    temstr = byteData[n].ToString("X");
					    if(byteData[n] < 16)
						{
						    temstr="0" + temstr;
						}
					    outputValue = outputValue+temstr;
					   //outputValue = outputValue + (byteData[n].ToString("X"));
					/*****************************************************/
					}
					for(n=0; n<realLength/4; n++)
					{
						bytes[3] = byteData[n * 4];
						bytes[2] = byteData[n * 4 + 1];
						bytes[1] = byteData[n * 4 + 2];
						bytes[0] = byteData[n * 4 + 3];
						floatBuf = System.BitConverter.ToSingle(bytes, 0);
						data += floatBuf.ToString() + ",";
					}
				}
				SetReceiveMonitor(outputValue);
			}

			///#display data and output when saveBox checked#
			if(DataSaveCheckBox.Checked == true
				&& FileNameText.Text != "")//when file name is null, do not save.
			{
				//open specified file
				FileStream csvStream;
				try
				{
					csvStream = new FileStream(FileNameText.Text, FileMode.Append);
				}
				catch(Exception)
				{
					MessageBox.Show("File can not open!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
					return;
				}
				if(!csvStream.CanWrite)
				{
					MessageBox.Show("File can not open!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
					return;
				}
				StreamWriter csvOutput = new StreamWriter (csvStream);

				//out put current time.
				System.DateTime currentTime=new System.DateTime(); 
				currentTime = System.DateTime.Now; 
				csvOutput.Write("Time: ");
				csvOutput.Write(currentTime.Hour);
				csvOutput.Write(":");
				csvOutput.Write(currentTime.Minute);
				csvOutput.Write(":");
				//csvOutput.Write(currentTime.Second + currentTime.Millisecond * 0.001);//???????
				string msec = currentTime.Second.ToString("D") + ".";
				msec = msec + currentTime.Millisecond.ToString("D3");
				csvOutput.Write(msec);
			    csvOutput.Write(",");
                
				for(n=0; n<Convert.ToInt32(ItemNumberCombo.Text); n++)
				{
					//set display
					DTexts[n].Text = CutLeft(",", ref data);
					//output data
					if(ASCIIOption.Checked)
						csvOutput.Write(DTexts[n].Text);
					else
					{
						double f = Convert.ToDouble(DTexts[n].Text);
						msec = f.ToString("E10");
						csvOutput.Write(msec);
					}
					csvOutput.Write(",");
				}
				csvOutput.WriteLine();
				csvOutput.Close ();
				csvStream.Close ();
			}
			else
			{
				for (n=0; n<Convert.ToInt32(ItemNumberCombo.Text); n++)
				{
					//set display
					DTexts[n].Text = CutLeft(",", ref data);
				}
			}
		}
		#endregion

		//#-------------------------#
		///--Communications--
		//#-------------------------#

		#region Function: GetRanges
		//********************************************
		/// <summary> Function: GetRanges </summary>
		//********************************************
		private bool GetRanges(int elementIndex)
		{
			int n;
			string msg;

			VoltRangeCombo.Items.Clear();
			CurrentRangeCombo.Items.Clear();

			///----------------------#Set the Range Lists#
			//when crest factor == 3, set ranges.
			if(crestFactor == "3")
			{
				//#set voltage list#
				n = 0;
				while(voltageList[0,n] != "")
				{
					VoltRangeCombo.Items.Add(voltageList[0,n]);
					n++;
				}
				VoltRangeCombo.Items.Add(rangeListAuto);
				//#set current list#
				n=0;
				while(currentList[0,n] != "")
				{
					CurrentRangeCombo.Items.Add(currentList[0,n]);
					n++;
				}

				CurrentRangeCombo.Items.Add(rangeListAuto);
		   }
		  //when crest factor == 6, set ranges.
			else if(crestFactor == "6")
			{
				//#set voltage list#
				n = 0;
				while(voltageList[1,n] != "")
				{
					VoltRangeCombo.Items.Add(voltageList[1,n]);
					n++;
				}
				VoltRangeCombo.Items.Add(rangeListAuto);
				//#set current list#
				n = 0;
				while(currentList[1,n] != "")
			    {
					CurrentRangeCombo.Items.Add(currentList[1,n]);
					n++;
				}
				CurrentRangeCombo.Items.Add(rangeListAuto);
			}

			///----------------------#Get Voltage Range Settings#
			//###":VOLT:RANG:ELEM1 3.00E+00;ELEM2 1.00E+03"###
			string range = "";
			float  floatRange;

			msg = ":INPUT:VOLTAGE:RANGE:ELEMENT" + (elementIndex + 1).ToString() + "?";
			SetSendMonitor(msg);
			if(!QueriesData(50, msg, ref range))
			{
				return false;
			}
			SetReceiveMonitor(range);
			range = CutLeft("\n", ref range);//cut left with LF.
            /***************************************************/
			string auto_tem = "";
			//float  floatRange;
			msg = ":INPUT:VOLTAGE:AUTO:ELEMENT" + (elementIndex + 1).ToString() + "?";
			SetSendMonitor(msg);
			if(!QueriesData(50, msg, ref auto_tem))
			{
				return false;
			}
			SetReceiveMonitor(auto_tem);
			auto_tem = CutLeft("\n", ref auto_tem);//cut left with LF.
			/***************************************************/

            if(auto_tem == "1")
            {
			    VoltRangeCombo.SelectedItem = rangeListAuto;//.SetWindowText(range);
			}
			else
			{
				VoltRangeCombo.Text = Convert.ToSingle(range).ToString() + "V";
			}

			///----------------------#Get Current Range Settings#
			msg = ":INPUT:CURRENT:RANGE:ELEMENT" + (elementIndex + 1).ToString() + "?";
			SetSendMonitor(msg);
			if(!QueriesData(50, msg, ref range))
			{
				return false;
			}
			SetReceiveMonitor(range);
			range = CutLeft("\n", ref range);//cut left with LF.

            //wether have external current sensor input
			string external;
			external=""; 
			external=CutLeft(",", ref range);//cut left with ",".

            /********************************************************/
            string tem_auto = "";
			msg = ":INPUT:CURRENT:AUTO:ELEMENT" + (elementIndex + 1).ToString() + "?";
			SetSendMonitor(msg);
			if(!QueriesData(50, msg, ref tem_auto))
			{
				return false;
			}
			SetReceiveMonitor(tem_auto);
			tem_auto = CutLeft("\n", ref tem_auto);//cut left with LF.
            /********************************************************/

			if(tem_auto == "1")
			{
				CurrentRangeCombo.Text = rangeListAuto;
			}
			else
			{
				floatRange = Convert.ToSingle(range);
				if(floatRange < 1)
				{
					//when "mA/mV" unit, multiply 1k.
					range = (floatRange * 1000).ToString("n");
					if(external=="EXT" || external=="EXTERNAL")
					    CurrentRangeCombo.Text = Convert.ToSingle(range).ToString() + "mV";
					else
					    CurrentRangeCombo.Text = Convert.ToSingle(range).ToString() + "mA";
				}
				else
				{
					if(external == "EXT" || external == "EXTERNAL")
						CurrentRangeCombo.Text = Convert.ToSingle(range).ToString() + "V";
					 else
						CurrentRangeCombo.Text = Convert.ToSingle(range).ToString() + "A";
				}
			}
		return true;
		}
		#endregion

		#region SelectElement
		//********************************************
		///E1~E4 Radio Check
		//********************************************
		private void ElementOption_CheckedChanged(object sender, System.EventArgs e)
		{
			RadioButton btn = (RadioButton)sender;
			//when button was unchecked, leave off.
			if(btn.Checked == true)
			{
				int elementIndex = ElementOptions.GetIndex((RadioButton)sender);
                Currentelement=elementIndex;
				GetRanges(elementIndex);
			}
		}
		#endregion

		#region SetRanges
		//********************************************
		///Set Range
		//********************************************
		private void RangeSetCommand_Click(object sender, System.EventArgs e)
		{
			///---------------------#Get the Selected Element#
			int elementIndex = ElementOptions.GetActiveBtn(0);
			///---------------------#Send Voltage Range#
			string msg;
			msg=VoltRangeCombo.Text;
			if(msg != "AUTO")
			{
				msg = ":INPUT:VOLTAGE:RANGE:ELEMENT" + (elementIndex + 1).ToString() + " " + VoltRangeCombo.Text;
			}
			else
			{
			    msg = ":INPUT:VOLT:AUTO:ELEMENT" + (elementIndex + 1).ToString() + " " + "ON";
			}
			SetSendMonitor(msg);
			int rtn = connection.Send(msg);
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				///when setting failed, resume the original value.
				GetRanges(elementIndex);
			}

			///---------------------#Send Current Range#
			int rtn_tmp = -1;
			string Current_Sen;
            Current_Sen = CurrentRangeCombo.Text;
			rtn_tmp = Current_Sen.IndexOf("V");

			msg = CurrentRangeCombo.Text;
			if(msg != "AUTO")
			{
				if(rtn_tmp > 0)
					msg = ":INPUT:CURRENT:RANGE:ELEMENT" + (elementIndex + 1).ToString() + " "+"EXTERNAL,"+" "+ CurrentRangeCombo.Text;
				else
					msg = ":INPUT:CURRENT:RANGE:ELEMENT" + (elementIndex + 1).ToString() + " " + CurrentRangeCombo.Text;
			}
			else
			{
				msg = ":INPUT:CURRENT:AUTO:ELEMENT"+ (elementIndex + 1).ToString() + " " + "ON";
			}
			SetSendMonitor(msg);
			rtn = connection.Send(msg);
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				///when setting failed, resume the original value.
				GetRanges(elementIndex);
			}
			GetRanges(Currentelement);
		}
		#endregion

		#region Function: GetUpdateRate
		//********************************************
		/// <summary>
		/// Function: Get Update Rate
		/// </summary>
		//********************************************
		private void GetUpdateRate() 
		{
			string msg;

			///#set updateRate combo list#
			UpdateRateCombo.Items.Clear();
			UpdateRateSetCommand.Enabled = true;
			UpdateRateCombo.Enabled = true;
			foreach(string item in updateRateList)
			{
				UpdateRateCombo.Items.Add(item);
			}

			///#get updateRate value#
			string data = "";
			msg = ":RATE?";
			SetSendMonitor(msg);
			if(!QueriesData(40, msg, ref data))
			{
				return;
			}
			SetReceiveMonitor(data);
			data = CutLeft("\n", ref data);//cut left with LF.

			float floatRate = Convert.ToSingle(data);
			if(floatRate < 1)
			{
				//when "mA/mV" unit, multiply 1k.
				UpdateRateCombo.Text = (floatRate * 1000).ToString() + "ms";
			}
			else
			{
				UpdateRateCombo.Text = floatRate.ToString() + "s";
			}
		}
		#endregion

		#region SetUpdateRate
		//********************************************
		///Set UpdateRate
		//********************************************
		private void UpdateRateSetCommand_Click(object sender, System.EventArgs e)
		{
			string msg;
			//Send Command.
			msg = ":RATE " + UpdateRateCombo.Text;
			SetSendMonitor(msg);
			int rtn = connection.Send(msg);
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				//when setting failed, resume the original value.
				GetUpdateRate();
			}
			GetUpdateRate();
		}
		#endregion

		#region SendTestCommand
		//***************************
		///Test Command Send
		//***************************
		private void TestCmdSendCommand_Click(object sender, System.EventArgs e)
		{
			if(TestCmdSendText.Text == "")
			{
				return;
			}
			SetSendMonitor(TestCmdSendText.Text);
			// when not queries command, send without receive.
			if(TestCmdSendText.Text.IndexOf("?") == -1)
			{
				int rtn;
				rtn = connection.Send(TestCmdSendText.Text);
				if(rtn != 0)
				{
					DispError(connection.GetLastError());
				}
			}
			else
			{
				string data = "";
				if(!QueriesData(1000, TestCmdSendText.Text, ref data))
				{
					return;
				}
				SetReceiveMonitor(data);
				data = CutLeft("\n", ref data);
			}
		}
		#endregion

		#region GetErrorInformation
		//***************************
		///Getting Error Information
		//***************************
		private void ErrInfoGetCommand_Click(object sender, System.EventArgs e)
		{
			//----------------------#queries error from instrument#
			string msg;
			string errInfo = "";
			msg = ":STATUS:ERROR?";
			SetSendMonitor(msg);
			if(!QueriesData(200, msg, ref errInfo))
			{
				return;
			}
			errInfo = errInfo.Substring(0, errInfo.IndexOf("\n"));
			SetReceiveMonitor(errInfo);
			DispError(errInfo);
		}
		#endregion

		#region Set Header
		//***************************
		///Set Header On/Off
		//***************************
		private void HeaderCommand_Click(object sender, System.EventArgs e)
		{
			string header = "";
			string msg;
			//----------------------#queries header status#
			msg = ":COMMUNICATE:HEADER?";
			SetSendMonitor(msg);
			if(!QueriesData(30, msg, ref header))
			{
				return;
			}
			SetReceiveMonitor(header);
			header = CutLeft("\n", ref header);//cut left with LF.

			//----------------------#set header status#
			if(header == "1")
			{
				msg = ":COMMUNICATE:HEADER OFF";
			}
			else
			{
				msg = ":COMMUNICATE:HEADER ON";
			}
			SetSendMonitor(msg);
			int rtn = connection.Send(msg);
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				return;
			}
		}
		#endregion


		#region Function: ReadItemSettings
		//*************************************
		///<summary>
		///Function: ReadItemSettings
		///</summary>
		//*************************************
		private void ReadItemSettings() 
		{
			string msg;
			string buf = "";
			string fun_msg;
			int pos;
			pos = -1;

			///----------#get ASCII/BINARY#
			msg = ":NUMERIC:FORMAT?";
			SetSendMonitor(msg);
			if(!QueriesData(30, msg, ref buf))
			{
				return;
			}
			SetReceiveMonitor(buf);
			buf = CutLeft("\n", ref buf);//cut left with LF.

			///---------#set ASCII/BINARY option#
			if(buf.IndexOf("ASC") != -1)
			{
				ASCIIOption.Checked = true;
				BinaryOption.Checked = false;
			}
			else
			{
				ASCIIOption.Checked = false;
				BinaryOption.Checked = true;
			}

			///----------------------#get item count#
			msg = ":NUMERIC:NORMAL:NUMBER?";
			SetSendMonitor(msg);
			if(!QueriesData(50, msg, ref buf))
			{
				return;
			}
			SetReceiveMonitor(buf);
			buf = CutLeft("\n", ref buf);//cut left with LF.

			///----------------------#set item count combo#
			if(Convert.ToInt32(buf) >= MAX_ITEM)
			{
				ItemNumberCombo.Text = MAX_ITEM.ToString();
			}
			else
			{
				ItemNumberCombo.Text = " " + buf; 
			}

			///----------------------#get item settings#
			msg = ":NUMERIC:NORMAL?";

			SetSendMonitor(msg);
			if(!QueriesData(25 + 40*Convert.ToInt32(buf), msg, ref buf))
			{
				return;
			}
			SetReceiveMonitor(buf);
			buf = CutLeft("\n", ref buf);//cut left with LF.
			//cut off the item number(item count) portion.
			CutLeft(";", ref buf);

			///----------------------#set item settings to be display#
			string itemBuf;
			string element;
			int n;

			for(n=0; n<Convert.ToInt32(ItemNumberCombo.Text); n++)
			{
				itemBuf = CutLeft(";", ref buf);
				//#set function.#
				fun_msg = CutLeft(",", ref itemBuf);
				//************ Replace *************/
				if(fun_msg == "LAMB")
				{fun_msg = "LAMBDA";}
				else if(fun_msg == "UPP")
				{fun_msg = "UPPEAK";}
				else if(fun_msg == "UMP")
				{fun_msg = "UMPEAK";}
				else if(fun_msg == "IPP")
				{fun_msg = "IPPEAK";}
				else if(fun_msg == "IMP")
				{fun_msg = "IMPEAK";}

				//***********************************/
				FCombos[n].Text = fun_msg;
				//#set element.#     
				FindFunPos(fun_msg,ref pos);
				if(pos!=-1)
				{
					if (List[pos].ElementFlag)
					{
						ECombos[n].Enabled = true;
						element = CutLeft(",", ref itemBuf);
						if(element == "SIGM")
						{
							//display "SIGMA" as "SIGM"
							element = "SIGMA";
						}
						ECombos[n].Text = element;
					}
					else 
					{   
						ECombos[n].Text = "";
						ECombos[n].Enabled = false;
					}
				}//end if
                pos = -1;
				if(HarmonicOption >= 0)
				{
					FindFunPos(fun_msg,ref pos);
					if(pos != -1)
					{
						if(List[pos].OrderFlag)
						{   
							string temp_order;
							temp_order=CutLeft(",", ref itemBuf);
							if(temp_order=="TOTAL"||temp_order=="TOT")
							{temp_order="Total";}
							OCombos[n].Enabled = true;
							OCombos[n].BackColor = SystemColors.Window;
							OCombos[n].Text = temp_order;
						}
						else 
						{
                            OCombos[n].Text = "";
							OCombos[n].Enabled = false;
							OCombos[n].BackColor = SystemColors.Control;
						}
					}//end if
				}
				else
				{
				  OCombos[n].Text = "";
				  OCombos[n].Enabled = false;
				  OCombos[n].BackColor = SystemColors.Control;
				}
			}//end for
		}
		#endregion

		#region Function: SendItemSettings
		//********************************************
		///<summary>
		///Function: SendItemSettings
		///</summary>
		//********************************************
		private void SendItemSettings() 
		{
			string msg;
			int rtn;
			
			///----------------------#set ASCII/Float(Binary)#
			if(ASCIIOption.Checked)
			{
				msg = ":NUMERIC:FORMAT ASCII";
			}
			else
			{
				msg = ":NUMERIC:FORMAT FLOAT";
			}
			SetSendMonitor(msg);
			rtn = connection.Send(msg);
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				return;
			}

			///----------------------#set items number#
			msg = ":NUMERIC:NORMAL:NUMBER " + ItemNumberCombo.Text;
			SetSendMonitor(msg);
			rtn = connection.Send(msg);
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				return;
			}

			///----------------------#send message detail#
			msg = ":NUMERIC:NORMAL:";
			for(int n=0; n<Convert.ToInt32(ItemNumberCombo.Text); n ++)
			{
				//set function parameter into message.
				msg = msg + "ITEM" + (n + 1).ToString() + " " + FCombos[n].Text;
				//set element parameter into message.
				if (ECombos[n].Enabled==true)
				{
					msg = msg + "," + ECombos[n].Text;
				}
				//set order parameter into message, if have.
				if (OCombos[n].Enabled==true)
				OCombos[n].BackColor = SystemColors.Window;
				msg = msg + "," + OCombos[n].Text;
				//set separator into message.
				if (n != Convert.ToInt32(ItemNumberCombo.Text) - 1)
				{
					msg = msg + ";";
				}
			}
			SetSendMonitor(msg);
			rtn = connection.Send(msg);
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				return;
			}
		}
		#endregion

		#region GetItems
		//***************************
		///Read Item Settings
		//***************************
		private void GetAllItemsCommand_Click(object sender, System.EventArgs e)
		{
			ReadItemSettings();
		}
		#endregion

		#region SetItems
		//********************************************
		///Send Item Settings
		//********************************************
		private void SetAllItemsCommand_Click(object sender, System.EventArgs e)
		{
			SendItemSettings();
		}
		#endregion

		#region Function: SetItemsEnable
		//********************************************
		///<summary>
		///Function: EnableItems
		///</summary>
		///<remarks>
		///use when getting datas continously.
		///set all other button disable.
		///</remarks>
		//********************************************
		private void EnableItems(bool isEnable)
		{
			RangeSetCommand.Enabled      = isEnable;
			UpdateRateSetCommand.Enabled = isEnable;
			UpdateRateCombo.Enabled      = isEnable;
			TestCmdSendCommand.Enabled   = isEnable;
			ErrInfoGetCommand.Enabled    = isEnable;
			HeaderCommand.Enabled        = isEnable;
			AllResetCommand.Enabled      = isEnable;

			GetAllItemsCommand.Enabled   = isEnable;
			SetAllItemsCommand.Enabled   = isEnable;
			ItemNumberCombo.Enabled      = isEnable;
			ASCIIOption.Enabled          = isEnable;
			BinaryOption.Enabled         = isEnable;

			GetDataSgCommand.Enabled     = isEnable;
			GetDataURateCommand.Enabled  = isEnable;
			GetDataTimerCommand.Enabled  = isEnable;
			TimerText.Enabled            = isEnable;
			DataSaveCheckBox.Enabled     = isEnable;
			FileNameText.Enabled         = isEnable;
		}
		#endregion

		#region OnTimer
		//*********************************
		///<summary>
		///Timer Event
		///</summary>
		//*********************************
		private void Timer1_Tick(object sender, System.EventArgs e)
		{
			string eesr = "";
			string msg = ":STATUS:EESR?";
			SetSendMonitor(msg);
			if(!QueriesData(20, msg, ref eesr))
			{
				return;
			}
			SetReceiveMonitor(eesr);
			eesr = CutLeft("\n", ref eesr); //cut left with LF.

			if((Convert.ToInt64(eesr) & 0X00000001) == 1)
			{
				GetItemData();
			}
		}
		private void Timer2_Tick(object sender, System.EventArgs e)
		{
			GetItemData();
			return;    
		}
		#endregion

		#region GetDataSingle
		//********************************************
		///GetData Single
		//********************************************
		private void GetDataSgCommand_Click(object sender, System.EventArgs e)
		{
			SendItemSettings();
			GetItemData();
		}
		#endregion

		#region GetDataByUpdateRate
		//****************************************
		///GetData by UpdateRate
		//****************************************
		private void GetDataURateCommand_Click(object sender, System.EventArgs e)
		{
			//----------------------#resume all#
			if(GetDataURateCommand.Text == "STOP")
			{
				Timer1.Enabled = false;
				GetDataURateCommand.Text = "Get Data   (Update Rate)";
				EnableItems(true);
				//resume filename.
				if(DataSaveCheckBox.Checked == false)
				{
					FileNameText.Enabled = false;
				}
			}
			//----------------------#getting datas#
			else
			{
				//print titles(date + functions) once when saveBox is checked
				if(DataSaveCheckBox.Checked == true
					&& FileNameText.Text != "")//when file name is null, do not save.
				{
					//open specified file.
					FileStream csvStream;
					try
					{
						csvStream = new FileStream(FileNameText.Text, FileMode.Append);
					}
					catch(Exception)
					{
						MessageBox.Show("File can not open!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
						return;
					}
					if (!csvStream.CanWrite)
					{
						MessageBox.Show("File can not open!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
						return;
					}
					StreamWriter csvOutput = new StreamWriter (csvStream);

					//out put current date.
					System.DateTime currentTime=new System.DateTime();
					currentTime = System.DateTime.Now; 
					csvOutput.Write("Date: ");
					csvOutput.Write(currentTime.Year);
					csvOutput.Write("/");
					csvOutput.Write(currentTime.Month);
					csvOutput.Write("/");
					csvOutput.Write(currentTime.Day);
					csvOutput.Write(",");
					int n;
					for(n=0; n<Convert.ToInt32(ItemNumberCombo.Text); n++)
					{
						csvOutput.Write(FCombos[n].Text);
						csvOutput.Write(",");
					}
					csvOutput.WriteLine();
					csvOutput.Close ();
					csvStream.Close ();
				}
				SendItemSettings();
        
				//reset filter1.
				string msg = ":STATUS:FILTER1 FALL";
				SetSendMonitor(msg);
				int rtn = connection.Send(msg);
				if(rtn != 0)
				{
					DispError(connection.GetLastError());
					return;
				}
				//************************************
				msg = ":STATUS:EESR?";
			    String eesr="";
				SetSendMonitor(msg);
				if(!QueriesData(20, msg, ref eesr))
				{
					return;
				}
				SetReceiveMonitor(eesr);
                //************************************

				//reset other controls' display.
				EnableItems(false);
				GetDataURateCommand.Enabled = true;
				GetDataURateCommand.Text = "STOP";
				//set timer interval and start getting data.
				Timer1.Enabled = true;
				Timer1.Interval = 20;
			}
		}
		#endregion

		#region GetDataByTimer
		//***************************
		///GetData by Timer
		//***************************
		private void GetDataTimerCommand_Click(object sender, System.EventArgs e)
		{
			//----------------------#resume all#
			if(GetDataTimerCommand.Text == "STOP")
			{
				Timer2.Enabled = false;
				GetDataTimerCommand.Text = "Get Data (Timer)";
				EnableItems(true);
				//resume filename.
				if(DataSaveCheckBox.Checked == false)
				{
					FileNameText.Enabled = false;
				}
			}
				//----------------------#getting datas#
			else
			{
				//when timer is invalidate, show error.
				int interval;
				try
				{
					interval = int.Parse(TimerText.Text);
				}
				catch(Exception)
				{
					MessageBox.Show("Invalidate Timer", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Error);
					return;
				}

				//print titles(date + functions) once when saveBox is checked
				if(DataSaveCheckBox.Checked == true
					&& FileNameText.Text != "")//when file name is null, do not save.
				{
					//open specified file.
					FileStream csvStream;
					try
					{
						csvStream = new FileStream(FileNameText.Text, FileMode.Append);
					}
					catch(Exception)
					{
						MessageBox.Show("File can not open!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
						return;
					}
					if (!csvStream.CanWrite)
					{
						MessageBox.Show("File can not open!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
						return;
					}
					StreamWriter csvOutput = new StreamWriter (csvStream);

					//out put current date.
					System.DateTime currentTime=new System.DateTime(); 
					currentTime = System.DateTime.Now; 
					csvOutput.Write("Date: ");
					csvOutput.Write(currentTime.Year);
					csvOutput.Write("/");
					csvOutput.Write(currentTime.Month);
					csvOutput.Write("/");
					csvOutput.Write(currentTime.Day);
					csvOutput.Write(",");
					int n;
					for(n=0; n<Convert.ToInt32(ItemNumberCombo.Text); n++)
					{
						csvOutput.Write(FCombos[n].Text);
						csvOutput.Write(",");
					}
					csvOutput.WriteLine();
					csvOutput.Close ();
					csvStream.Close ();
				}

				SendItemSettings();
				//reset other controls' display.
				EnableItems(false);
				GetDataTimerCommand.Enabled = true;
				GetDataTimerCommand.Text    = "STOP";

				//set timer interval and start getting datas.
				if(interval < 20)
				{
					interval       = 20;
					TimerText.Text = interval.ToString();
				}
				Timer2.Enabled  = true;
				Timer2.Interval = interval;
			}
		}
		#endregion

		#region ResetSystem
		//***************************
		///System Reset
		//***************************
		private void AllResetCommand_Click(object sender, System.EventArgs e)
		{
			DialogResult doReset = 
				MessageBox.Show("System will be All Reset, continue?", "Confirm", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
			if(doReset == DialogResult.Cancel)
			{
				return;
			}
			else
			{
				string msg = "*RST";
				SetSendMonitor(msg);
				int rtn = connection.Send(msg);
				if(rtn != 0)
				{
					DispError(connection.GetLastError());
					return;
				}
				GetRanges(ElementOptions.GetActiveBtn(0));
				ReadItemSettings();
                GetUpdateRate();
			}
		}
		#endregion

		//#-------------------------#
		///--Display Controls--
		//#-------------------------#

		#region GetOption
		//********************************************
		///Normal Checked
		//********************************************
		private void GetOption()
		{
			int DT,G5G6;
			DT   = -1;
			G5G6 = -1;
			ComboBox tempCombo; 
			int itemIndex;
			int n;

			string opt = "";
			string msg = "*OPT?";
			SetSendMonitor(msg);
			if(!QueriesData(50, msg, ref opt))
			{
				return;
			}
			SetReceiveMonitor(opt);
			//get /G5G6 option 
			G5G6 = opt.IndexOf("G5");
			if(G5G6 == (-1))
			{
				G5G6 = opt.IndexOf("G6");
			}
			HarmonicOption = G5G6;
			//get /DT option 
			DT=opt.IndexOf("DT");

			for(itemIndex=0; itemIndex<MAX_ITEM; itemIndex++)
			{
				//----------------------#set function comboBoxes#
				tempCombo = (ComboBox)FCombos[itemIndex];
				tempCombo.Items.Clear();
                for(n=NORMAL_FUNCTION_TOP; n<=NORMAL_FUNCTION_BOTTOM; n++)
				{
					tempCombo.Items.Add(List[n].FunctionName);
				}

                //Add Harmonics funcion
				if(G5G6>=0)
				{
                    for(n=HARM_FUNCTION_TOP; n<=HARM_FUNCTION_BOTTOM; n++)
						tempCombo.Items.Add(List[n].FunctionName);
				}
                //Add Delta funcion
				if(DT>=0)
				{
                    for(n=DELTA_FUNCTION_TOP; n<=DELTA_FUNCTION_BOTTOM; n++)
						tempCombo.Items.Add(List[n].FunctionName);
				}

				tempCombo.SelectedIndex = 0;

				//----------------------#set elememt comboBoxes#
				tempCombo = (ComboBox)ECombos[itemIndex];
				tempCombo.Items.Clear();
				for(n=0; n<lastElement; n++)
				{
					tempCombo.Items.Add(eList[n]);
				}
                if(lastElement != 1)
				{
					tempCombo.Items.Add(eList[3]);
				}
				tempCombo.SelectedIndex = 0;

				//----------------------#set order comboBoxes#
				tempCombo = (ComboBox)OCombos[itemIndex];
				if(HarmonicOption >= 0)
				{
					tempCombo.Items.Clear();
					tempCombo.Enabled = true;
                    for(n=0; n<=MAX_ORDER; n++)
					{
						tempCombo.Items.Add(oList[n]);
					}
					tempCombo.SelectedIndex = 0;
				}
				else
				{
				tempCombo.Enabled = false;
				}
				//----------------------#set data editBoxes#
				DTexts[itemIndex].Text = "";
			}

		}
		#endregion

		#region SelectDataSave
		//***************************
		///DataSave Box Checked
		//***************************
		private void DataSaveCheckBox_CheckedChanged(object sender, System.EventArgs e)
		{
			if(DataSaveCheckBox.Checked)
			{
				FileNameText.Enabled = true;
			}
			else
			{
				FileNameText.Enabled = false;
			}
		}
		#endregion

		#region ChangeItemsCount
		//***************************
		///Items Count Changed
		//***************************
		private void ItemNumberCombo_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			int n;
			string Funbuf;
			int Index;
			int pos;
			pos = -1;
		    
			//----------------------#set to ReadOnly(true/false)#
			for(n=0; n<Convert.ToInt32(ItemNumberCombo.Text); n++)
			{
			FCombos[n].Enabled = true;
			FCombos[n].BackColor = SystemColors.Window;

			ComboBox tempFCombo; 
			ComboBox tempECombo;
			ComboBox tempOCombo;

			Index=n;
			tempFCombo = (ComboBox)FCombos[Index];
			tempECombo = (ComboBox)ECombos[Index];
			tempOCombo = (ComboBox)OCombos[Index];

			Funbuf = tempFCombo.Text;
	   
			FindFunPos(Funbuf,ref pos);
			if(pos != -1)
			{
				if(List[pos].ElementFlag == true)
					tempECombo.Enabled = true;
					//FCombos[n].BackColor = SystemColors.Window;
				else
				{
					tempECombo.Text = "";
				    tempECombo.Enabled = false;
				}
				tempECombo.BackColor = SystemColors.Window;

				if(HarmonicOption >= 0)
				{
					if(List[pos].OrderFlag == true)
					{
						tempOCombo.Enabled = true;
						tempOCombo.BackColor = SystemColors.Window;
					}
					else
					{
						tempOCombo.Text = "";
						tempOCombo.Enabled = false;
						tempOCombo.BackColor = SystemColors.Control;
					}
				}
				else
				{
					   tempOCombo.Text = "";
					   tempOCombo.Enabled = false;
					   tempOCombo.BackColor = SystemColors.Control;
				}
			}//end if (pos1!=-1)
			DTexts[n].Enabled = true;
			DTexts[n].BackColor = SystemColors.Window;
			}

			while(n < MAX_ITEM)
			{
				FCombos[n].Enabled = false;
				FCombos[n].BackColor = SystemColors.Control;

				ECombos[n].Enabled = false;
				ECombos[n].BackColor = SystemColors.Control;

				OCombos[n].Enabled = false;
				OCombos[n].BackColor = SystemColors.Control;

				DTexts[n].Enabled = false;
				DTexts[n].BackColor = SystemColors.Control;
				n ++;
			}
		}
		#endregion

		#region ClearSendMonitor
		//***************************
		///Clear Send Monitor
		//***************************
		private void SendClearCommand_Click(object sender, System.EventArgs e)
		{
			SendCmdMntText.Clear();
		}
		#endregion

		#region ClearReceiveMonitor
		//***************************
		///Clear Receive Monitor
		//***************************
		private void ReceiveClearCommand_Click(object sender, System.EventArgs e)
		{
			ReceiveMntText.Clear();
		}
		#endregion
        
		#region  FCombo_TextChanged
		/// <summary>
		/// 
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="e"></param>
		private void FCombo_TextChanged(object sender, System.EventArgs e)
		{
			int Index;
			string Funbuf;
			int pos;
			pos = -1;
			ComboBox tempFCombo; 
			ComboBox tempECombo;
			ComboBox tempOCombo;

			Index      = FCombos.GetIndex(sender);//need to Confirm!!
			tempFCombo = (ComboBox)FCombos[Index];
			tempECombo = (ComboBox)ECombos[Index];
			tempOCombo = (ComboBox)OCombos[Index];

			Funbuf=tempFCombo.Text;
	   
			FindFunPos(Funbuf,ref pos);
			if(pos >= 0)
			{
				if(List[pos].ElementFlag == true)
				{  
					tempECombo.Text    = "1";
					tempECombo.Enabled = true;
				}
				else
				{ 
					tempECombo.Enabled       = true;
					tempECombo.SelectedIndex = -1;
					tempECombo.Enabled       = false;
				}

				if(HarmonicOption >= 0)
				{
					if(List[pos].OrderFlag == true)
					{
						tempOCombo.Text      = "Total";
						tempOCombo.Enabled   = true;
						tempOCombo.BackColor = SystemColors.Window;
					}
					else
					{
						tempOCombo.Enabled       = true;
						tempOCombo.BackColor     = SystemColors.Window;
						tempOCombo.SelectedIndex = -1;
						tempOCombo.Enabled       = false;
						tempOCombo.BackColor     = SystemColors.Control;
					}
				}
				else
				{
					tempOCombo.Enabled       = true;
					tempOCombo.BackColor     = SystemColors.Window;
					tempOCombo.SelectedIndex = -1;
					tempOCombo.Enabled       = false;
					tempOCombo.BackColor     = SystemColors.Control;
				}
		   
			}//end if (pos1!=-1)
		}
		#endregion

		#region Set Verbose
		//***************************
		///Set Verbose On/Off
		//***************************
		private void VerboseCommand_Click(object sender, System.EventArgs e)
		{
			string verbose = "";
			string msg;
			//----------------------#queries header status#
			msg = ":COMMUNICATE:VERBOSE?";
			SetSendMonitor(msg);
			if(!QueriesData(30, msg, ref verbose))
			{
				return;
			}
			SetReceiveMonitor(verbose);
			verbose = CutLeft("\n", ref verbose);//cut left with LF.

			//----------------------#set header status#
			if(verbose == "1")
			{
				msg = ":COMMUNICATE:VERBOSE OFF";
			}
			else
			{
				msg = ":COMMUNICATE:VERBOSE ON";
			}
			SetSendMonitor(msg);
			int rtn = connection.Send(msg);
			if(rtn != 0)
			{
				DispError(connection.GetLastError());
				return;
			}
		}
        #endregion

        private void _ECombo_0_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void RangeSettingsLabel_Click(object sender, EventArgs e)
        {

        }
	}
}
