-- Drop User CRUD PROCEDURES
/******************************************************************************
**  Table Name: contract
**  Desc: Table for sp_edit_contract
** 
**  Called by: ssi
**
**  Author: Gilmer Daniel Fernandez Pinto
**
**  Date: 05/27/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:     Author:                            Description:
** --------   --------        ---------------------------------------------------
** 05/27/2018 Gilmer Daniel Fernandez Pinto   Initial version
*******************************************************************************/

CREATE PROCEDURE [dbo].[sp_edit_contract](
    @contract_id INT
   ,@contract_code VARCHAR(50)
   ,@contract_city VARCHAR(100)
   ,@contract_type VARCHAR(100)
   ,@contract_date DATETIME
   ,@contract_salary FLOAT
   ,@contract_description VARCHAR(100)
)
AS 
SET XACT_ABORT ON;
SET NOCOUNT ON;
BEGIN

    UPDATE [dbo].[contracts]
    SET contract_code       = @contract_code
        ,contract_city      = @contract_city
        ,contract_type      = @contract_type
        ,contract_date      = @contract_date
        ,contract_salary    = @contract_salary
        ,contract_description = @contract_description
        ,updated_on    =  GETDATE()
    WHERE contract_id = @contract_id;

    SELECT *
    FROM [dbo].[contracts]
    WHERE contract_id = @contract_id;

END