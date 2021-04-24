{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.CreateSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new schema set and registers the schema definition. Returns an error if the schema set already exists without actually registering the version.
--
--
-- When the schema set is created, a version checkpoint will be set to the first version. Compatibility mode "DISABLED" restricts any additional schema versions from being added after the first schema version. For all other compatibility modes, validation of compatibility settings will be applied only from the second version onwards when the @RegisterSchemaVersion@ API is used.
--
-- When this API is called without a @RegistryId@ , this will create an entry for a "default-registry" in the registry database tables, if it is not already present.
module Network.AWS.Glue.CreateSchema
  ( -- * Creating a Request
    createSchema,
    CreateSchema,

    -- * Request Lenses
    csSchemaDefinition,
    csRegistryId,
    csTags,
    csDescription,
    csCompatibility,
    csSchemaName,
    csDataFormat,

    -- * Destructuring the Response
    createSchemaResponse,
    CreateSchemaResponse,

    -- * Response Lenses
    csrrsSchemaARN,
    csrrsNextSchemaVersion,
    csrrsSchemaVersionId,
    csrrsSchemaCheckpoint,
    csrrsDataFormat,
    csrrsRegistryName,
    csrrsSchemaVersionStatus,
    csrrsTags,
    csrrsSchemaName,
    csrrsDescription,
    csrrsCompatibility,
    csrrsRegistryARN,
    csrrsLatestSchemaVersion,
    csrrsSchemaStatus,
    csrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSchema' smart constructor.
data CreateSchema = CreateSchema'
  { _csSchemaDefinition ::
      !(Maybe Text),
    _csRegistryId :: !(Maybe RegistryId),
    _csTags :: !(Maybe (Map Text Text)),
    _csDescription :: !(Maybe Text),
    _csCompatibility :: !(Maybe Compatibility),
    _csSchemaName :: !Text,
    _csDataFormat :: !DataFormat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csSchemaDefinition' - The schema definition using the @DataFormat@ setting for @SchemaName@ .
--
-- * 'csRegistryId' - This is a wrapper shape to contain the registry identity fields. If this is not provided, the default registry will be used. The ARN format for the same will be: @arn:aws:glue:us-east-2:<customer id>:registry/default-registry:random-5-letter-id@ .
--
-- * 'csTags' - AWS tags that contain a key value pair and may be searched by console, command line, or API. If specified, follows the AWS tags-on-create pattern.
--
-- * 'csDescription' - An optional description of the schema. If description is not provided, there will not be any automatic default value for this.
--
-- * 'csCompatibility' - The compatibility mode of the schema. The possible values are:     * /NONE/ : No compatibility mode applies. You can use this choice in development scenarios or if you do not know the compatibility mode that you want to apply to schemas. Any new version added will be accepted without undergoing a compatibility check.     * /DISABLED/ : This compatibility choice prevents versioning for a particular schema. You can use this choice to prevent future versioning of a schema.     * /BACKWARD/ : This compatibility choice is recommended as it allows data receivers to read both the current and one previous schema version. This means that for instance, a new schema version cannot drop data fields or change the type of these fields, so they can't be read by readers using the previous version.     * /BACKWARD_ALL/ : This compatibility choice allows data receivers to read both the current and all previous schema versions. You can use this choice when you need to delete fields or add optional fields, and check compatibility against all previous schema versions.      * /FORWARD/ : This compatibility choice allows data receivers to read both the current and one next schema version, but not necessarily later versions. You can use this choice when you need to add fields or delete optional fields, but only check compatibility against the last schema version.     * /FORWARD_ALL/ : This compatibility choice allows data receivers to read written by producers of any new registered schema. You can use this choice when you need to add fields or delete optional fields, and check compatibility against all previous schema versions.     * /FULL/ : This compatibility choice allows data receivers to read data written by producers using the previous or next version of the schema, but not necessarily earlier or later versions. You can use this choice when you need to add or remove optional fields, but only check compatibility against the last schema version.     * /FULL_ALL/ : This compatibility choice allows data receivers to read data written by producers using all previous schema versions. You can use this choice when you need to add or remove optional fields, and check compatibility against all previous schema versions.
--
-- * 'csSchemaName' - Name of the schema to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark. No whitespace.
--
-- * 'csDataFormat' - The data format of the schema definition. Currently only @AVRO@ is supported.
createSchema ::
  -- | 'csSchemaName'
  Text ->
  -- | 'csDataFormat'
  DataFormat ->
  CreateSchema
createSchema pSchemaName_ pDataFormat_ =
  CreateSchema'
    { _csSchemaDefinition = Nothing,
      _csRegistryId = Nothing,
      _csTags = Nothing,
      _csDescription = Nothing,
      _csCompatibility = Nothing,
      _csSchemaName = pSchemaName_,
      _csDataFormat = pDataFormat_
    }

-- | The schema definition using the @DataFormat@ setting for @SchemaName@ .
csSchemaDefinition :: Lens' CreateSchema (Maybe Text)
csSchemaDefinition = lens _csSchemaDefinition (\s a -> s {_csSchemaDefinition = a})

-- | This is a wrapper shape to contain the registry identity fields. If this is not provided, the default registry will be used. The ARN format for the same will be: @arn:aws:glue:us-east-2:<customer id>:registry/default-registry:random-5-letter-id@ .
csRegistryId :: Lens' CreateSchema (Maybe RegistryId)
csRegistryId = lens _csRegistryId (\s a -> s {_csRegistryId = a})

-- | AWS tags that contain a key value pair and may be searched by console, command line, or API. If specified, follows the AWS tags-on-create pattern.
csTags :: Lens' CreateSchema (HashMap Text Text)
csTags = lens _csTags (\s a -> s {_csTags = a}) . _Default . _Map

-- | An optional description of the schema. If description is not provided, there will not be any automatic default value for this.
csDescription :: Lens' CreateSchema (Maybe Text)
csDescription = lens _csDescription (\s a -> s {_csDescription = a})

-- | The compatibility mode of the schema. The possible values are:     * /NONE/ : No compatibility mode applies. You can use this choice in development scenarios or if you do not know the compatibility mode that you want to apply to schemas. Any new version added will be accepted without undergoing a compatibility check.     * /DISABLED/ : This compatibility choice prevents versioning for a particular schema. You can use this choice to prevent future versioning of a schema.     * /BACKWARD/ : This compatibility choice is recommended as it allows data receivers to read both the current and one previous schema version. This means that for instance, a new schema version cannot drop data fields or change the type of these fields, so they can't be read by readers using the previous version.     * /BACKWARD_ALL/ : This compatibility choice allows data receivers to read both the current and all previous schema versions. You can use this choice when you need to delete fields or add optional fields, and check compatibility against all previous schema versions.      * /FORWARD/ : This compatibility choice allows data receivers to read both the current and one next schema version, but not necessarily later versions. You can use this choice when you need to add fields or delete optional fields, but only check compatibility against the last schema version.     * /FORWARD_ALL/ : This compatibility choice allows data receivers to read written by producers of any new registered schema. You can use this choice when you need to add fields or delete optional fields, and check compatibility against all previous schema versions.     * /FULL/ : This compatibility choice allows data receivers to read data written by producers using the previous or next version of the schema, but not necessarily earlier or later versions. You can use this choice when you need to add or remove optional fields, but only check compatibility against the last schema version.     * /FULL_ALL/ : This compatibility choice allows data receivers to read data written by producers using all previous schema versions. You can use this choice when you need to add or remove optional fields, and check compatibility against all previous schema versions.
csCompatibility :: Lens' CreateSchema (Maybe Compatibility)
csCompatibility = lens _csCompatibility (\s a -> s {_csCompatibility = a})

-- | Name of the schema to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark. No whitespace.
csSchemaName :: Lens' CreateSchema Text
csSchemaName = lens _csSchemaName (\s a -> s {_csSchemaName = a})

-- | The data format of the schema definition. Currently only @AVRO@ is supported.
csDataFormat :: Lens' CreateSchema DataFormat
csDataFormat = lens _csDataFormat (\s a -> s {_csDataFormat = a})

instance AWSRequest CreateSchema where
  type Rs CreateSchema = CreateSchemaResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          CreateSchemaResponse'
            <$> (x .?> "SchemaArn")
            <*> (x .?> "NextSchemaVersion")
            <*> (x .?> "SchemaVersionId")
            <*> (x .?> "SchemaCheckpoint")
            <*> (x .?> "DataFormat")
            <*> (x .?> "RegistryName")
            <*> (x .?> "SchemaVersionStatus")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "SchemaName")
            <*> (x .?> "Description")
            <*> (x .?> "Compatibility")
            <*> (x .?> "RegistryArn")
            <*> (x .?> "LatestSchemaVersion")
            <*> (x .?> "SchemaStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSchema

instance NFData CreateSchema

instance ToHeaders CreateSchema where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.CreateSchema" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSchema where
  toJSON CreateSchema' {..} =
    object
      ( catMaybes
          [ ("SchemaDefinition" .=) <$> _csSchemaDefinition,
            ("RegistryId" .=) <$> _csRegistryId,
            ("Tags" .=) <$> _csTags,
            ("Description" .=) <$> _csDescription,
            ("Compatibility" .=) <$> _csCompatibility,
            Just ("SchemaName" .= _csSchemaName),
            Just ("DataFormat" .= _csDataFormat)
          ]
      )

instance ToPath CreateSchema where
  toPath = const "/"

instance ToQuery CreateSchema where
  toQuery = const mempty

-- | /See:/ 'createSchemaResponse' smart constructor.
data CreateSchemaResponse = CreateSchemaResponse'
  { _csrrsSchemaARN ::
      !(Maybe Text),
    _csrrsNextSchemaVersion ::
      !(Maybe Nat),
    _csrrsSchemaVersionId ::
      !(Maybe Text),
    _csrrsSchemaCheckpoint ::
      !(Maybe Nat),
    _csrrsDataFormat ::
      !(Maybe DataFormat),
    _csrrsRegistryName ::
      !(Maybe Text),
    _csrrsSchemaVersionStatus ::
      !(Maybe SchemaVersionStatus),
    _csrrsTags ::
      !(Maybe (Map Text Text)),
    _csrrsSchemaName ::
      !(Maybe Text),
    _csrrsDescription ::
      !(Maybe Text),
    _csrrsCompatibility ::
      !(Maybe Compatibility),
    _csrrsRegistryARN ::
      !(Maybe Text),
    _csrrsLatestSchemaVersion ::
      !(Maybe Nat),
    _csrrsSchemaStatus ::
      !(Maybe SchemaStatus),
    _csrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSchemaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsSchemaARN' - The Amazon Resource Name (ARN) of the schema.
--
-- * 'csrrsNextSchemaVersion' - The next version of the schema associated with the returned schema definition.
--
-- * 'csrrsSchemaVersionId' - The unique identifier of the first schema version.
--
-- * 'csrrsSchemaCheckpoint' - The version number of the checkpoint (the last time the compatibility mode was changed).
--
-- * 'csrrsDataFormat' - The data format of the schema definition. Currently only @AVRO@ is supported.
--
-- * 'csrrsRegistryName' - The name of the registry.
--
-- * 'csrrsSchemaVersionStatus' - The status of the first schema version created.
--
-- * 'csrrsTags' - The tags for the schema.
--
-- * 'csrrsSchemaName' - The name of the schema.
--
-- * 'csrrsDescription' - A description of the schema if specified when created.
--
-- * 'csrrsCompatibility' - The schema compatibility mode.
--
-- * 'csrrsRegistryARN' - The Amazon Resource Name (ARN) of the registry.
--
-- * 'csrrsLatestSchemaVersion' - The latest version of the schema associated with the returned schema definition.
--
-- * 'csrrsSchemaStatus' - The status of the schema.
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createSchemaResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateSchemaResponse
createSchemaResponse pResponseStatus_ =
  CreateSchemaResponse'
    { _csrrsSchemaARN = Nothing,
      _csrrsNextSchemaVersion = Nothing,
      _csrrsSchemaVersionId = Nothing,
      _csrrsSchemaCheckpoint = Nothing,
      _csrrsDataFormat = Nothing,
      _csrrsRegistryName = Nothing,
      _csrrsSchemaVersionStatus = Nothing,
      _csrrsTags = Nothing,
      _csrrsSchemaName = Nothing,
      _csrrsDescription = Nothing,
      _csrrsCompatibility = Nothing,
      _csrrsRegistryARN = Nothing,
      _csrrsLatestSchemaVersion = Nothing,
      _csrrsSchemaStatus = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the schema.
csrrsSchemaARN :: Lens' CreateSchemaResponse (Maybe Text)
csrrsSchemaARN = lens _csrrsSchemaARN (\s a -> s {_csrrsSchemaARN = a})

-- | The next version of the schema associated with the returned schema definition.
csrrsNextSchemaVersion :: Lens' CreateSchemaResponse (Maybe Natural)
csrrsNextSchemaVersion = lens _csrrsNextSchemaVersion (\s a -> s {_csrrsNextSchemaVersion = a}) . mapping _Nat

-- | The unique identifier of the first schema version.
csrrsSchemaVersionId :: Lens' CreateSchemaResponse (Maybe Text)
csrrsSchemaVersionId = lens _csrrsSchemaVersionId (\s a -> s {_csrrsSchemaVersionId = a})

-- | The version number of the checkpoint (the last time the compatibility mode was changed).
csrrsSchemaCheckpoint :: Lens' CreateSchemaResponse (Maybe Natural)
csrrsSchemaCheckpoint = lens _csrrsSchemaCheckpoint (\s a -> s {_csrrsSchemaCheckpoint = a}) . mapping _Nat

-- | The data format of the schema definition. Currently only @AVRO@ is supported.
csrrsDataFormat :: Lens' CreateSchemaResponse (Maybe DataFormat)
csrrsDataFormat = lens _csrrsDataFormat (\s a -> s {_csrrsDataFormat = a})

-- | The name of the registry.
csrrsRegistryName :: Lens' CreateSchemaResponse (Maybe Text)
csrrsRegistryName = lens _csrrsRegistryName (\s a -> s {_csrrsRegistryName = a})

-- | The status of the first schema version created.
csrrsSchemaVersionStatus :: Lens' CreateSchemaResponse (Maybe SchemaVersionStatus)
csrrsSchemaVersionStatus = lens _csrrsSchemaVersionStatus (\s a -> s {_csrrsSchemaVersionStatus = a})

-- | The tags for the schema.
csrrsTags :: Lens' CreateSchemaResponse (HashMap Text Text)
csrrsTags = lens _csrrsTags (\s a -> s {_csrrsTags = a}) . _Default . _Map

-- | The name of the schema.
csrrsSchemaName :: Lens' CreateSchemaResponse (Maybe Text)
csrrsSchemaName = lens _csrrsSchemaName (\s a -> s {_csrrsSchemaName = a})

-- | A description of the schema if specified when created.
csrrsDescription :: Lens' CreateSchemaResponse (Maybe Text)
csrrsDescription = lens _csrrsDescription (\s a -> s {_csrrsDescription = a})

-- | The schema compatibility mode.
csrrsCompatibility :: Lens' CreateSchemaResponse (Maybe Compatibility)
csrrsCompatibility = lens _csrrsCompatibility (\s a -> s {_csrrsCompatibility = a})

-- | The Amazon Resource Name (ARN) of the registry.
csrrsRegistryARN :: Lens' CreateSchemaResponse (Maybe Text)
csrrsRegistryARN = lens _csrrsRegistryARN (\s a -> s {_csrrsRegistryARN = a})

-- | The latest version of the schema associated with the returned schema definition.
csrrsLatestSchemaVersion :: Lens' CreateSchemaResponse (Maybe Natural)
csrrsLatestSchemaVersion = lens _csrrsLatestSchemaVersion (\s a -> s {_csrrsLatestSchemaVersion = a}) . mapping _Nat

-- | The status of the schema.
csrrsSchemaStatus :: Lens' CreateSchemaResponse (Maybe SchemaStatus)
csrrsSchemaStatus = lens _csrrsSchemaStatus (\s a -> s {_csrrsSchemaStatus = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateSchemaResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateSchemaResponse
