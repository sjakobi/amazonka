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
-- Module      : Network.AWS.Glue.RemoveSchemaVersionMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a key value pair from the schema version metadata for the specified schema version ID.
module Network.AWS.Glue.RemoveSchemaVersionMetadata
  ( -- * Creating a Request
    removeSchemaVersionMetadata,
    RemoveSchemaVersionMetadata,

    -- * Request Lenses
    rsvmSchemaVersionId,
    rsvmSchemaVersionNumber,
    rsvmSchemaId,
    rsvmMetadataKeyValue,

    -- * Destructuring the Response
    removeSchemaVersionMetadataResponse,
    RemoveSchemaVersionMetadataResponse,

    -- * Response Lenses
    rsvmrrsSchemaARN,
    rsvmrrsLatestVersion,
    rsvmrrsSchemaVersionId,
    rsvmrrsMetadataKey,
    rsvmrrsRegistryName,
    rsvmrrsVersionNumber,
    rsvmrrsSchemaName,
    rsvmrrsMetadataValue,
    rsvmrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'removeSchemaVersionMetadata' smart constructor.
data RemoveSchemaVersionMetadata = RemoveSchemaVersionMetadata'
  { _rsvmSchemaVersionId ::
      !(Maybe Text),
    _rsvmSchemaVersionNumber ::
      !( Maybe
           SchemaVersionNumber
       ),
    _rsvmSchemaId ::
      !( Maybe
           SchemaId
       ),
    _rsvmMetadataKeyValue ::
      !MetadataKeyValuePair
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RemoveSchemaVersionMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsvmSchemaVersionId' - The unique version ID of the schema version.
--
-- * 'rsvmSchemaVersionNumber' - The version number of the schema.
--
-- * 'rsvmSchemaId' - A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).
--
-- * 'rsvmMetadataKeyValue' - The value of the metadata key.
removeSchemaVersionMetadata ::
  -- | 'rsvmMetadataKeyValue'
  MetadataKeyValuePair ->
  RemoveSchemaVersionMetadata
removeSchemaVersionMetadata pMetadataKeyValue_ =
  RemoveSchemaVersionMetadata'
    { _rsvmSchemaVersionId =
        Nothing,
      _rsvmSchemaVersionNumber = Nothing,
      _rsvmSchemaId = Nothing,
      _rsvmMetadataKeyValue = pMetadataKeyValue_
    }

-- | The unique version ID of the schema version.
rsvmSchemaVersionId :: Lens' RemoveSchemaVersionMetadata (Maybe Text)
rsvmSchemaVersionId = lens _rsvmSchemaVersionId (\s a -> s {_rsvmSchemaVersionId = a})

-- | The version number of the schema.
rsvmSchemaVersionNumber :: Lens' RemoveSchemaVersionMetadata (Maybe SchemaVersionNumber)
rsvmSchemaVersionNumber = lens _rsvmSchemaVersionNumber (\s a -> s {_rsvmSchemaVersionNumber = a})

-- | A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).
rsvmSchemaId :: Lens' RemoveSchemaVersionMetadata (Maybe SchemaId)
rsvmSchemaId = lens _rsvmSchemaId (\s a -> s {_rsvmSchemaId = a})

-- | The value of the metadata key.
rsvmMetadataKeyValue :: Lens' RemoveSchemaVersionMetadata MetadataKeyValuePair
rsvmMetadataKeyValue = lens _rsvmMetadataKeyValue (\s a -> s {_rsvmMetadataKeyValue = a})

instance AWSRequest RemoveSchemaVersionMetadata where
  type
    Rs RemoveSchemaVersionMetadata =
      RemoveSchemaVersionMetadataResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          RemoveSchemaVersionMetadataResponse'
            <$> (x .?> "SchemaArn")
            <*> (x .?> "LatestVersion")
            <*> (x .?> "SchemaVersionId")
            <*> (x .?> "MetadataKey")
            <*> (x .?> "RegistryName")
            <*> (x .?> "VersionNumber")
            <*> (x .?> "SchemaName")
            <*> (x .?> "MetadataValue")
            <*> (pure (fromEnum s))
      )

instance Hashable RemoveSchemaVersionMetadata

instance NFData RemoveSchemaVersionMetadata

instance ToHeaders RemoveSchemaVersionMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSGlue.RemoveSchemaVersionMetadata" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RemoveSchemaVersionMetadata where
  toJSON RemoveSchemaVersionMetadata' {..} =
    object
      ( catMaybes
          [ ("SchemaVersionId" .=) <$> _rsvmSchemaVersionId,
            ("SchemaVersionNumber" .=)
              <$> _rsvmSchemaVersionNumber,
            ("SchemaId" .=) <$> _rsvmSchemaId,
            Just ("MetadataKeyValue" .= _rsvmMetadataKeyValue)
          ]
      )

instance ToPath RemoveSchemaVersionMetadata where
  toPath = const "/"

instance ToQuery RemoveSchemaVersionMetadata where
  toQuery = const mempty

