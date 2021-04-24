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
-- Module      : Network.AWS.SageMaker.DescribeTrial
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of a trial's properties.
module Network.AWS.SageMaker.DescribeTrial
  ( -- * Creating a Request
    describeTrial,
    DescribeTrial,

    -- * Request Lenses
    dtTrialName,

    -- * Destructuring the Response
    describeTrialResponse,
    DescribeTrialResponse,

    -- * Response Lenses
    dtrtrsTrialARN,
    dtrtrsMetadataProperties,
    dtrtrsCreationTime,
    dtrtrsSource,
    dtrtrsLastModifiedTime,
    dtrtrsExperimentName,
    dtrtrsCreatedBy,
    dtrtrsLastModifiedBy,
    dtrtrsDisplayName,
    dtrtrsTrialName,
    dtrtrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeTrial' smart constructor.
newtype DescribeTrial = DescribeTrial'
  { _dtTrialName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTrial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtTrialName' - The name of the trial to describe.
describeTrial ::
  -- | 'dtTrialName'
  Text ->
  DescribeTrial
describeTrial pTrialName_ =
  DescribeTrial' {_dtTrialName = pTrialName_}

-- | The name of the trial to describe.
dtTrialName :: Lens' DescribeTrial Text
dtTrialName = lens _dtTrialName (\s a -> s {_dtTrialName = a})

instance AWSRequest DescribeTrial where
  type Rs DescribeTrial = DescribeTrialResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeTrialResponse'
            <$> (x .?> "TrialArn")
            <*> (x .?> "MetadataProperties")
            <*> (x .?> "CreationTime")
            <*> (x .?> "Source")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "ExperimentName")
            <*> (x .?> "CreatedBy")
            <*> (x .?> "LastModifiedBy")
            <*> (x .?> "DisplayName")
            <*> (x .?> "TrialName")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTrial

instance NFData DescribeTrial

instance ToHeaders DescribeTrial where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeTrial" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTrial where
  toJSON DescribeTrial' {..} =
    object
      (catMaybes [Just ("TrialName" .= _dtTrialName)])

instance ToPath DescribeTrial where
  toPath = const "/"

instance ToQuery DescribeTrial where
  toQuery = const mempty

-- | /See:/ 'describeTrialResponse' smart constructor.
data DescribeTrialResponse = DescribeTrialResponse'
  { _dtrtrsTrialARN ::
      !(Maybe Text),
    _dtrtrsMetadataProperties ::
      !(Maybe MetadataProperties),
    _dtrtrsCreationTime ::
      !(Maybe POSIX),
    _dtrtrsSource ::
      !(Maybe TrialSource),
    _dtrtrsLastModifiedTime ::
      !(Maybe POSIX),
    _dtrtrsExperimentName ::
      !(Maybe Text),
    _dtrtrsCreatedBy ::
      !(Maybe UserContext),
    _dtrtrsLastModifiedBy ::
      !(Maybe UserContext),
    _dtrtrsDisplayName ::
      !(Maybe Text),
    _dtrtrsTrialName ::
      !(Maybe Text),
    _dtrtrsResponseStatus ::
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

-- | Creates a value of 'DescribeTrialResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrtrsTrialARN' - The Amazon Resource Name (ARN) of the trial.
--
-- * 'dtrtrsMetadataProperties' - Undocumented member.
--
-- * 'dtrtrsCreationTime' - When the trial was created.
--
-- * 'dtrtrsSource' - The Amazon Resource Name (ARN) of the source and, optionally, the job type.
--
-- * 'dtrtrsLastModifiedTime' - When the trial was last modified.
--
-- * 'dtrtrsExperimentName' - The name of the experiment the trial is part of.
--
-- * 'dtrtrsCreatedBy' - Who created the trial.
--
-- * 'dtrtrsLastModifiedBy' - Who last modified the trial.
--
-- * 'dtrtrsDisplayName' - The name of the trial as displayed. If @DisplayName@ isn't specified, @TrialName@ is displayed.
--
-- * 'dtrtrsTrialName' - The name of the trial.
--
-- * 'dtrtrsResponseStatus' - -- | The response status code.
describeTrialResponse ::
  -- | 'dtrtrsResponseStatus'
  Int ->
  DescribeTrialResponse
describeTrialResponse pResponseStatus_ =
  DescribeTrialResponse'
    { _dtrtrsTrialARN = Nothing,
      _dtrtrsMetadataProperties = Nothing,
      _dtrtrsCreationTime = Nothing,
      _dtrtrsSource = Nothing,
      _dtrtrsLastModifiedTime = Nothing,
      _dtrtrsExperimentName = Nothing,
      _dtrtrsCreatedBy = Nothing,
      _dtrtrsLastModifiedBy = Nothing,
      _dtrtrsDisplayName = Nothing,
      _dtrtrsTrialName = Nothing,
      _dtrtrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the trial.
dtrtrsTrialARN :: Lens' DescribeTrialResponse (Maybe Text)
dtrtrsTrialARN = lens _dtrtrsTrialARN (\s a -> s {_dtrtrsTrialARN = a})

-- | Undocumented member.
dtrtrsMetadataProperties :: Lens' DescribeTrialResponse (Maybe MetadataProperties)
dtrtrsMetadataProperties = lens _dtrtrsMetadataProperties (\s a -> s {_dtrtrsMetadataProperties = a})

-- | When the trial was created.
dtrtrsCreationTime :: Lens' DescribeTrialResponse (Maybe UTCTime)
dtrtrsCreationTime = lens _dtrtrsCreationTime (\s a -> s {_dtrtrsCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the source and, optionally, the job type.
dtrtrsSource :: Lens' DescribeTrialResponse (Maybe TrialSource)
dtrtrsSource = lens _dtrtrsSource (\s a -> s {_dtrtrsSource = a})

-- | When the trial was last modified.
dtrtrsLastModifiedTime :: Lens' DescribeTrialResponse (Maybe UTCTime)
dtrtrsLastModifiedTime = lens _dtrtrsLastModifiedTime (\s a -> s {_dtrtrsLastModifiedTime = a}) . mapping _Time

-- | The name of the experiment the trial is part of.
dtrtrsExperimentName :: Lens' DescribeTrialResponse (Maybe Text)
dtrtrsExperimentName = lens _dtrtrsExperimentName (\s a -> s {_dtrtrsExperimentName = a})

-- | Who created the trial.
dtrtrsCreatedBy :: Lens' DescribeTrialResponse (Maybe UserContext)
dtrtrsCreatedBy = lens _dtrtrsCreatedBy (\s a -> s {_dtrtrsCreatedBy = a})

-- | Who last modified the trial.
dtrtrsLastModifiedBy :: Lens' DescribeTrialResponse (Maybe UserContext)
dtrtrsLastModifiedBy = lens _dtrtrsLastModifiedBy (\s a -> s {_dtrtrsLastModifiedBy = a})

-- | The name of the trial as displayed. If @DisplayName@ isn't specified, @TrialName@ is displayed.
dtrtrsDisplayName :: Lens' DescribeTrialResponse (Maybe Text)
dtrtrsDisplayName = lens _dtrtrsDisplayName (\s a -> s {_dtrtrsDisplayName = a})

-- | The name of the trial.
dtrtrsTrialName :: Lens' DescribeTrialResponse (Maybe Text)
dtrtrsTrialName = lens _dtrtrsTrialName (\s a -> s {_dtrtrsTrialName = a})

-- | -- | The response status code.
dtrtrsResponseStatus :: Lens' DescribeTrialResponse Int
dtrtrsResponseStatus = lens _dtrtrsResponseStatus (\s a -> s {_dtrtrsResponseStatus = a})

instance NFData DescribeTrialResponse
