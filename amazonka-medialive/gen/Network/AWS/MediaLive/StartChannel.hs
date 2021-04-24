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
-- Module      : Network.AWS.MediaLive.StartChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an existing channel
module Network.AWS.MediaLive.StartChannel
  ( -- * Creating a Request
    startChannel,
    StartChannel,

    -- * Request Lenses
    scChannelId,

    -- * Destructuring the Response
    startChannelResponse,
    StartChannelResponse,

    -- * Response Lenses
    scrrsEncoderSettings,
    scrrsRoleARN,
    scrrsInputSpecification,
    scrrsARN,
    scrrsId,
    scrrsPipelinesRunningCount,
    scrrsChannelClass,
    scrrsLogLevel,
    scrrsDestinations,
    scrrsState,
    scrrsName,
    scrrsInputAttachments,
    scrrsTags,
    scrrsPipelineDetails,
    scrrsEgressEndpoints,
    scrrsVPC,
    scrrsCdiInputSpecification,
    scrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for StartChannelRequest
--
-- /See:/ 'startChannel' smart constructor.
newtype StartChannel = StartChannel'
  { _scChannelId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scChannelId' - A request to start a channel
startChannel ::
  -- | 'scChannelId'
  Text ->
  StartChannel
startChannel pChannelId_ =
  StartChannel' {_scChannelId = pChannelId_}

-- | A request to start a channel
scChannelId :: Lens' StartChannel Text
scChannelId = lens _scChannelId (\s a -> s {_scChannelId = a})

instance AWSRequest StartChannel where
  type Rs StartChannel = StartChannelResponse
  request = postJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          StartChannelResponse'
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

instance Hashable StartChannel

instance NFData StartChannel

instance ToHeaders StartChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartChannel where
  toJSON = const (Object mempty)

instance ToPath StartChannel where
  toPath StartChannel' {..} =
    mconcat
      ["/prod/channels/", toBS _scChannelId, "/start"]

instance ToQuery StartChannel where
  toQuery = const mempty

-- | Placeholder documentation for StartChannelResponse
--
-- /See:/ 'startChannelResponse' smart constructor.
data StartChannelResponse = StartChannelResponse'
  { _scrrsEncoderSettings ::
      !(Maybe EncoderSettings),
    _scrrsRoleARN ::
      !(Maybe Text),
    _scrrsInputSpecification ::
      !(Maybe InputSpecification),
    _scrrsARN :: !(Maybe Text),
    _scrrsId :: !(Maybe Text),
    _scrrsPipelinesRunningCount ::
      !(Maybe Int),
    _scrrsChannelClass ::
      !(Maybe ChannelClass),
    _scrrsLogLevel ::
      !(Maybe LogLevel),
    _scrrsDestinations ::
      !(Maybe [OutputDestination]),
    _scrrsState ::
      !(Maybe ChannelState),
    _scrrsName :: !(Maybe Text),
    _scrrsInputAttachments ::
      !(Maybe [InputAttachment]),
    _scrrsTags ::
      !(Maybe (Map Text Text)),
    _scrrsPipelineDetails ::
      !(Maybe [PipelineDetail]),
    _scrrsEgressEndpoints ::
      !( Maybe
           [ChannelEgressEndpoint]
       ),
    _scrrsVPC ::
      !(Maybe VPCOutputSettings),
    _scrrsCdiInputSpecification ::
      !( Maybe
           CdiInputSpecification
       ),
    _scrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrrsEncoderSettings' - Undocumented member.
--
-- * 'scrrsRoleARN' - The Amazon Resource Name (ARN) of the role assumed when running the Channel.
--
-- * 'scrrsInputSpecification' - Specification of network and file inputs for this channel
--
-- * 'scrrsARN' - The unique arn of the channel.
--
-- * 'scrrsId' - The unique id of the channel.
--
-- * 'scrrsPipelinesRunningCount' - The number of currently healthy pipelines.
--
-- * 'scrrsChannelClass' - The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
--
-- * 'scrrsLogLevel' - The log level being written to CloudWatch Logs.
--
-- * 'scrrsDestinations' - A list of destinations of the channel. For UDP outputs, there is one destination per output. For other types (HLS, for example), there is one destination per packager.
--
-- * 'scrrsState' - Undocumented member.
--
-- * 'scrrsName' - The name of the channel. (user-mutable)
--
-- * 'scrrsInputAttachments' - List of input attachments for channel.
--
-- * 'scrrsTags' - A collection of key-value pairs.
--
-- * 'scrrsPipelineDetails' - Runtime details for the pipelines of a running channel.
--
-- * 'scrrsEgressEndpoints' - The endpoints where outgoing connections initiate from
--
-- * 'scrrsVPC' - Settings for VPC output
--
-- * 'scrrsCdiInputSpecification' - Specification of CDI inputs for this channel
--
-- * 'scrrsResponseStatus' - -- | The response status code.
startChannelResponse ::
  -- | 'scrrsResponseStatus'
  Int ->
  StartChannelResponse
startChannelResponse pResponseStatus_ =
  StartChannelResponse'
    { _scrrsEncoderSettings =
        Nothing,
      _scrrsRoleARN = Nothing,
      _scrrsInputSpecification = Nothing,
      _scrrsARN = Nothing,
      _scrrsId = Nothing,
      _scrrsPipelinesRunningCount = Nothing,
      _scrrsChannelClass = Nothing,
      _scrrsLogLevel = Nothing,
      _scrrsDestinations = Nothing,
      _scrrsState = Nothing,
      _scrrsName = Nothing,
      _scrrsInputAttachments = Nothing,
      _scrrsTags = Nothing,
      _scrrsPipelineDetails = Nothing,
      _scrrsEgressEndpoints = Nothing,
      _scrrsVPC = Nothing,
      _scrrsCdiInputSpecification = Nothing,
      _scrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
scrrsEncoderSettings :: Lens' StartChannelResponse (Maybe EncoderSettings)
scrrsEncoderSettings = lens _scrrsEncoderSettings (\s a -> s {_scrrsEncoderSettings = a})

-- | The Amazon Resource Name (ARN) of the role assumed when running the Channel.
scrrsRoleARN :: Lens' StartChannelResponse (Maybe Text)
scrrsRoleARN = lens _scrrsRoleARN (\s a -> s {_scrrsRoleARN = a})

-- | Specification of network and file inputs for this channel
scrrsInputSpecification :: Lens' StartChannelResponse (Maybe InputSpecification)
scrrsInputSpecification = lens _scrrsInputSpecification (\s a -> s {_scrrsInputSpecification = a})

-- | The unique arn of the channel.
scrrsARN :: Lens' StartChannelResponse (Maybe Text)
scrrsARN = lens _scrrsARN (\s a -> s {_scrrsARN = a})

-- | The unique id of the channel.
scrrsId :: Lens' StartChannelResponse (Maybe Text)
scrrsId = lens _scrrsId (\s a -> s {_scrrsId = a})

-- | The number of currently healthy pipelines.
scrrsPipelinesRunningCount :: Lens' StartChannelResponse (Maybe Int)
scrrsPipelinesRunningCount = lens _scrrsPipelinesRunningCount (\s a -> s {_scrrsPipelinesRunningCount = a})

-- | The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
scrrsChannelClass :: Lens' StartChannelResponse (Maybe ChannelClass)
scrrsChannelClass = lens _scrrsChannelClass (\s a -> s {_scrrsChannelClass = a})

-- | The log level being written to CloudWatch Logs.
scrrsLogLevel :: Lens' StartChannelResponse (Maybe LogLevel)
scrrsLogLevel = lens _scrrsLogLevel (\s a -> s {_scrrsLogLevel = a})

-- | A list of destinations of the channel. For UDP outputs, there is one destination per output. For other types (HLS, for example), there is one destination per packager.
scrrsDestinations :: Lens' StartChannelResponse [OutputDestination]
scrrsDestinations = lens _scrrsDestinations (\s a -> s {_scrrsDestinations = a}) . _Default . _Coerce

-- | Undocumented member.
scrrsState :: Lens' StartChannelResponse (Maybe ChannelState)
scrrsState = lens _scrrsState (\s a -> s {_scrrsState = a})

-- | The name of the channel. (user-mutable)
scrrsName :: Lens' StartChannelResponse (Maybe Text)
scrrsName = lens _scrrsName (\s a -> s {_scrrsName = a})

-- | List of input attachments for channel.
scrrsInputAttachments :: Lens' StartChannelResponse [InputAttachment]
scrrsInputAttachments = lens _scrrsInputAttachments (\s a -> s {_scrrsInputAttachments = a}) . _Default . _Coerce

-- | A collection of key-value pairs.
scrrsTags :: Lens' StartChannelResponse (HashMap Text Text)
scrrsTags = lens _scrrsTags (\s a -> s {_scrrsTags = a}) . _Default . _Map

-- | Runtime details for the pipelines of a running channel.
scrrsPipelineDetails :: Lens' StartChannelResponse [PipelineDetail]
scrrsPipelineDetails = lens _scrrsPipelineDetails (\s a -> s {_scrrsPipelineDetails = a}) . _Default . _Coerce

-- | The endpoints where outgoing connections initiate from
scrrsEgressEndpoints :: Lens' StartChannelResponse [ChannelEgressEndpoint]
scrrsEgressEndpoints = lens _scrrsEgressEndpoints (\s a -> s {_scrrsEgressEndpoints = a}) . _Default . _Coerce

-- | Settings for VPC output
scrrsVPC :: Lens' StartChannelResponse (Maybe VPCOutputSettings)
scrrsVPC = lens _scrrsVPC (\s a -> s {_scrrsVPC = a})

-- | Specification of CDI inputs for this channel
scrrsCdiInputSpecification :: Lens' StartChannelResponse (Maybe CdiInputSpecification)
scrrsCdiInputSpecification = lens _scrrsCdiInputSpecification (\s a -> s {_scrrsCdiInputSpecification = a})

-- | -- | The response status code.
scrrsResponseStatus :: Lens' StartChannelResponse Int
scrrsResponseStatus = lens _scrrsResponseStatus (\s a -> s {_scrrsResponseStatus = a})

instance NFData StartChannelResponse
