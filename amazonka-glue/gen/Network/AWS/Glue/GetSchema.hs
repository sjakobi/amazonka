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
-- Module      : Network.AWS.Glue.GetSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified schema in detail.
module Network.AWS.Glue.GetSchema
  ( -- * Creating a Request
    getSchema,
    GetSchema,

    -- * Request Lenses
    gsSchemaId,

    -- * Destructuring the Response
    getSchemaResponse,
    GetSchemaResponse,

    -- * Response Lenses
    gsrrsSchemaARN,
    gsrrsNextSchemaVersion,
    gsrrsSchemaCheckpoint,
    gsrrsDataFormat,
    gsrrsUpdatedTime,
    gsrrsCreatedTime,
    gsrrsRegistryName,
    gsrrsSchemaName,
    gsrrsDescription,
    gsrrsCompatibility,
    gsrrsRegistryARN,
    gsrrsLatestSchemaVersion,
    gsrrsSchemaStatus,
    gsrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSchema' smart constructor.
newtype GetSchema = GetSchema'
  { _gsSchemaId ::
      SchemaId
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsSchemaId' - This is a wrapper structure to contain schema identity fields. The structure contains:     * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be provided.     * SchemaId$SchemaName: The name of the schema. Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be provided.
getSchema ::
  -- | 'gsSchemaId'
  SchemaId ->
  GetSchema
getSchema pSchemaId_ =
  GetSchema' {_gsSchemaId = pSchemaId_}

-- | This is a wrapper structure to contain schema identity fields. The structure contains:     * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be provided.     * SchemaId$SchemaName: The name of the schema. Either @SchemaArn@ or @SchemaName@ and @RegistryName@ has to be provided.
gsSchemaId :: Lens' GetSchema SchemaId
gsSchemaId = lens _gsSchemaId (\s a -> s {_gsSchemaId = a})

instance AWSRequest GetSchema where
  type Rs GetSchema = GetSchemaResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetSchemaResponse'
            <$> (x .?> "SchemaArn")
            <*> (x .?> "NextSchemaVersion")
            <*> (x .?> "SchemaCheckpoint")
            <*> (x .?> "DataFormat")
            <*> (x .?> "UpdatedTime")
            <*> (x .?> "CreatedTime")
            <*> (x .?> "RegistryName")
            <*> (x .?> "SchemaName")
            <*> (x .?> "Description")
            <*> (x .?> "Compatibility")
            <*> (x .?> "RegistryArn")
            <*> (x .?> "LatestSchemaVersion")
            <*> (x .?> "SchemaStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSchema

instance NFData GetSchema

instance ToHeaders GetSchema where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetSchema" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSchema where
  toJSON GetSchema' {..} =
    object
      (catMaybes [Just ("SchemaId" .= _gsSchemaId)])

instance ToPath GetSchema where
  toPath = const "/"

instance ToQuery GetSchema where
  toQuery = const mempty

-- | /See:/ 'getSchemaResponse' smart constructor.
data GetSchemaResponse = GetSchemaResponse'
  { _gsrrsSchemaARN ::
      !(Maybe Text),
    _gsrrsNextSchemaVersion ::
      !(Maybe Nat),
    _gsrrsSchemaCheckpoint ::
      !(Maybe Nat),
    _gsrrsDataFormat ::
      !(Maybe DataFormat),
    _gsrrsUpdatedTime :: !(Maybe Text),
    _gsrrsCreatedTime :: !(Maybe Text),
    _gsrrsRegistryName :: !(Maybe Text),
    _gsrrsSchemaName :: !(Maybe Text),
    _gsrrsDescription :: !(Maybe Text),
    _gsrrsCompatibility ::
      !(Maybe Compatibility),
    _gsrrsRegistryARN :: !(Maybe Text),
    _gsrrsLatestSchemaVersion ::
      !(Maybe Nat),
    _gsrrsSchemaStatus ::
      !(Maybe SchemaStatus),
    _gsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSchemaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrrsSchemaARN' - The Amazon Resource Name (ARN) of the schema.
--
-- * 'gsrrsNextSchemaVersion' - The next version of the schema associated with the returned schema definition.
--
-- * 'gsrrsSchemaCheckpoint' - The version number of the checkpoint (the last time the compatibility mode was changed).
--
-- * 'gsrrsDataFormat' - The data format of the schema definition. Currently only @AVRO@ is supported.
--
-- * 'gsrrsUpdatedTime' - The date and time the schema was updated.
--
-- * 'gsrrsCreatedTime' - The date and time the schema was created.
--
-- * 'gsrrsRegistryName' - The name of the registry.
--
-- * 'gsrrsSchemaName' - The name of the schema.
--
-- * 'gsrrsDescription' - A description of schema if specified when created
--
-- * 'gsrrsCompatibility' - The compatibility mode of the schema.
--
-- * 'gsrrsRegistryARN' - The Amazon Resource Name (ARN) of the registry.
--
-- * 'gsrrsLatestSchemaVersion' - The latest version of the schema associated with the returned schema definition.
--
-- * 'gsrrsSchemaStatus' - The status of the schema.
--
-- * 'gsrrsResponseStatus' - -- | The response status code.
getSchemaResponse ::
  -- | 'gsrrsResponseStatus'
  Int ->
  GetSchemaResponse
getSchemaResponse pResponseStatus_ =
  GetSchemaResponse'
    { _gsrrsSchemaARN = Nothing,
      _gsrrsNextSchemaVersion = Nothing,
      _gsrrsSchemaCheckpoint = Nothing,
      _gsrrsDataFormat = Nothing,
      _gsrrsUpdatedTime = Nothing,
      _gsrrsCreatedTime = Nothing,
      _gsrrsRegistryName = Nothing,
      _gsrrsSchemaName = Nothing,
      _gsrrsDescription = Nothing,
      _gsrrsCompatibility = Nothing,
      _gsrrsRegistryARN = Nothing,
      _gsrrsLatestSchemaVersion = Nothing,
      _gsrrsSchemaStatus = Nothing,
      _gsrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the schema.
gsrrsSchemaARN :: Lens' GetSchemaResponse (Maybe Text)
gsrrsSchemaARN = lens _gsrrsSchemaARN (\s a -> s {_gsrrsSchemaARN = a})

-- | The next version of the schema associated with the returned schema definition.
gsrrsNextSchemaVersion :: Lens' GetSchemaResponse (Maybe Natural)
gsrrsNextSchemaVersion = lens _gsrrsNextSchemaVersion (\s a -> s {_gsrrsNextSchemaVersion = a}) . mapping _Nat

-- | The version number of the checkpoint (the last time the compatibility mode was changed).
gsrrsSchemaCheckpoint :: Lens' GetSchemaResponse (Maybe Natural)
gsrrsSchemaCheckpoint = lens _gsrrsSchemaCheckpoint (\s a -> s {_gsrrsSchemaCheckpoint = a}) . mapping _Nat

-- | The data format of the schema definition. Currently only @AVRO@ is supported.
gsrrsDataFormat :: Lens' GetSchemaResponse (Maybe DataFormat)
gsrrsDataFormat = lens _gsrrsDataFormat (\s a -> s {_gsrrsDataFormat = a})

-- | The date and time the schema was updated.
gsrrsUpdatedTime :: Lens' GetSchemaResponse (Maybe Text)
gsrrsUpdatedTime = lens _gsrrsUpdatedTime (\s a -> s {_gsrrsUpdatedTime = a})

-- | The date and time the schema was created.
gsrrsCreatedTime :: Lens' GetSchemaResponse (Maybe Text)
gsrrsCreatedTime = lens _gsrrsCreatedTime (\s a -> s {_gsrrsCreatedTime = a})

-- | The name of the registry.
gsrrsRegistryName :: Lens' GetSchemaResponse (Maybe Text)
gsrrsRegistryName = lens _gsrrsRegistryName (\s a -> s {_gsrrsRegistryName = a})

-- | The name of the schema.
gsrrsSchemaName :: Lens' GetSchemaResponse (Maybe Text)
gsrrsSchemaName = lens _gsrrsSchemaName (\s a -> s {_gsrrsSchemaName = a})

-- | A description of schema if specified when created
gsrrsDescription :: Lens' GetSchemaResponse (Maybe Text)
gsrrsDescription = lens _gsrrsDescription (\s a -> s {_gsrrsDescription = a})

-- | The compatibility mode of the schema.
gsrrsCompatibility :: Lens' GetSchemaResponse (Maybe Compatibility)
gsrrsCompatibility = lens _gsrrsCompatibility (\s a -> s {_gsrrsCompatibility = a})

-- | The Amazon Resource Name (ARN) of the registry.
gsrrsRegistryARN :: Lens' GetSchemaResponse (Maybe Text)
gsrrsRegistryARN = lens _gsrrsRegistryARN (\s a -> s {_gsrrsRegistryARN = a})

-- | The latest version of the schema associated with the returned schema definition.
gsrrsLatestSchemaVersion :: Lens' GetSchemaResponse (Maybe Natural)
gsrrsLatestSchemaVersion = lens _gsrrsLatestSchemaVersion (\s a -> s {_gsrrsLatestSchemaVersion = a}) . mapping _Nat

-- | The status of the schema.
gsrrsSchemaStatus :: Lens' GetSchemaResponse (Maybe SchemaStatus)
gsrrsSchemaStatus = lens _gsrrsSchemaStatus (\s a -> s {_gsrrsSchemaStatus = a})

-- | -- | The response status code.
gsrrsResponseStatus :: Lens' GetSchemaResponse Int
gsrrsResponseStatus = lens _gsrrsResponseStatus (\s a -> s {_gsrrsResponseStatus = a})

instance NFData GetSchemaResponse
