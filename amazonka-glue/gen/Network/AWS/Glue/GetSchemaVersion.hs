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
-- Module      : Network.AWS.Glue.GetSchemaVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the specified schema by its unique ID assigned when a version of the schema is created or registered. Schema versions in Deleted status will not be included in the results.
module Network.AWS.Glue.GetSchemaVersion
  ( -- * Creating a Request
    getSchemaVersion,
    GetSchemaVersion,

    -- * Request Lenses
    gsvSchemaVersionId,
    gsvSchemaVersionNumber,
    gsvSchemaId,

    -- * Destructuring the Response
    getSchemaVersionResponse,
    GetSchemaVersionResponse,

    -- * Response Lenses
    gsvrrsSchemaARN,
    gsvrrsStatus,
    gsvrrsSchemaDefinition,
    gsvrrsSchemaVersionId,
    gsvrrsDataFormat,
    gsvrrsCreatedTime,
    gsvrrsVersionNumber,
    gsvrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSchemaVersion' smart constructor.
data GetSchemaVersion = GetSchemaVersion'
  { _gsvSchemaVersionId ::
      !(Maybe Text),
    _gsvSchemaVersionNumber ::
      !(Maybe SchemaVersionNumber),
    _gsvSchemaId :: !(Maybe SchemaId)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSchemaVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsvSchemaVersionId' - The @SchemaVersionId@ of the schema version. This field is required for fetching by schema ID. Either this or the @SchemaId@ wrapper has to be provided.
--
-- * 'gsvSchemaVersionNumber' - The version number of the schema.
--
-- * 'gsvSchemaId' - This is a wrapper structure to contain schema identity fields. The structure contains:     * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be provided.     * SchemaId$SchemaName: The name of the schema. Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be provided.
getSchemaVersion ::
  GetSchemaVersion
getSchemaVersion =
  GetSchemaVersion'
    { _gsvSchemaVersionId = Nothing,
      _gsvSchemaVersionNumber = Nothing,
      _gsvSchemaId = Nothing
    }

-- | The @SchemaVersionId@ of the schema version. This field is required for fetching by schema ID. Either this or the @SchemaId@ wrapper has to be provided.
gsvSchemaVersionId :: Lens' GetSchemaVersion (Maybe Text)
gsvSchemaVersionId = lens _gsvSchemaVersionId (\s a -> s {_gsvSchemaVersionId = a})

-- | The version number of the schema.
gsvSchemaVersionNumber :: Lens' GetSchemaVersion (Maybe SchemaVersionNumber)
gsvSchemaVersionNumber = lens _gsvSchemaVersionNumber (\s a -> s {_gsvSchemaVersionNumber = a})

-- | This is a wrapper structure to contain schema identity fields. The structure contains:     * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be provided.     * SchemaId$SchemaName: The name of the schema. Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be provided.
gsvSchemaId :: Lens' GetSchemaVersion (Maybe SchemaId)
gsvSchemaId = lens _gsvSchemaId (\s a -> s {_gsvSchemaId = a})

instance AWSRequest GetSchemaVersion where
  type Rs GetSchemaVersion = GetSchemaVersionResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetSchemaVersionResponse'
            <$> (x .?> "SchemaArn")
            <*> (x .?> "Status")
            <*> (x .?> "SchemaDefinition")
            <*> (x .?> "SchemaVersionId")
            <*> (x .?> "DataFormat")
            <*> (x .?> "CreatedTime")
            <*> (x .?> "VersionNumber")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSchemaVersion

instance NFData GetSchemaVersion

instance ToHeaders GetSchemaVersion where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetSchemaVersion" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSchemaVersion where
  toJSON GetSchemaVersion' {..} =
    object
      ( catMaybes
          [ ("SchemaVersionId" .=) <$> _gsvSchemaVersionId,
            ("SchemaVersionNumber" .=)
              <$> _gsvSchemaVersionNumber,
            ("SchemaId" .=) <$> _gsvSchemaId
          ]
      )

instance ToPath GetSchemaVersion where
  toPath = const "/"

instance ToQuery GetSchemaVersion where
  toQuery = const mempty

-- | /See:/ 'getSchemaVersionResponse' smart constructor.
data GetSchemaVersionResponse = GetSchemaVersionResponse'
  { _gsvrrsSchemaARN ::
      !(Maybe Text),
    _gsvrrsStatus ::
      !( Maybe
           SchemaVersionStatus
       ),
    _gsvrrsSchemaDefinition ::
      !(Maybe Text),
    _gsvrrsSchemaVersionId ::
      !(Maybe Text),
    _gsvrrsDataFormat ::
      !(Maybe DataFormat),
    _gsvrrsCreatedTime ::
      !(Maybe Text),
    _gsvrrsVersionNumber ::
      !(Maybe Nat),
    _gsvrrsResponseStatus ::
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

-- | Creates a value of 'GetSchemaVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsvrrsSchemaARN' - The Amazon Resource Name (ARN) of the schema.
--
-- * 'gsvrrsStatus' - The status of the schema version.
--
-- * 'gsvrrsSchemaDefinition' - The schema definition for the schema ID.
--
-- * 'gsvrrsSchemaVersionId' - The @SchemaVersionId@ of the schema version.
--
-- * 'gsvrrsDataFormat' - The data format of the schema definition. Currently only @AVRO@ is supported.
--
-- * 'gsvrrsCreatedTime' - The date and time the schema version was created.
--
-- * 'gsvrrsVersionNumber' - The version number of the schema.
--
-- * 'gsvrrsResponseStatus' - -- | The response status code.
getSchemaVersionResponse ::
  -- | 'gsvrrsResponseStatus'
  Int ->
  GetSchemaVersionResponse
getSchemaVersionResponse pResponseStatus_ =
  GetSchemaVersionResponse'
    { _gsvrrsSchemaARN =
        Nothing,
      _gsvrrsStatus = Nothing,
      _gsvrrsSchemaDefinition = Nothing,
      _gsvrrsSchemaVersionId = Nothing,
      _gsvrrsDataFormat = Nothing,
      _gsvrrsCreatedTime = Nothing,
      _gsvrrsVersionNumber = Nothing,
      _gsvrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the schema.
gsvrrsSchemaARN :: Lens' GetSchemaVersionResponse (Maybe Text)
gsvrrsSchemaARN = lens _gsvrrsSchemaARN (\s a -> s {_gsvrrsSchemaARN = a})

-- | The status of the schema version.
gsvrrsStatus :: Lens' GetSchemaVersionResponse (Maybe SchemaVersionStatus)
gsvrrsStatus = lens _gsvrrsStatus (\s a -> s {_gsvrrsStatus = a})

-- | The schema definition for the schema ID.
gsvrrsSchemaDefinition :: Lens' GetSchemaVersionResponse (Maybe Text)
gsvrrsSchemaDefinition = lens _gsvrrsSchemaDefinition (\s a -> s {_gsvrrsSchemaDefinition = a})

-- | The @SchemaVersionId@ of the schema version.
gsvrrsSchemaVersionId :: Lens' GetSchemaVersionResponse (Maybe Text)
gsvrrsSchemaVersionId = lens _gsvrrsSchemaVersionId (\s a -> s {_gsvrrsSchemaVersionId = a})

-- | The data format of the schema definition. Currently only @AVRO@ is supported.
gsvrrsDataFormat :: Lens' GetSchemaVersionResponse (Maybe DataFormat)
gsvrrsDataFormat = lens _gsvrrsDataFormat (\s a -> s {_gsvrrsDataFormat = a})

-- | The date and time the schema version was created.
gsvrrsCreatedTime :: Lens' GetSchemaVersionResponse (Maybe Text)
gsvrrsCreatedTime = lens _gsvrrsCreatedTime (\s a -> s {_gsvrrsCreatedTime = a})

-- | The version number of the schema.
gsvrrsVersionNumber :: Lens' GetSchemaVersionResponse (Maybe Natural)
gsvrrsVersionNumber = lens _gsvrrsVersionNumber (\s a -> s {_gsvrrsVersionNumber = a}) . mapping _Nat

-- | -- | The response status code.
gsvrrsResponseStatus :: Lens' GetSchemaVersionResponse Int
gsvrrsResponseStatus = lens _gsvrrsResponseStatus (\s a -> s {_gsvrrsResponseStatus = a})

instance NFData GetSchemaVersionResponse
