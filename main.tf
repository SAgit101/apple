resource "azurerm_storage_blob" "delete_1stfile" {
  name                   = "1stfile.txt"
  storage_account_name   = "YOUR_STORAGE_ACCOUNT_NAME"
  storage_container_name = "1stblob"
  type                   = "Block"

  lifecycle {
    prevent_destroy = false
  }
}
