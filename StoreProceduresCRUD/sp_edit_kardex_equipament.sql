-- Update Kardex_equipaments CRUD PROCEDURES
/******************************************************************************
**  Table Name: Kardex_equipaments
**  Desc: Table for sp_edit_kardex_equipament
** 
**  Called by: ssi
**
**  Author: Ivan Misericordia Eulate
**
**  Date: 05/27/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 05/27/2018 Ivan Misericordia Eulate   Initial version
*******************************************************************************/

CREATE PROCEDURE [dbo].[sp_edit_kardex_equipament](
			    @kardex_id INT
			   ,@balance_kardex INT
			   ,@entry_kardex INT
			   ,@outlay_kardex INT
			   ,@date_kardex DATETIME
)
AS 
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN

    UPDATE [dbo].[kardex_equipaments]
    SET		balance_kardex = @balance_kardex
		   ,entry_kardex = @entry_kardex
		   ,outlay_kardex = @outlay_kardex
		   ,date_kardex = @date_kardex
	       ,created_on = GETDATE()
    WHERE equipament_kardex_id = @kardex_id;

    SELECT *
    FROM [dbo].[kardex_equipaments]
    WHERE equipament_kardex_id = @kardex_id;

END