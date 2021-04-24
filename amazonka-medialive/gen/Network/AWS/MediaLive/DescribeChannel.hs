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
-- Module      : Network.AWS.MediaLive.DescribeChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about a channel
module Network.AWS.MediaLive.DescribeChannel
  ( -- * Creating a Request
    describeChannel,
    DescribeChannel,

    -- * Request Lenses
    dcChannelId,

    -- * Destructuring the Response
    describeChannelResponse,
    DescribeChannelResponse,

    -- * Response Lenses
    dcrrsEncoderSettings,
    dcrrsRoleARN,
    dcrrsInputSpecification,
    dcrrsARN,
    dcrrsId,
    dcrrsPipelinesRunningCount,
    dcrrsChannelClass,
    dcrrsLogLevel,
    dcrrsDestinations,
    dcrrsState,
    dcrrsName,
    dcrrsInputAttachments,
    dcrrsTags,
    dcrrsPipelineDetails,
    dcrrsEgressEndpoints,
    dcrrsVPC,
    dcrrsCdiInputSpecification,
    dcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DescribeChannelRequest
--
-- /See:/ 'describeChannel' smart constructor.
newtype DescribeChannel = DescribeChannel'
  { _dcChannelId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcChannelId' - channel ID
describeChannel ::
  -- | 'dcChannelId'
  Text ->
  DescribeChannel
describeChannel pChannelId_ =
  DescribeChannel' {_dcChannelId = pChannelId_}

-- | channel ID
dcChannelId :: Lens' DescribeChannel Text
dcChannelId = lens _dcChannelId (\s a -> s {_dcChannelId = a})

instance AWSRequest DescribeChannel where
  type Rs DescribeChannel = DescribeChannelResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DescribeChannelResponse'
            <$> (x .?> "encoderSettings")
            <*> (x .?> "roleArn")
            <*> (x .?> "inputSpecification")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "pipelinesRunningCount")
            <*> (x .?> "channelClass")
            <*> (x .?> "logLevel")
            <*> (x .?> "destinations" .!@ mempty)
            <*> (x .?> "state")
            <*> (x .?> "name")
            <*> (x .?> "inputAttachments" .!@ mempty)
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "pipelineDetails" .!@ mempty)
            <*> (x .?> "egressEndpoints" .!@ mempty)
            <*> (x .?> "vpc")
            <*> (x .?> "cdiInputSpecification")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeChannel

instance NFData DescribeChannel

instance ToHeaders DescribeChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeChannel where
  toPath DescribeChannel' {..} =
    mconcat ["/prod/channels/", toBS _dcChannelId]

instance ToQuery DescribeChannel where
  toQuery = const mempty

