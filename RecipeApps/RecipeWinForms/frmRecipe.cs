using CPUFramework;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace RecipeWinForms
{
    public partial class frmRecipe : Form
    {
        public frmRecipe()
        {
            InitializeComponent();
        }

        public void ShowForm(int recipeid)
        {
            string sql = "Select c.CosineId, c.CosineName, r.RecipeId, r.RecipeName, r.CaloriesInRecipe, r.RecipeStatus, r.CreatedBy from Recipe r join Cosine c on c.CosineId = r.CosineId where r.RecipeId = " + recipeid.ToString();
            DataTable dt = SQLUtility.GetDataTable(sql);

            txtCosineOutput.DataBindings.Add("Text", dt, "CosineName");
            txtRecipeNameOutput.DataBindings.Add("Text", dt, "RecipeName");
            txtCaloriesOutput.DataBindings.Add("Text", dt, "CaloriesInRecipe");
            txtStatusOutput.DataBindings.Add("Text", dt, "RecipeStatus");
            txtCreatedByOutput.DataBindings.Add("Text", dt, "CreatedBy");
            this.Show();
        }
    }
}
