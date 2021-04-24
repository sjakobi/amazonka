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
-- Module      : Network.AWS.Glue.GetSchemaByDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a schema by the @SchemaDefinition@ . The schema definition is sent to the Schema Registry, canonicalized, and hashed. If the hash is matched within the scope of the @SchemaName@ or ARN (or the default registry, if none is supplied), that schema’s metadata is returned. Otherwise, a 404 or NotFound error is returned. Schema versions in @Deleted@ statuses will not be included in the results.
module Network.AWS.Glue.GetSchemaByDefinition
  ( -- * Creating a Request
    getSchemaByDefinition,
    GetSchemaByDefinition,

    -- * Request Lenses
    gsbdSchemaId,
    gsbdSchemaDefinition,

    -- * Destructuring the Response
    getSchemaByDefinitionResponse,
    GetSchemaByDefinitionResponse,

    -- * Response Lenses
    gsbdrrsSchemaARN,
    gsbdrrsStatus,
    gsbdrrsSchemaVersionId,
    gsbdrrsDataFormat,
    gsbdrrsCreatedTime,
    gsbdrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSchemaByDefinition' smart constructor.
data GetSchemaByDefinition = GetSchemaByDefinition'
  { _gsbdSchemaId ::
      !SchemaId,
    _gsbdSchemaDefinition ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSchemaByDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsbdSchemaId' - This is a wrapper structure to contain schema identity fields. The structure contains:     * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of @SchemaArn@ or @SchemaName@ has to be provided.     * SchemaId$SchemaName: The name of the schema. One of @SchemaArn@ or @SchemaName@ has to be provided.
--
-- * 'gsbdSchemaDefinition' - The definition of the schema for which schema details are required.
getSchemaByDefinition ::
  -- | 'gsbdSchemaId'
  SchemaId ->
  -- | 'gsbdSchemaDefinition'
  Text ->
  GetSchemaByDefinition
getSchemaByDefinition pSchemaId_ pSchemaDefinition_ =
  GetSchemaByDefinition'
    { _gsbdSchemaId = pSchemaId_,
      _gsbdSchemaDefinition = pSchemaDefinition_
    }

-- | This is a wrapper structure to contain schema identity fields. The structure contains:     * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of @SchemaArn@ or @SchemaName@ has to be provided.     * SchemaId$SchemaName: The name of the schema. One of @SchemaArn@ or @SchemaName@ has to be provided.
gsbdSchemaId :: Lens' GetSchemaByDefinition SchemaId
gsbdSchemaId = lens _gsbdSchemaId (\s a -> s {_gsbdSchemaId = a})

-- | The definition of the schema for which schema details are required.
gsbdSchemaDefinition :: Lens' GetSchemaByDefinition Text
gsbdSchemaDefinition = lens _gsbdSchemaDefinition (\s a -> s {_gsbdSchemaDefinition = a})

instance AWSRequest GetSchemaByDefinition where
  type
    Rs GetSchemaByDefinition =
      GetSchemaByDefinitionResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetSchemaByDefinitionResponse'
            <$> (x .?> "SchemaArn")
            <*> (x .?> "Status")
            <*> (x .?> "SchemaVersionId")
            <*> (x .?> "DataFormat")
            <*> (x .?> "CreatedTime")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSchemaByDefinition

instance NFData GetSchemaByDefinition

instance ToHeaders GetSchemaByDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetSchemaByDefinition" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSchemaByDefinition where
  toJSON GetSchemaByDefinition' {..} =
    object
      ( catMaybes
          [ Just ("SchemaId" .= _gsbdSchemaId),
            Just ("SchemaDefinition" .= _gsbdSchemaDefinition)
          ]
      )

instance ToPath GetSchemaByDefinition where
  toPath = const "/"

instance ToQuery GetSchemaByDefinition where
  toQuery = const mempty

-- | /See:/ 'getSchemaByDefinitionResponse' smart constructor.
data GetSchemaByDefinitionResponse = GetSchemaByDefinitionResponse'
  { _gsbdrrsSchemaARN ::
      !( Maybe
           Text
       ),
    _gsbdrrsStatus ::
      !( Maybe
           SchemaVersionStatus
       ),
    _gsbdrrsSchemaVersionId ::
      !( Maybe
           Text
       ),
    _gsbdrrsDataFormat ::
      !( Maybe
           DataFormat
       ),
    _gsbdrrsCreatedTime ::
      !( Maybe
           Text
       ),
    _gsbdrrsResponseStatus ::
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

-- | Creates a value of 'GetSchemaByDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsbdrrsSchemaARN' - The Amazon Resource Name (ARN) of the schema.
--
-- * 'gsbdrrsStatus' - The status of the schema version.
--
-- * 'gsbdrrsSchemaVersionId' - The schema ID of the schema version.
--
-- * 'gsbdrrsDataFormat' - The data format of the schema definition. Currently only @AVRO@ is supported.
--
-- * 'gsbdrrsCreatedTime' - The date and time the schema was created.
--
-- * 'gsbdrrsResponseStatus' - -- | The response status code.
getSchemaByDefinitionResponse ::
  -- | 'gsbdrrsResponseStatus'
  Int ->
  GetSchemaByDefinitionResponse
getSchemaByDefinitionResponse pResponseStatus_ =
  GetSchemaByDefinitionResponse'
    { _gsbdrrsSchemaARN =
        Nothing,
      _gsbdrrsStatus = Nothing,
      _gsbdrrsSchemaVersionId = Nothing,
      _gsbdrrsDataFormat = Nothing,
      _gsbdrrsCreatedTime = Nothing,
      _gsbdrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the schema.
gsbdrrsSchemaARN :: Lens' GetSchemaByDefinitionResponse (Maybe Text)
gsbdrrsSchemaARN = lens _gsbdrrsSchemaARN (\s a -> s {_gsbdrrsSchemaARN = a})

-- | The status of the schema version.
gsbdrrsStatus :: Lens' GetSchemaByDefinitionResponse (Maybe SchemaVersionStatus)
gsbdrrsStatus = lens _gsbdrrsStatus (\s a -> s {_gsbdrrsStatus = a})

-- | The schema ID of the schema version.
gsbdrrsSchemaVersionId :: Lens' GetSchemaByDefinitionResponse (Maybe Text)
gsbdrrsSchemaVersionId = lens _gsbdrrsSchemaVersionId (\s a -> s {_gsbdrrsSchemaVersionId = a})

-- | The data format of the schema definition. Currently only @AVRO@ is supported.
gsbdrrsDataFormat :: Lens' GetSchemaByDefinitionResponse (Maybe DataFormat)
gsbdrrsDataFormat = lens _gsbdrrsDataFormat (\s a -> s {_gsbdrrsDataFormat = a})

-- | The date and time the schema was created.
gsbdrrsCreatedTime :: Lens' GetSchemaByDefinitionResponse (Maybe Text)
gsbdrrsCreatedTime = lens _gsbdrrsCreatedTime (\s a -> s {_gsbdrrsCreatedTime = a})

-- | -- | The response status code.
gsbdrrsResponseStatus :: Lens' GetSchemaByDefinitionResponse Int
gsbdrrsResponseStatus = lens _gsbdrrsResponseStatus (\s a -> s {_gsbdrrsResponseStatus = a})

instance NFData GetSchemaByDefinitionResponse
