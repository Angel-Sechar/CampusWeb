-- FUNCTION TO CHECK EXTENDED PROPERTIES

	SELECT	objtype, objname, name, value  
	FROM	fn_listextendedproperty (NULL, 'schema', 'dbo', 'table', 'AUTH_USER', 'column', default);

	/* FOUND IT IN INTERNET*/
	SELECT 
		'DATADICTIONARY' AS [REPORT],
		@@SERVERNAME AS [ServerName],
		DB_NAME() AS [DatabaseName],
		t.name AS [TableName], 
		schema_name(t.schema_id) AS [SchemaName], 
		c.name AS [ColumnName], 
		st.name AS [DataType], 
		c.max_length AS [MaxLength], 
		CASE 
			WHEN c.is_nullable = 0 THEN 'NO'
			ELSE 'YES'
		END AS [IsNull],
		CASE 
			WHEN c.is_identity = 0 THEN 'NO'
			ELSE 'YES'
		END AS [IsIdentity], 
		isnull(ep.value, 'MISSING DESCRIPTION') AS [Description]
	FROM [sys].[tables] t
	INNER JOIN [sys].[columns] c
		ON t.object_id= c.object_id 
	INNER JOIN [sys].[systypes] st 
		ON c.system_type_id= st.xusertype 
	INNER JOIN [sys].[objects] o 
		ON t.object_id= o.object_id 
	LEFT JOIN [sys].[extended_properties] ep 
		ON o.object_id = ep.major_id 
		AND c.column_Id = ep.minor_id
	WHERE t.name = 'AUTH_USER' 
	ORDER BY 
		t.name,
		c.column_Id
