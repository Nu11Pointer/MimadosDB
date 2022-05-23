USE MimadosDB
GO

ALTER PROCEDURE [sp_product] @Operation VARCHAR(1),
	@Id INT = NULL,
	@ProductBrandId INT = NULL,
	@ProductCategoryId INT = NULL,
	@ProductPackagingId INT = NULL,
	@ProductMeasurementUnitId INT = NULL,
	@Name VARCHAR(100) = NULL,
	@Description VARCHAR(MAX) = NULL,
	@NetContent DECIMAL(10, 2) = NULL,
	@SalePrice DECIMAL(10, 2) = NULL,
	@Stock INT = NULL,
	@Active BIT = NULL,
	@Result BIT = 0 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		INSERT INTO [Product] (
            ProductBrandId,
            ProductCategoryId,
			ProductPackagingId,
			ProductMeasurementUnitId,
			Name,
            Description,
			NetContent,
            SalePrice,
            Stock,
			Active
			)
		VALUES (
			@ProductBrandId,
            @ProductCategoryId,
			@ProductPackagingId,
			@ProductMeasurementUnitId,
			@Name,
            @Description,
			@NetContent,
            @SalePrice,
            @Stock,
			@Active
			)

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'R'
BEGIN
	BEGIN TRY
		SELECT *
		FROM [view_product]

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'U'
BEGIN
	BEGIN TRY
		UPDATE [Product]
		SET ProductBrandId = @ProductBrandId,
            ProductCategoryId = @ProductCategoryId,
			ProductPackagingId = @ProductPackagingId,
			ProductMeasurementUnitId = @ProductMeasurementUnitId,
            Name = @Name,
            Description = @Description,
            NetContent = @NetContent,
			SalePrice = @SalePrice,
            Stock = @Stock,
			Active = @Active
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'D'
BEGIN
	BEGIN TRY
		DELETE [Product]
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
