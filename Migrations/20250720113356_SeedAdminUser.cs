using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace MiniMartManager.Migrations
{
    /// <inheritdoc />
    public partial class SeedAdminUser : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "HashedPassword", "Role", "Username" },
                values: new object[] { 1, "$2a$11$zJouAcVflDvqbyCHOoQl2OY8qLZlXe5blgiH8W2cvlQpIiOPVyBBu", "Admin", "admin" });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 1);
        }
    }
}