-- | /See:/ 'removeSchemaVersionMetadataResponse' smart constructor.
data RemoveSchemaVersionMetadataResponse = RemoveSchemaVersionMetadataResponse'
  { _rsvmrrsSchemaARN ::
      !( Maybe
           Text
       ),
    _rsvmrrsLatestVersion ::
      !( Maybe
           Bool
       ),
    _rsvmrrsSchemaVersionId ::
      !( Maybe
           Text
       ),
    _rsvmrrsMetadataKey ::
      !( Maybe
           Text
       ),
    _rsvmrrsRegistryName ::
      !( Maybe
           Text
       ),
    _rsvmrrsVersionNumber ::
      !( Maybe
           Nat
       ),
    _rsvmrrsSchemaName ::
      !( Maybe
           Text
       ),
    _rsvmrrsMetadataValue ::
      !( Maybe
           Text
       ),
    _rsvmrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RemoveSchemaVersionMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsvmrrsSchemaARN' - The Amazon Resource Name (ARN) of the schema.
--
-- * 'rsvmrrsLatestVersion' - The latest version of the schema.
--
-- * 'rsvmrrsSchemaVersionId' - The version ID for the schema version.
--
-- * 'rsvmrrsMetadataKey' - The metadata key.
--
-- * 'rsvmrrsRegistryName' - The name of the registry.
--
-- * 'rsvmrrsVersionNumber' - The version number of the schema.
--
-- * 'rsvmrrsSchemaName' - The name of the schema.
--
-- * 'rsvmrrsMetadataValue' - The value of the metadata key.
--
-- * 'rsvmrrsResponseStatus' - -- | The response status code.
removeSchemaVersionMetadataResponse ::
  -- | 'rsvmrrsResponseStatus'
  Int ->
  RemoveSchemaVersionMetadataResponse
removeSchemaVersionMetadataResponse pResponseStatus_ =
  RemoveSchemaVersionMetadataResponse'
    { _rsvmrrsSchemaARN =
        Nothing,
      _rsvmrrsLatestVersion = Nothing,
      _rsvmrrsSchemaVersionId = Nothing,
      _rsvmrrsMetadataKey = Nothing,
      _rsvmrrsRegistryName = Nothing,
      _rsvmrrsVersionNumber = Nothing,
      _rsvmrrsSchemaName = Nothing,
      _rsvmrrsMetadataValue = Nothing,
      _rsvmrrsResponseStatus =
        pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the schema.
rsvmrrsSchemaARN :: Lens' RemoveSchemaVersionMetadataResponse (Maybe Text)
rsvmrrsSchemaARN = lens _rsvmrrsSchemaARN (\s a -> s {_rsvmrrsSchemaARN = a})

-- | The latest version of the schema.
rsvmrrsLatestVersion :: Lens' RemoveSchemaVersionMetadataResponse (Maybe Bool)
rsvmrrsLatestVersion = lens _rsvmrrsLatestVersion (\s a -> s {_rsvmrrsLatestVersion = a})

-- | The version ID for the schema version.
rsvmrrsSchemaVersionId :: Lens' RemoveSchemaVersionMetadataResponse (Maybe Text)
rsvmrrsSchemaVersionId = lens _rsvmrrsSchemaVersionId (\s a -> s {_rsvmrrsSchemaVersionId = a})

-- | The metadata key.
rsvmrrsMetadataKey :: Lens' RemoveSchemaVersionMetadataResponse (Maybe Text)
rsvmrrsMetadataKey = lens _rsvmrrsMetadataKey (\s a -> s {_rsvmrrsMetadataKey = a})

-- | The name of the registry.
rsvmrrsRegistryName :: Lens' RemoveSchemaVersionMetadataResponse (Maybe Text)
rsvmrrsRegistryName = lens _rsvmrrsRegistryName (\s a -> s {_rsvmrrsRegistryName = a})

-- | The version number of the schema.
rsvmrrsVersionNumber :: Lens' RemoveSchemaVersionMetadataResponse (Maybe Natural)
rsvmrrsVersionNumber = lens _rsvmrrsVersionNumber (\s a -> s {_rsvmrrsVersionNumber = a}) . mapping _Nat

-- | The name of the schema.
rsvmrrsSchemaName :: Lens' RemoveSchemaVersionMetadataResponse (Maybe Text)
rsvmrrsSchemaName = lens _rsvmrrsSchemaName (\s a -> s {_rsvmrrsSchemaName = a})

-- | The value of the metadata key.
rsvmrrsMetadataValue :: Lens' RemoveSchemaVersionMetadataResponse (Maybe Text)
rsvmrrsMetadataValue = lens _rsvmrrsMetadataValue (\s a -> s {_rsvmrrsMetadataValue = a})

-- | -- | The response status code.
rsvmrrsResponseStatus :: Lens' RemoveSchemaVersionMetadataResponse Int
rsvmrrsResponseStatus = lens _rsvmrrsResponseStatus (\s a -> s {_rsvmrrsResponseStatus = a})

instance NFData RemoveSchemaVersionMetadataResponse
