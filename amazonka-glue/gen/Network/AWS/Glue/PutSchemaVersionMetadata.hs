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
-- Module      : Network.AWS.Glue.PutSchemaVersionMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Puts the metadata key value pair for a specified schema version ID. A maximum of 10 key value pairs will be allowed per schema version. They can be added over one or more calls.
module Network.AWS.Glue.PutSchemaVersionMetadata
  ( -- * Creating a Request
    putSchemaVersionMetadata,
    PutSchemaVersionMetadata,

    -- * Request Lenses
    psvmSchemaVersionId,
    psvmSchemaVersionNumber,
    psvmSchemaId,
    psvmMetadataKeyValue,

    -- * Destructuring the Response
    putSchemaVersionMetadataResponse,
    PutSchemaVersionMetadataResponse,

    -- * Response Lenses
    psvmrrsSchemaARN,
    psvmrrsLatestVersion,
    psvmrrsSchemaVersionId,
    psvmrrsMetadataKey,
    psvmrrsRegistryName,
    psvmrrsVersionNumber,
    psvmrrsSchemaName,
    psvmrrsMetadataValue,
    psvmrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putSchemaVersionMetadata' smart constructor.
data PutSchemaVersionMetadata = PutSchemaVersionMetadata'
  { _psvmSchemaVersionId ::
      !(Maybe Text),
    _psvmSchemaVersionNumber ::
      !( Maybe
           SchemaVersionNumber
       ),
    _psvmSchemaId ::
      !(Maybe SchemaId),
    _psvmMetadataKeyValue ::
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

-- | Creates a value of 'PutSchemaVersionMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psvmSchemaVersionId' - The unique version ID of the schema version.
--
-- * 'psvmSchemaVersionNumber' - The version number of the schema.
--
-- * 'psvmSchemaId' - The unique ID for the schema.
--
-- * 'psvmMetadataKeyValue' - The metadata key's corresponding value.
putSchemaVersionMetadata ::
  -- | 'psvmMetadataKeyValue'
  MetadataKeyValuePair ->
  PutSchemaVersionMetadata
putSchemaVersionMetadata pMetadataKeyValue_ =
  PutSchemaVersionMetadata'
    { _psvmSchemaVersionId =
        Nothing,
      _psvmSchemaVersionNumber = Nothing,
      _psvmSchemaId = Nothing,
      _psvmMetadataKeyValue = pMetadataKeyValue_
    }

-- | The unique version ID of the schema version.
psvmSchemaVersionId :: Lens' PutSchemaVersionMetadata (Maybe Text)
psvmSchemaVersionId = lens _psvmSchemaVersionId (\s a -> s {_psvmSchemaVersionId = a})

-- | The version number of the schema.
psvmSchemaVersionNumber :: Lens' PutSchemaVersionMetadata (Maybe SchemaVersionNumber)
psvmSchemaVersionNumber = lens _psvmSchemaVersionNumber (\s a -> s {_psvmSchemaVersionNumber = a})

-- | The unique ID for the schema.
psvmSchemaId :: Lens' PutSchemaVersionMetadata (Maybe SchemaId)
psvmSchemaId = lens _psvmSchemaId (\s a -> s {_psvmSchemaId = a})

-- | The metadata key's corresponding value.
psvmMetadataKeyValue :: Lens' PutSchemaVersionMetadata MetadataKeyValuePair
psvmMetadataKeyValue = lens _psvmMetadataKeyValue (\s a -> s {_psvmMetadataKeyValue = a})

instance AWSRequest PutSchemaVersionMetadata where
  type
    Rs PutSchemaVersionMetadata =
      PutSchemaVersionMetadataResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          PutSchemaVersionMetadataResponse'
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

instance Hashable PutSchemaVersionMetadata

instance NFData PutSchemaVersionMetadata

instance ToHeaders PutSchemaVersionMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.PutSchemaVersionMetadata" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutSchemaVersionMetadata where
  toJSON PutSchemaVersionMetadata' {..} =
    object
      ( catMaybes
          [ ("SchemaVersionId" .=) <$> _psvmSchemaVersionId,
            ("SchemaVersionNumber" .=)
              <$> _psvmSchemaVersionNumber,
            ("SchemaId" .=) <$> _psvmSchemaId,
            Just ("MetadataKeyValue" .= _psvmMetadataKeyValue)
          ]
      )

instance ToPath PutSchemaVersionMetadata where
  toPath = const "/"

instance ToQuery PutSchemaVersionMetadata where
  toQuery = const mempty

-- | /See:/ 'putSchemaVersionMetadataResponse' smart constructor.
data PutSchemaVersionMetadataResponse = PutSchemaVersionMetadataResponse'
  { _psvmrrsSchemaARN ::
      !( Maybe
           Text
       ),
    _psvmrrsLatestVersion ::
      !( Maybe
           Bool
       ),
    _psvmrrsSchemaVersionId ::
      !( Maybe
           Text
       ),
    _psvmrrsMetadataKey ::
      !( Maybe
           Text
       ),
    _psvmrrsRegistryName ::
      !( Maybe
           Text
       ),
    _psvmrrsVersionNumber ::
      !( Maybe
           Nat
       ),
    _psvmrrsSchemaName ::
      !( Maybe
           Text
       ),
    _psvmrrsMetadataValue ::
      !( Maybe
           Text
       ),
    _psvmrrsResponseStatus ::
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

-- | Creates a value of 'PutSchemaVersionMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psvmrrsSchemaARN' - The Amazon Resource Name (ARN) for the schema.
--
-- * 'psvmrrsLatestVersion' - The latest version of the schema.
--
-- * 'psvmrrsSchemaVersionId' - The unique version ID of the schema version.
--
-- * 'psvmrrsMetadataKey' - The metadata key.
--
-- * 'psvmrrsRegistryName' - The name for the registry.
--
-- * 'psvmrrsVersionNumber' - The version number of the schema.
--
-- * 'psvmrrsSchemaName' - The name for the schema.
--
-- * 'psvmrrsMetadataValue' - The value of the metadata key.
--
-- * 'psvmrrsResponseStatus' - -- | The response status code.
putSchemaVersionMetadataResponse ::
  -- | 'psvmrrsResponseStatus'
  Int ->
  PutSchemaVersionMetadataResponse
putSchemaVersionMetadataResponse pResponseStatus_ =
  PutSchemaVersionMetadataResponse'
    { _psvmrrsSchemaARN =
        Nothing,
      _psvmrrsLatestVersion = Nothing,
      _psvmrrsSchemaVersionId = Nothing,
      _psvmrrsMetadataKey = Nothing,
      _psvmrrsRegistryName = Nothing,
      _psvmrrsVersionNumber = Nothing,
      _psvmrrsSchemaName = Nothing,
      _psvmrrsMetadataValue = Nothing,
      _psvmrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) for the schema.
psvmrrsSchemaARN :: Lens' PutSchemaVersionMetadataResponse (Maybe Text)
psvmrrsSchemaARN = lens _psvmrrsSchemaARN (\s a -> s {_psvmrrsSchemaARN = a})

-- | The latest version of the schema.
psvmrrsLatestVersion :: Lens' PutSchemaVersionMetadataResponse (Maybe Bool)
psvmrrsLatestVersion = lens _psvmrrsLatestVersion (\s a -> s {_psvmrrsLatestVersion = a})

-- | The unique version ID of the schema version.
psvmrrsSchemaVersionId :: Lens' PutSchemaVersionMetadataResponse (Maybe Text)
psvmrrsSchemaVersionId = lens _psvmrrsSchemaVersionId (\s a -> s {_psvmrrsSchemaVersionId = a})

-- | The metadata key.
psvmrrsMetadataKey :: Lens' PutSchemaVersionMetadataResponse (Maybe Text)
psvmrrsMetadataKey = lens _psvmrrsMetadataKey (\s a -> s {_psvmrrsMetadataKey = a})

-- | The name for the registry.
psvmrrsRegistryName :: Lens' PutSchemaVersionMetadataResponse (Maybe Text)
psvmrrsRegistryName = lens _psvmrrsRegistryName (\s a -> s {_psvmrrsRegistryName = a})

-- | The version number of the schema.
psvmrrsVersionNumber :: Lens' PutSchemaVersionMetadataResponse (Maybe Natural)
psvmrrsVersionNumber = lens _psvmrrsVersionNumber (\s a -> s {_psvmrrsVersionNumber = a}) . mapping _Nat

-- | The name for the schema.
psvmrrsSchemaName :: Lens' PutSchemaVersionMetadataResponse (Maybe Text)
psvmrrsSchemaName = lens _psvmrrsSchemaName (\s a -> s {_psvmrrsSchemaName = a})

-- | The value of the metadata key.
psvmrrsMetadataValue :: Lens' PutSchemaVersionMetadataResponse (Maybe Text)
psvmrrsMetadataValue = lens _psvmrrsMetadataValue (\s a -> s {_psvmrrsMetadataValue = a})

-- | -- | The response status code.
psvmrrsResponseStatus :: Lens' PutSchemaVersionMetadataResponse Int
psvmrrsResponseStatus = lens _psvmrrsResponseStatus (\s a -> s {_psvmrrsResponseStatus = a})

instance NFData PutSchemaVersionMetadataResponse