-- | Placeholder documentation for DescribeChannelResponse
--
-- /See:/ 'describeChannelResponse' smart constructor.
data DescribeChannelResponse = DescribeChannelResponse'
  { _dcrrsEncoderSettings ::
      !( Maybe
           EncoderSettings
       ),
    _dcrrsRoleARN ::
      !(Maybe Text),
    _dcrrsInputSpecification ::
      !( Maybe
           InputSpecification
       ),
    _dcrrsARN ::
      !(Maybe Text),
    _dcrrsId ::
      !(Maybe Text),
    _dcrrsPipelinesRunningCount ::
      !(Maybe Int),
    _dcrrsChannelClass ::
      !(Maybe ChannelClass),
    _dcrrsLogLevel ::
      !(Maybe LogLevel),
    _dcrrsDestinations ::
      !( Maybe
           [OutputDestination]
       ),
    _dcrrsState ::
      !(Maybe ChannelState),
    _dcrrsName ::
      !(Maybe Text),
    _dcrrsInputAttachments ::
      !( Maybe
           [InputAttachment]
       ),
    _dcrrsTags ::
      !( Maybe
           (Map Text Text)
       ),
    _dcrrsPipelineDetails ::
      !( Maybe
           [PipelineDetail]
       ),
    _dcrrsEgressEndpoints ::
      !( Maybe
           [ChannelEgressEndpoint]
       ),
    _dcrrsVPC ::
      !( Maybe
           VPCOutputSettings
       ),
    _dcrrsCdiInputSpecification ::
      !( Maybe
           CdiInputSpecification
       ),
    _dcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsEncoderSettings' - Undocumented member.
--
-- * 'dcrrsRoleARN' - The Amazon Resource Name (ARN) of the role assumed when running the Channel.
--
-- * 'dcrrsInputSpecification' - Specification of network and file inputs for this channel
--
-- * 'dcrrsARN' - The unique arn of the channel.
--
-- * 'dcrrsId' - The unique id of the channel.
--
-- * 'dcrrsPipelinesRunningCount' - The number of currently healthy pipelines.
--
-- * 'dcrrsChannelClass' - The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
--
-- * 'dcrrsLogLevel' - The log level being written to CloudWatch Logs.
--
-- * 'dcrrsDestinations' - A list of destinations of the channel. For UDP outputs, there is one destination per output. For other types (HLS, for example), there is one destination per packager.
--
-- * 'dcrrsState' - Undocumented member.
--
-- * 'dcrrsName' - The name of the channel. (user-mutable)
--
-- * 'dcrrsInputAttachments' - List of input attachments for channel.
--
-- * 'dcrrsTags' - A collection of key-value pairs.
--
-- * 'dcrrsPipelineDetails' - Runtime details for the pipelines of a running channel.
--
-- * 'dcrrsEgressEndpoints' - The endpoints where outgoing connections initiate from
--
-- * 'dcrrsVPC' - Settings for VPC output
--
-- * 'dcrrsCdiInputSpecification' - Specification of CDI inputs for this channel
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
describeChannelResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DescribeChannelResponse
describeChannelResponse pResponseStatus_ =
  DescribeChannelResponse'
    { _dcrrsEncoderSettings =
        Nothing,
      _dcrrsRoleARN = Nothing,
      _dcrrsInputSpecification = Nothing,
      _dcrrsARN = Nothing,
      _dcrrsId = Nothing,
      _dcrrsPipelinesRunningCount = Nothing,
      _dcrrsChannelClass = Nothing,
      _dcrrsLogLevel = Nothing,
      _dcrrsDestinations = Nothing,
      _dcrrsState = Nothing,
      _dcrrsName = Nothing,
      _dcrrsInputAttachments = Nothing,
      _dcrrsTags = Nothing,
      _dcrrsPipelineDetails = Nothing,
      _dcrrsEgressEndpoints = Nothing,
      _dcrrsVPC = Nothing,
      _dcrrsCdiInputSpecification = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dcrrsEncoderSettings :: Lens' DescribeChannelResponse (Maybe EncoderSettings)
dcrrsEncoderSettings = lens _dcrrsEncoderSettings (\s a -> s {_dcrrsEncoderSettings = a})

-- | The Amazon Resource Name (ARN) of the role assumed when running the Channel.
dcrrsRoleARN :: Lens' DescribeChannelResponse (Maybe Text)
dcrrsRoleARN = lens _dcrrsRoleARN (\s a -> s {_dcrrsRoleARN = a})

-- | Specification of network and file inputs for this channel
dcrrsInputSpecification :: Lens' DescribeChannelResponse (Maybe InputSpecification)
dcrrsInputSpecification = lens _dcrrsInputSpecification (\s a -> s {_dcrrsInputSpecification = a})

-- | The unique arn of the channel.
dcrrsARN :: Lens' DescribeChannelResponse (Maybe Text)
dcrrsARN = lens _dcrrsARN (\s a -> s {_dcrrsARN = a})

-- | The unique id of the channel.
dcrrsId :: Lens' DescribeChannelResponse (Maybe Text)
dcrrsId = lens _dcrrsId (\s a -> s {_dcrrsId = a})

-- | The number of currently healthy pipelines.
dcrrsPipelinesRunningCount :: Lens' DescribeChannelResponse (Maybe Int)
dcrrsPipelinesRunningCount = lens _dcrrsPipelinesRunningCount (\s a -> s {_dcrrsPipelinesRunningCount = a})

-- | The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
dcrrsChannelClass :: Lens' DescribeChannelResponse (Maybe ChannelClass)
dcrrsChannelClass = lens _dcrrsChannelClass (\s a -> s {_dcrrsChannelClass = a})

-- | The log level being written to CloudWatch Logs.
dcrrsLogLevel :: Lens' DescribeChannelResponse (Maybe LogLevel)
dcrrsLogLevel = lens _dcrrsLogLevel (\s a -> s {_dcrrsLogLevel = a})

-- | A list of destinations of the channel. For UDP outputs, there is one destination per output. For other types (HLS, for example), there is one destination per packager.
dcrrsDestinations :: Lens' DescribeChannelResponse [OutputDestination]
dcrrsDestinations = lens _dcrrsDestinations (\s a -> s {_dcrrsDestinations = a}) . _Default . _Coerce

-- | Undocumented member.
dcrrsState :: Lens' DescribeChannelResponse (Maybe ChannelState)
dcrrsState = lens _dcrrsState (\s a -> s {_dcrrsState = a})

-- | The name of the channel. (user-mutable)
dcrrsName :: Lens' DescribeChannelResponse (Maybe Text)
dcrrsName = lens _dcrrsName (\s a -> s {_dcrrsName = a})

-- | List of input attachments for channel.
dcrrsInputAttachments :: Lens' DescribeChannelResponse [InputAttachment]
dcrrsInputAttachments = lens _dcrrsInputAttachments (\s a -> s {_dcrrsInputAttachments = a}) . _Default . _Coerce

-- | A collection of key-value pairs.
dcrrsTags :: Lens' DescribeChannelResponse (HashMap Text Text)
dcrrsTags = lens _dcrrsTags (\s a -> s {_dcrrsTags = a}) . _Default . _Map

-- | Runtime details for the pipelines of a running channel.
dcrrsPipelineDetails :: Lens' DescribeChannelResponse [PipelineDetail]
dcrrsPipelineDetails = lens _dcrrsPipelineDetails (\s a -> s {_dcrrsPipelineDetails = a}) . _Default . _Coerce

-- | The endpoints where outgoing connections initiate from
dcrrsEgressEndpoints :: Lens' DescribeChannelResponse [ChannelEgressEndpoint]
dcrrsEgressEndpoints = lens _dcrrsEgressEndpoints (\s a -> s {_dcrrsEgressEndpoints = a}) . _Default . _Coerce

-- | Settings for VPC output
dcrrsVPC :: Lens' DescribeChannelResponse (Maybe VPCOutputSettings)
dcrrsVPC = lens _dcrrsVPC (\s a -> s {_dcrrsVPC = a})

-- | Specification of CDI inputs for this channel
dcrrsCdiInputSpecification :: Lens' DescribeChannelResponse (Maybe CdiInputSpecification)
dcrrsCdiInputSpecification = lens _dcrrsCdiInputSpecification (\s a -> s {_dcrrsCdiInputSpecification = a})

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeChannelResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeChannelResponse
