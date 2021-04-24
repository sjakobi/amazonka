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
-- Module      : Network.AWS.Discovery.StartContinuousExport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start the continuous flow of agent's discovered data into Amazon Athena.
module Network.AWS.Discovery.StartContinuousExport
  ( -- * Creating a Request
    startContinuousExport,
    StartContinuousExport,

    -- * Destructuring the Response
    startContinuousExportResponse,
    StartContinuousExportResponse,

    -- * Response Lenses
    starsS3Bucket,
    starsDataSource,
    starsStartTime,
    starsSchemaStorageConfig,
    starsExportId,
    starsResponseStatus,
  )
where

import Network.AWS.Discovery.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startContinuousExport' smart constructor.
data StartContinuousExport = StartContinuousExport'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartContinuousExport' with the minimum fields required to make a request.
startContinuousExport ::
  StartContinuousExport
startContinuousExport = StartContinuousExport'

instance AWSRequest StartContinuousExport where
  type
    Rs StartContinuousExport =
      StartContinuousExportResponse
  request = postJSON discovery
  response =
    receiveJSON
      ( \s h x ->
          StartContinuousExportResponse'
            <$> (x .?> "s3Bucket")
            <*> (x .?> "dataSource")
            <*> (x .?> "startTime")
            <*> (x .?> "schemaStorageConfig" .!@ mempty)
            <*> (x .?> "exportId")
            <*> (pure (fromEnum s))
      )

instance Hashable StartContinuousExport

instance NFData StartContinuousExport

instance ToHeaders StartContinuousExport where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPoseidonService_V2015_11_01.StartContinuousExport" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartContinuousExport where
  toJSON = const (Object mempty)

instance ToPath StartContinuousExport where
  toPath = const "/"

instance ToQuery StartContinuousExport where
  toQuery = const mempty

-- | /See:/ 'startContinuousExportResponse' smart constructor.
data StartContinuousExportResponse = StartContinuousExportResponse'
  { _starsS3Bucket ::
      !( Maybe
           Text
       ),
    _starsDataSource ::
      !( Maybe
           DataSource
       ),
    _starsStartTime ::
      !( Maybe
           POSIX
       ),
    _starsSchemaStorageConfig ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _starsExportId ::
      !( Maybe
           Text
       ),
    _starsResponseStatus ::
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

-- | Creates a value of 'StartContinuousExportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'starsS3Bucket' - The name of the s3 bucket where the export data parquet files are stored.
--
-- * 'starsDataSource' - The type of data collector used to gather this data (currently only offered for AGENT).
--
-- * 'starsStartTime' - The timestamp representing when the continuous export was started.
--
-- * 'starsSchemaStorageConfig' - A dictionary which describes how the data is stored.     * @databaseName@ - the name of the Glue database used to store the schema.
--
-- * 'starsExportId' - The unique ID assigned to this export.
--
-- * 'starsResponseStatus' - -- | The response status code.
startContinuousExportResponse ::
  -- | 'starsResponseStatus'
  Int ->
  StartContinuousExportResponse
startContinuousExportResponse pResponseStatus_ =
  StartContinuousExportResponse'
    { _starsS3Bucket =
        Nothing,
      _starsDataSource = Nothing,
      _starsStartTime = Nothing,
      _starsSchemaStorageConfig = Nothing,
      _starsExportId = Nothing,
      _starsResponseStatus = pResponseStatus_
    }

-- | The name of the s3 bucket where the export data parquet files are stored.
starsS3Bucket :: Lens' StartContinuousExportResponse (Maybe Text)
starsS3Bucket = lens _starsS3Bucket (\s a -> s {_starsS3Bucket = a})

-- | The type of data collector used to gather this data (currently only offered for AGENT).
starsDataSource :: Lens' StartContinuousExportResponse (Maybe DataSource)
starsDataSource = lens _starsDataSource (\s a -> s {_starsDataSource = a})

-- | The timestamp representing when the continuous export was started.
starsStartTime :: Lens' StartContinuousExportResponse (Maybe UTCTime)
starsStartTime = lens _starsStartTime (\s a -> s {_starsStartTime = a}) . mapping _Time

-- | A dictionary which describes how the data is stored.     * @databaseName@ - the name of the Glue database used to store the schema.
starsSchemaStorageConfig :: Lens' StartContinuousExportResponse (HashMap Text Text)
starsSchemaStorageConfig = lens _starsSchemaStorageConfig (\s a -> s {_starsSchemaStorageConfig = a}) . _Default . _Map

-- | The unique ID assigned to this export.
starsExportId :: Lens' StartContinuousExportResponse (Maybe Text)
starsExportId = lens _starsExportId (\s a -> s {_starsExportId = a})

-- | -- | The response status code.
starsResponseStatus :: Lens' StartContinuousExportResponse Int
starsResponseStatus = lens _starsResponseStatus (\s a -> s {_starsResponseStatus = a})

instance NFData StartContinuousExportResponse
