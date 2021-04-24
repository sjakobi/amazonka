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
-- Module      : Network.AWS.SageMaker.DescribeTrialComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of a trials component's properties.
module Network.AWS.SageMaker.DescribeTrialComponent
  ( -- * Creating a Request
    describeTrialComponent,
    DescribeTrialComponent,

    -- * Request Lenses
    desTrialComponentName,

    -- * Destructuring the Response
    describeTrialComponentResponse,
    DescribeTrialComponentResponse,

    -- * Response Lenses
    describetrialcomponentresponseersStatus,
    describetrialcomponentresponseersMetadataProperties,
    describetrialcomponentresponseersCreationTime,
    describetrialcomponentresponseersTrialComponentARN,
    describetrialcomponentresponseersStartTime,
    describetrialcomponentresponseersSource,
    describetrialcomponentresponseersEndTime,
    describetrialcomponentresponseersMetrics,
    describetrialcomponentresponseersLastModifiedTime,
    describetrialcomponentresponseersInputArtifacts,
    describetrialcomponentresponseersCreatedBy,
    describetrialcomponentresponseersLastModifiedBy,
    describetrialcomponentresponseersDisplayName,
    describetrialcomponentresponseersParameters,
    describetrialcomponentresponseersOutputArtifacts,
    describetrialcomponentresponseersTrialComponentName,
    describetrialcomponentresponseersResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeTrialComponent' smart constructor.
newtype DescribeTrialComponent = DescribeTrialComponent'
  { _desTrialComponentName ::
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

-- | Creates a value of 'DescribeTrialComponent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desTrialComponentName' - The name of the trial component to describe.
describeTrialComponent ::
  -- | 'desTrialComponentName'
  Text ->
  DescribeTrialComponent
describeTrialComponent pTrialComponentName_ =
  DescribeTrialComponent'
    { _desTrialComponentName =
        pTrialComponentName_
    }

-- | The name of the trial component to describe.
desTrialComponentName :: Lens' DescribeTrialComponent Text
desTrialComponentName = lens _desTrialComponentName (\s a -> s {_desTrialComponentName = a})

instance AWSRequest DescribeTrialComponent where
  type
    Rs DescribeTrialComponent =
      DescribeTrialComponentResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeTrialComponentResponse'
            <$> (x .?> "Status")
            <*> (x .?> "MetadataProperties")
            <*> (x .?> "CreationTime")
            <*> (x .?> "TrialComponentArn")
            <*> (x .?> "StartTime")
            <*> (x .?> "Source")
            <*> (x .?> "EndTime")
            <*> (x .?> "Metrics" .!@ mempty)
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "InputArtifacts" .!@ mempty)
            <*> (x .?> "CreatedBy")
            <*> (x .?> "LastModifiedBy")
            <*> (x .?> "DisplayName")
            <*> (x .?> "Parameters" .!@ mempty)
            <*> (x .?> "OutputArtifacts" .!@ mempty)
            <*> (x .?> "TrialComponentName")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTrialComponent

instance NFData DescribeTrialComponent

instance ToHeaders DescribeTrialComponent where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeTrialComponent" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTrialComponent where
  toJSON DescribeTrialComponent' {..} =
    object
      ( catMaybes
          [ Just
              ("TrialComponentName" .= _desTrialComponentName)
          ]
      )

instance ToPath DescribeTrialComponent where
  toPath = const "/"

instance ToQuery DescribeTrialComponent where
  toQuery = const mempty

-- | /See:/ 'describeTrialComponentResponse' smart constructor.
data DescribeTrialComponentResponse = DescribeTrialComponentResponse'
  { _describetrialcomponentresponseersStatus ::
      !( Maybe
           TrialComponentStatus
       ),
    _describetrialcomponentresponseersMetadataProperties ::
      !( Maybe
           MetadataProperties
       ),
    _describetrialcomponentresponseersCreationTime ::
      !( Maybe
           POSIX
       ),
    _describetrialcomponentresponseersTrialComponentARN ::
      !( Maybe
           Text
       ),
    _describetrialcomponentresponseersStartTime ::
      !( Maybe
           POSIX
       ),
    _describetrialcomponentresponseersSource ::
      !( Maybe
           TrialComponentSource
       ),
    _describetrialcomponentresponseersEndTime ::
      !( Maybe
           POSIX
       ),
    _describetrialcomponentresponseersMetrics ::
      !( Maybe
           [TrialComponentMetricSummary]
       ),
    _describetrialcomponentresponseersLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _describetrialcomponentresponseersInputArtifacts ::
      !( Maybe
           ( Map
               Text
               TrialComponentArtifact
           )
       ),
    _describetrialcomponentresponseersCreatedBy ::
      !( Maybe
           UserContext
       ),
    _describetrialcomponentresponseersLastModifiedBy ::
      !( Maybe
           UserContext
       ),
    _describetrialcomponentresponseersDisplayName ::
      !( Maybe
           Text
       ),
    _describetrialcomponentresponseersParameters ::
      !( Maybe
           ( Map
               Text
               TrialComponentParameterValue
           )
       ),
    _describetrialcomponentresponseersOutputArtifacts ::
      !( Maybe
           ( Map
               Text
               TrialComponentArtifact
           )
       ),
    _describetrialcomponentresponseersTrialComponentName ::
      !( Maybe
           Text
       ),
    _describetrialcomponentresponseersResponseStatus ::
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

-- | Creates a value of 'DescribeTrialComponentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'describetrialcomponentresponseersStatus' - The status of the component. States include:     * InProgress     * Completed     * Failed
--
-- * 'describetrialcomponentresponseersMetadataProperties' - Undocumented member.
--
-- * 'describetrialcomponentresponseersCreationTime' - When the component was created.
--
-- * 'describetrialcomponentresponseersTrialComponentARN' - The Amazon Resource Name (ARN) of the trial component.
--
-- * 'describetrialcomponentresponseersStartTime' - When the component started.
--
-- * 'describetrialcomponentresponseersSource' - The Amazon Resource Name (ARN) of the source and, optionally, the job type.
--
-- * 'describetrialcomponentresponseersEndTime' - When the component ended.
--
-- * 'describetrialcomponentresponseersMetrics' - The metrics for the component.
--
-- * 'describetrialcomponentresponseersLastModifiedTime' - When the component was last modified.
--
-- * 'describetrialcomponentresponseersInputArtifacts' - The input artifacts of the component.
--
-- * 'describetrialcomponentresponseersCreatedBy' - Who created the component.
--
-- * 'describetrialcomponentresponseersLastModifiedBy' - Who last modified the component.
--
-- * 'describetrialcomponentresponseersDisplayName' - The name of the component as displayed. If @DisplayName@ isn't specified, @TrialComponentName@ is displayed.
--
-- * 'describetrialcomponentresponseersParameters' - The hyperparameters of the component.
--
-- * 'describetrialcomponentresponseersOutputArtifacts' - The output artifacts of the component.
--
-- * 'describetrialcomponentresponseersTrialComponentName' - The name of the trial component.
--
-- * 'describetrialcomponentresponseersResponseStatus' - -- | The response status code.
describeTrialComponentResponse ::
  -- | 'describetrialcomponentresponseersResponseStatus'
  Int ->
  DescribeTrialComponentResponse
describeTrialComponentResponse pResponseStatus_ =
  DescribeTrialComponentResponse'
    { _describetrialcomponentresponseersStatus =
        Nothing,
      _describetrialcomponentresponseersMetadataProperties =
        Nothing,
      _describetrialcomponentresponseersCreationTime =
        Nothing,
      _describetrialcomponentresponseersTrialComponentARN =
        Nothing,
      _describetrialcomponentresponseersStartTime =
        Nothing,
      _describetrialcomponentresponseersSource =
        Nothing,
      _describetrialcomponentresponseersEndTime =
        Nothing,
      _describetrialcomponentresponseersMetrics =
        Nothing,
      _describetrialcomponentresponseersLastModifiedTime =
        Nothing,
      _describetrialcomponentresponseersInputArtifacts =
        Nothing,
      _describetrialcomponentresponseersCreatedBy =
        Nothing,
      _describetrialcomponentresponseersLastModifiedBy =
        Nothing,
      _describetrialcomponentresponseersDisplayName =
        Nothing,
      _describetrialcomponentresponseersParameters =
        Nothing,
      _describetrialcomponentresponseersOutputArtifacts =
        Nothing,
      _describetrialcomponentresponseersTrialComponentName =
        Nothing,
      _describetrialcomponentresponseersResponseStatus =
        pResponseStatus_
    }

-- | The status of the component. States include:     * InProgress     * Completed     * Failed
describetrialcomponentresponseersStatus :: Lens' DescribeTrialComponentResponse (Maybe TrialComponentStatus)
describetrialcomponentresponseersStatus = lens _describetrialcomponentresponseersStatus (\s a -> s {_describetrialcomponentresponseersStatus = a})

-- | Undocumented member.
describetrialcomponentresponseersMetadataProperties :: Lens' DescribeTrialComponentResponse (Maybe MetadataProperties)
describetrialcomponentresponseersMetadataProperties = lens _describetrialcomponentresponseersMetadataProperties (\s a -> s {_describetrialcomponentresponseersMetadataProperties = a})

-- | When the component was created.
describetrialcomponentresponseersCreationTime :: Lens' DescribeTrialComponentResponse (Maybe UTCTime)
describetrialcomponentresponseersCreationTime = lens _describetrialcomponentresponseersCreationTime (\s a -> s {_describetrialcomponentresponseersCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the trial component.
describetrialcomponentresponseersTrialComponentARN :: Lens' DescribeTrialComponentResponse (Maybe Text)
describetrialcomponentresponseersTrialComponentARN = lens _describetrialcomponentresponseersTrialComponentARN (\s a -> s {_describetrialcomponentresponseersTrialComponentARN = a})

-- | When the component started.
describetrialcomponentresponseersStartTime :: Lens' DescribeTrialComponentResponse (Maybe UTCTime)
describetrialcomponentresponseersStartTime = lens _describetrialcomponentresponseersStartTime (\s a -> s {_describetrialcomponentresponseersStartTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the source and, optionally, the job type.
describetrialcomponentresponseersSource :: Lens' DescribeTrialComponentResponse (Maybe TrialComponentSource)
describetrialcomponentresponseersSource = lens _describetrialcomponentresponseersSource (\s a -> s {_describetrialcomponentresponseersSource = a})

-- | When the component ended.
describetrialcomponentresponseersEndTime :: Lens' DescribeTrialComponentResponse (Maybe UTCTime)
describetrialcomponentresponseersEndTime = lens _describetrialcomponentresponseersEndTime (\s a -> s {_describetrialcomponentresponseersEndTime = a}) . mapping _Time

-- | The metrics for the component.
describetrialcomponentresponseersMetrics :: Lens' DescribeTrialComponentResponse [TrialComponentMetricSummary]
describetrialcomponentresponseersMetrics = lens _describetrialcomponentresponseersMetrics (\s a -> s {_describetrialcomponentresponseersMetrics = a}) . _Default . _Coerce

-- | When the component was last modified.
describetrialcomponentresponseersLastModifiedTime :: Lens' DescribeTrialComponentResponse (Maybe UTCTime)
describetrialcomponentresponseersLastModifiedTime = lens _describetrialcomponentresponseersLastModifiedTime (\s a -> s {_describetrialcomponentresponseersLastModifiedTime = a}) . mapping _Time

-- | The input artifacts of the component.
describetrialcomponentresponseersInputArtifacts :: Lens' DescribeTrialComponentResponse (HashMap Text TrialComponentArtifact)
describetrialcomponentresponseersInputArtifacts = lens _describetrialcomponentresponseersInputArtifacts (\s a -> s {_describetrialcomponentresponseersInputArtifacts = a}) . _Default . _Map

-- | Who created the component.
describetrialcomponentresponseersCreatedBy :: Lens' DescribeTrialComponentResponse (Maybe UserContext)
describetrialcomponentresponseersCreatedBy = lens _describetrialcomponentresponseersCreatedBy (\s a -> s {_describetrialcomponentresponseersCreatedBy = a})

-- | Who last modified the component.
describetrialcomponentresponseersLastModifiedBy :: Lens' DescribeTrialComponentResponse (Maybe UserContext)
describetrialcomponentresponseersLastModifiedBy = lens _describetrialcomponentresponseersLastModifiedBy (\s a -> s {_describetrialcomponentresponseersLastModifiedBy = a})

-- | The name of the component as displayed. If @DisplayName@ isn't specified, @TrialComponentName@ is displayed.
describetrialcomponentresponseersDisplayName :: Lens' DescribeTrialComponentResponse (Maybe Text)
describetrialcomponentresponseersDisplayName = lens _describetrialcomponentresponseersDisplayName (\s a -> s {_describetrialcomponentresponseersDisplayName = a})

-- | The hyperparameters of the component.
describetrialcomponentresponseersParameters :: Lens' DescribeTrialComponentResponse (HashMap Text TrialComponentParameterValue)
describetrialcomponentresponseersParameters = lens _describetrialcomponentresponseersParameters (\s a -> s {_describetrialcomponentresponseersParameters = a}) . _Default . _Map

-- | The output artifacts of the component.
describetrialcomponentresponseersOutputArtifacts :: Lens' DescribeTrialComponentResponse (HashMap Text TrialComponentArtifact)
describetrialcomponentresponseersOutputArtifacts = lens _describetrialcomponentresponseersOutputArtifacts (\s a -> s {_describetrialcomponentresponseersOutputArtifacts = a}) . _Default . _Map

-- | The name of the trial component.
describetrialcomponentresponseersTrialComponentName :: Lens' DescribeTrialComponentResponse (Maybe Text)
describetrialcomponentresponseersTrialComponentName = lens _describetrialcomponentresponseersTrialComponentName (\s a -> s {_describetrialcomponentresponseersTrialComponentName = a})

-- | -- | The response status code.
describetrialcomponentresponseersResponseStatus :: Lens' DescribeTrialComponentResponse Int
describetrialcomponentresponseersResponseStatus = lens _describetrialcomponentresponseersResponseStatus (\s a -> s {_describetrialcomponentresponseersResponseStatus = a})

instance NFData DescribeTrialComponentResponse
