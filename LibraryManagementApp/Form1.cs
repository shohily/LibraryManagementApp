using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LibraryManagementApp
{
    public partial class LibraryManagement : Form
    {
        public LibraryManagement()
        {
            InitializeComponent();
        }


         string connectionstring = @"server =USER;database=DB_LibraryBookManagement;integrated security=true";

        private void save_Click(object sender, EventArgs e)
        {
            string bookId = bookIdTextBox.Text;
            string bookName = bookNameTextBox.Text;
            string authorName = authorNameTextBox.Text;
            string edition = editionTextBox.Text;
            string genre = genreTextBox.Text;

            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();

            string query = string.Format(@"insert into LibraryManagement_Table(BookId,BookName,AuthorName,Edition,Genre)
                  values('{0}','{1}','{2}','{3}','{4}')", bookId, bookName, authorName, edition, genre);
            SqlCommand aCommand = new SqlCommand(query, aConnection);

            MessageBox.Show("Data has been inserted");
            bookIdTextBox.Text = "";
            bookNameTextBox.Text = "";
            authorNameTextBox.Text = "";
            editionTextBox.Text = "";
            genreTextBox.Text = "";

            aCommand.ExecuteNonQuery();

            aConnection.Close();

        }

        private void show_Click(object sender, EventArgs e)
        {
            dataGridView.Rows.Clear();
            dataGridView.Refresh();
            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();

            string tableSql = "SELECT * FROM LibraryManagement_Table";
            SqlCommand selectAllTableSqlCommand = new SqlCommand(tableSql, aConnection);

            SqlDataReader tableReader = selectAllTableSqlCommand.ExecuteReader();

            if (tableReader != null)
                while (tableReader.Read())
                {
                    dataGridView.Rows.Add(tableReader[0].ToString(), tableReader[1].ToString(),
                                                 tableReader[2].ToString(), tableReader[3].ToString(),
                                                 tableReader[4].ToString());
                }
            tableReader.Close();
            aConnection.Close();
 
        }
    }
}
