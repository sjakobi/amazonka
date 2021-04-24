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
-- Module      : Network.AWS.SageMaker.DescribeExperiment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of an experiment's properties.
module Network.AWS.SageMaker.DescribeExperiment
  ( -- * Creating a Request
    describeExperiment,
    DescribeExperiment,

    -- * Request Lenses
    deExperimentName,

    -- * Destructuring the Response
    describeExperimentResponse,
    DescribeExperimentResponse,

    -- * Response Lenses
    derrsExperimentARN,
    derrsCreationTime,
    derrsSource,
    derrsLastModifiedTime,
    derrsExperimentName,
    derrsDescription,
    derrsCreatedBy,
    derrsLastModifiedBy,
    derrsDisplayName,
    derrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeExperiment' smart constructor.
newtype DescribeExperiment = DescribeExperiment'
  { _deExperimentName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeExperiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deExperimentName' - The name of the experiment to describe.
describeExperiment ::
  -- | 'deExperimentName'
  Text ->
  DescribeExperiment
describeExperiment pExperimentName_ =
  DescribeExperiment'
    { _deExperimentName =
        pExperimentName_
    }

-- | The name of the experiment to describe.
deExperimentName :: Lens' DescribeExperiment Text
deExperimentName = lens _deExperimentName (\s a -> s {_deExperimentName = a})

instance AWSRequest DescribeExperiment where
  type
    Rs DescribeExperiment =
      DescribeExperimentResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeExperimentResponse'
            <$> (x .?> "ExperimentArn")
            <*> (x .?> "CreationTime")
            <*> (x .?> "Source")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "ExperimentName")
            <*> (x .?> "Description")
            <*> (x .?> "CreatedBy")
            <*> (x .?> "LastModifiedBy")
            <*> (x .?> "DisplayName")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeExperiment

instance NFData DescribeExperiment

instance ToHeaders DescribeExperiment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeExperiment" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeExperiment where
  toJSON DescribeExperiment' {..} =
    object
      ( catMaybes
          [Just ("ExperimentName" .= _deExperimentName)]
      )

instance ToPath DescribeExperiment where
  toPath = const "/"

instance ToQuery DescribeExperiment where
  toQuery = const mempty

-- | /See:/ 'describeExperimentResponse' smart constructor.
data DescribeExperimentResponse = DescribeExperimentResponse'
  { _derrsExperimentARN ::
      !(Maybe Text),
    _derrsCreationTime ::
      !(Maybe POSIX),
    _derrsSource ::
      !( Maybe
           ExperimentSource
       ),
    _derrsLastModifiedTime ::
      !(Maybe POSIX),
    _derrsExperimentName ::
      !(Maybe Text),
    _derrsDescription ::
      !(Maybe Text),
    _derrsCreatedBy ::
      !( Maybe
           UserContext
       ),
    _derrsLastModifiedBy ::
      !( Maybe
           UserContext
       ),
    _derrsDisplayName ::
      !(Maybe Text),
    _derrsResponseStatus ::
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

-- | Creates a value of 'DescribeExperimentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsExperimentARN' - The Amazon Resource Name (ARN) of the experiment.
--
-- * 'derrsCreationTime' - When the experiment was created.
--
-- * 'derrsSource' - The ARN of the source and, optionally, the type.
--
-- * 'derrsLastModifiedTime' - When the experiment was last modified.
--
-- * 'derrsExperimentName' - The name of the experiment.
--
-- * 'derrsDescription' - The description of the experiment.
--
-- * 'derrsCreatedBy' - Who created the experiment.
--
-- * 'derrsLastModifiedBy' - Who last modified the experiment.
--
-- * 'derrsDisplayName' - The name of the experiment as displayed. If @DisplayName@ isn't specified, @ExperimentName@ is displayed.
--
-- * 'derrsResponseStatus' - -- | The response status code.
describeExperimentResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DescribeExperimentResponse
describeExperimentResponse pResponseStatus_ =
  DescribeExperimentResponse'
    { _derrsExperimentARN =
        Nothing,
      _derrsCreationTime = Nothing,
      _derrsSource = Nothing,
      _derrsLastModifiedTime = Nothing,
      _derrsExperimentName = Nothing,
      _derrsDescription = Nothing,
      _derrsCreatedBy = Nothing,
      _derrsLastModifiedBy = Nothing,
      _derrsDisplayName = Nothing,
      _derrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the experiment.
derrsExperimentARN :: Lens' DescribeExperimentResponse (Maybe Text)
derrsExperimentARN = lens _derrsExperimentARN (\s a -> s {_derrsExperimentARN = a})

-- | When the experiment was created.
derrsCreationTime :: Lens' DescribeExperimentResponse (Maybe UTCTime)
derrsCreationTime = lens _derrsCreationTime (\s a -> s {_derrsCreationTime = a}) . mapping _Time

-- | The ARN of the source and, optionally, the type.
derrsSource :: Lens' DescribeExperimentResponse (Maybe ExperimentSource)
derrsSource = lens _derrsSource (\s a -> s {_derrsSource = a})

-- | When the experiment was last modified.
derrsLastModifiedTime :: Lens' DescribeExperimentResponse (Maybe UTCTime)
derrsLastModifiedTime = lens _derrsLastModifiedTime (\s a -> s {_derrsLastModifiedTime = a}) . mapping _Time

-- | The name of the experiment.
derrsExperimentName :: Lens' DescribeExperimentResponse (Maybe Text)
derrsExperimentName = lens _derrsExperimentName (\s a -> s {_derrsExperimentName = a})

-- | The description of the experiment.
derrsDescription :: Lens' DescribeExperimentResponse (Maybe Text)
derrsDescription = lens _derrsDescription (\s a -> s {_derrsDescription = a})

-- | Who created the experiment.
derrsCreatedBy :: Lens' DescribeExperimentResponse (Maybe UserContext)
derrsCreatedBy = lens _derrsCreatedBy (\s a -> s {_derrsCreatedBy = a})

-- | Who last modified the experiment.
derrsLastModifiedBy :: Lens' DescribeExperimentResponse (Maybe UserContext)
derrsLastModifiedBy = lens _derrsLastModifiedBy (\s a -> s {_derrsLastModifiedBy = a})

-- | The name of the experiment as displayed. If @DisplayName@ isn't specified, @ExperimentName@ is displayed.
derrsDisplayName :: Lens' DescribeExperimentResponse (Maybe Text)
derrsDisplayName = lens _derrsDisplayName (\s a -> s {_derrsDisplayName = a})

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeExperimentResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DescribeExperimentResponse
