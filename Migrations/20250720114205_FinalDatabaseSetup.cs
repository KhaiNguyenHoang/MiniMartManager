using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace MiniMartManager.Migrations
{
    /// <inheritdoc />
    public partial class FinalDatabaseSetup : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "HashedPassword", "Role", "Username" },
                values: new object[] { 1, "$2a$11$4a/MW.AE6nhZHZzvyq5v.uut.kHAapikTw.i80Tpi384..JRKN.L.", "Admin", "admin" });
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
