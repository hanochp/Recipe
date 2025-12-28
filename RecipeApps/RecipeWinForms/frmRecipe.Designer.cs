namespace RecipeWinForms
{
    partial class frmRecipe
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            tblMain = new TableLayoutPanel();
            txtCreatedByOutput = new TextBox();
            txtStatusOutput = new TextBox();
            txtCaloriesOutput = new TextBox();
            txtRecipeNameOutput = new TextBox();
            lblCalories = new Label();
            lblRecipeStatus = new Label();
            lblCosine = new Label();
            lblRecipeName = new Label();
            lblCreatedBy = new Label();
            txtCosineOutput = new TextBox();
            tblMain.SuspendLayout();
            SuspendLayout();
            // 
            // tblMain
            // 
            tblMain.ColumnCount = 2;
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 28.80562F));
            tblMain.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 71.19438F));
            tblMain.Controls.Add(txtCreatedByOutput, 1, 4);
            tblMain.Controls.Add(txtStatusOutput, 1, 3);
            tblMain.Controls.Add(txtCaloriesOutput, 1, 2);
            tblMain.Controls.Add(txtRecipeNameOutput, 1, 1);
            tblMain.Controls.Add(lblCalories, 0, 2);
            tblMain.Controls.Add(lblRecipeStatus, 0, 3);
            tblMain.Controls.Add(lblCosine, 0, 0);
            tblMain.Controls.Add(lblRecipeName, 0, 1);
            tblMain.Controls.Add(lblCreatedBy, 0, 4);
            tblMain.Controls.Add(txtCosineOutput, 1, 0);
            tblMain.Dock = DockStyle.Fill;
            tblMain.Location = new Point(0, 0);
            tblMain.Margin = new Padding(4);
            tblMain.Name = "tblMain";
            tblMain.RowCount = 5;
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.RowStyles.Add(new RowStyle(SizeType.Percent, 20F));
            tblMain.Size = new Size(443, 291);
            tblMain.TabIndex = 0;
            // 
            // txtCreatedByOutput
            // 
            txtCreatedByOutput.Anchor = AnchorStyles.Left;
            txtCreatedByOutput.Location = new Point(130, 247);
            txtCreatedByOutput.Name = "txtCreatedByOutput";
            txtCreatedByOutput.ReadOnly = true;
            txtCreatedByOutput.Size = new Size(310, 29);
            txtCreatedByOutput.TabIndex = 9;
            // 
            // txtStatusOutput
            // 
            txtStatusOutput.Anchor = AnchorStyles.Left;
            txtStatusOutput.Location = new Point(130, 188);
            txtStatusOutput.Name = "txtStatusOutput";
            txtStatusOutput.ReadOnly = true;
            txtStatusOutput.Size = new Size(310, 29);
            txtStatusOutput.TabIndex = 8;
            // 
            // txtCaloriesOutput
            // 
            txtCaloriesOutput.Anchor = AnchorStyles.Left;
            txtCaloriesOutput.Location = new Point(130, 130);
            txtCaloriesOutput.Name = "txtCaloriesOutput";
            txtCaloriesOutput.ReadOnly = true;
            txtCaloriesOutput.Size = new Size(310, 29);
            txtCaloriesOutput.TabIndex = 7;
            // 
            // txtRecipeNameOutput
            // 
            txtRecipeNameOutput.Anchor = AnchorStyles.Left;
            txtRecipeNameOutput.Location = new Point(130, 72);
            txtRecipeNameOutput.Name = "txtRecipeNameOutput";
            txtRecipeNameOutput.ReadOnly = true;
            txtRecipeNameOutput.Size = new Size(310, 29);
            txtRecipeNameOutput.TabIndex = 6;
            // 
            // lblCalories
            // 
            lblCalories.Anchor = AnchorStyles.Left;
            lblCalories.Location = new Point(4, 129);
            lblCalories.Margin = new Padding(4, 0, 4, 0);
            lblCalories.Name = "lblCalories";
            lblCalories.Size = new Size(119, 32);
            lblCalories.TabIndex = 2;
            lblCalories.Text = "Calories";
            // 
            // lblRecipeStatus
            // 
            lblRecipeStatus.Anchor = AnchorStyles.Left;
            lblRecipeStatus.Location = new Point(4, 187);
            lblRecipeStatus.Margin = new Padding(4, 0, 4, 0);
            lblRecipeStatus.Name = "lblRecipeStatus";
            lblRecipeStatus.Size = new Size(119, 32);
            lblRecipeStatus.TabIndex = 3;
            lblRecipeStatus.Text = "Status";
            // 
            // lblCosine
            // 
            lblCosine.Anchor = AnchorStyles.Left;
            lblCosine.Location = new Point(4, 13);
            lblCosine.Margin = new Padding(4, 0, 4, 0);
            lblCosine.Name = "lblCosine";
            lblCosine.Size = new Size(119, 32);
            lblCosine.TabIndex = 1;
            lblCosine.Text = "Cosine";
            // 
            // lblRecipeName
            // 
            lblRecipeName.Anchor = AnchorStyles.Left;
            lblRecipeName.Location = new Point(4, 71);
            lblRecipeName.Margin = new Padding(4, 0, 4, 0);
            lblRecipeName.Name = "lblRecipeName";
            lblRecipeName.Size = new Size(119, 32);
            lblRecipeName.TabIndex = 0;
            lblRecipeName.Text = "Recipe Name";
            // 
            // lblCreatedBy
            // 
            lblCreatedBy.Anchor = AnchorStyles.Left;
            lblCreatedBy.Location = new Point(4, 245);
            lblCreatedBy.Margin = new Padding(4, 0, 4, 0);
            lblCreatedBy.Name = "lblCreatedBy";
            lblCreatedBy.Size = new Size(119, 32);
            lblCreatedBy.TabIndex = 4;
            lblCreatedBy.Text = "Created By";
            // 
            // txtCosineOutput
            // 
            txtCosineOutput.Anchor = AnchorStyles.Left;
            txtCosineOutput.Location = new Point(130, 14);
            txtCosineOutput.Name = "txtCosineOutput";
            txtCosineOutput.ReadOnly = true;
            txtCosineOutput.Size = new Size(310, 29);
            txtCosineOutput.TabIndex = 5;
            // 
            // frmRecipe
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(443, 291);
            Controls.Add(tblMain);
            Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            Margin = new Padding(4);
            Name = "frmRecipe";
            Text = "frmRecipe";
            tblMain.ResumeLayout(false);
            tblMain.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TableLayoutPanel tblMain;
        private Label lblCalories;
        private Label lblRecipeStatus;
        private Label lblCosine;
        private Label lblRecipeName;
        private Label lblCreatedBy;
        private TextBox txtCreatedByOutput;
        private TextBox txtStatusOutput;
        private TextBox txtCaloriesOutput;
        private TextBox txtRecipeNameOutput;
        private TextBox txtCosineOutput;
    }
}