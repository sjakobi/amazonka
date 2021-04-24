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
-- Module      : Network.AWS.MediaLive.StopChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running channel
module Network.AWS.MediaLive.StopChannel
  ( -- * Creating a Request
    stopChannel,
    StopChannel,

    -- * Request Lenses
    sChannelId,

    -- * Destructuring the Response
    stopChannelResponse,
    StopChannelResponse,

    -- * Response Lenses
    srsEncoderSettings,
    srsRoleARN,
    srsInputSpecification,
    srsARN,
    srsId,
    srsPipelinesRunningCount,
    srsChannelClass,
    srsLogLevel,
    srsDestinations,
    srsState,
    srsName,
    srsInputAttachments,
    srsTags,
    srsPipelineDetails,
    srsEgressEndpoints,
    srsVPC,
    srsCdiInputSpecification,
    srsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for StopChannelRequest
--
-- /See:/ 'stopChannel' smart constructor.
newtype StopChannel = StopChannel'
  { _sChannelId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sChannelId' - A request to stop a running channel
stopChannel ::
  -- | 'sChannelId'
  Text ->
  StopChannel
stopChannel pChannelId_ =
  StopChannel' {_sChannelId = pChannelId_}

-- | A request to stop a running channel
sChannelId :: Lens' StopChannel Text
sChannelId = lens _sChannelId (\s a -> s {_sChannelId = a})

instance AWSRequest StopChannel where
  type Rs StopChannel = StopChannelResponse
  request = postJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          StopChannelResponse'
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

instance Hashable StopChannel

instance NFData StopChannel

instance ToHeaders StopChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopChannel where
  toJSON = const (Object mempty)

instance ToPath StopChannel where
  toPath StopChannel' {..} =
    mconcat
      ["/prod/channels/", toBS _sChannelId, "/stop"]

instance ToQuery StopChannel where
  toQuery = const mempty

-- | Placeholder documentation for StopChannelResponse
--
-- /See:/ 'stopChannelResponse' smart constructor.
data StopChannelResponse = StopChannelResponse'
  { _srsEncoderSettings ::
      !(Maybe EncoderSettings),
    _srsRoleARN :: !(Maybe Text),
    _srsInputSpecification ::
      !(Maybe InputSpecification),
    _srsARN :: !(Maybe Text),
    _srsId :: !(Maybe Text),
    _srsPipelinesRunningCount ::
      !(Maybe Int),
    _srsChannelClass ::
      !(Maybe ChannelClass),
    _srsLogLevel ::
      !(Maybe LogLevel),
    _srsDestinations ::
      !(Maybe [OutputDestination]),
    _srsState ::
      !(Maybe ChannelState),
    _srsName :: !(Maybe Text),
    _srsInputAttachments ::
      !(Maybe [InputAttachment]),
    _srsTags ::
      !(Maybe (Map Text Text)),
    _srsPipelineDetails ::
      !(Maybe [PipelineDetail]),
    _srsEgressEndpoints ::
      !( Maybe
           [ChannelEgressEndpoint]
       ),
    _srsVPC ::
      !(Maybe VPCOutputSettings),
    _srsCdiInputSpecification ::
      !(Maybe CdiInputSpecification),
    _srsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsEncoderSettings' - Undocumented member.
--
-- * 'srsRoleARN' - The Amazon Resource Name (ARN) of the role assumed when running the Channel.
--
-- * 'srsInputSpecification' - Specification of network and file inputs for this channel
--
-- * 'srsARN' - The unique arn of the channel.
--
-- * 'srsId' - The unique id of the channel.
--
-- * 'srsPipelinesRunningCount' - The number of currently healthy pipelines.
--
-- * 'srsChannelClass' - The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
--
-- * 'srsLogLevel' - The log level being written to CloudWatch Logs.
--
-- * 'srsDestinations' - A list of destinations of the channel. For UDP outputs, there is one destination per output. For other types (HLS, for example), there is one destination per packager.
--
-- * 'srsState' - Undocumented member.
--
-- * 'srsName' - The name of the channel. (user-mutable)
--
-- * 'srsInputAttachments' - List of input attachments for channel.
--
-- * 'srsTags' - A collection of key-value pairs.
--
-- * 'srsPipelineDetails' - Runtime details for the pipelines of a running channel.
--
-- * 'srsEgressEndpoints' - The endpoints where outgoing connections initiate from
--
-- * 'srsVPC' - Settings for VPC output
--
-- * 'srsCdiInputSpecification' - Specification of CDI inputs for this channel
--
-- * 'srsResponseStatus' - -- | The response status code.
stopChannelResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StopChannelResponse
stopChannelResponse pResponseStatus_ =
  StopChannelResponse'
    { _srsEncoderSettings = Nothing,
      _srsRoleARN = Nothing,
      _srsInputSpecification = Nothing,
      _srsARN = Nothing,
      _srsId = Nothing,
      _srsPipelinesRunningCount = Nothing,
      _srsChannelClass = Nothing,
      _srsLogLevel = Nothing,
      _srsDestinations = Nothing,
      _srsState = Nothing,
      _srsName = Nothing,
      _srsInputAttachments = Nothing,
      _srsTags = Nothing,
      _srsPipelineDetails = Nothing,
      _srsEgressEndpoints = Nothing,
      _srsVPC = Nothing,
      _srsCdiInputSpecification = Nothing,
      _srsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
srsEncoderSettings :: Lens' StopChannelResponse (Maybe EncoderSettings)
srsEncoderSettings = lens _srsEncoderSettings (\s a -> s {_srsEncoderSettings = a})

-- | The Amazon Resource Name (ARN) of the role assumed when running the Channel.
srsRoleARN :: Lens' StopChannelResponse (Maybe Text)
srsRoleARN = lens _srsRoleARN (\s a -> s {_srsRoleARN = a})

-- | Specification of network and file inputs for this channel
srsInputSpecification :: Lens' StopChannelResponse (Maybe InputSpecification)
srsInputSpecification = lens _srsInputSpecification (\s a -> s {_srsInputSpecification = a})

-- | The unique arn of the channel.
srsARN :: Lens' StopChannelResponse (Maybe Text)
srsARN = lens _srsARN (\s a -> s {_srsARN = a})

-- | The unique id of the channel.
srsId :: Lens' StopChannelResponse (Maybe Text)
srsId = lens _srsId (\s a -> s {_srsId = a})

-- | The number of currently healthy pipelines.
srsPipelinesRunningCount :: Lens' StopChannelResponse (Maybe Int)
srsPipelinesRunningCount = lens _srsPipelinesRunningCount (\s a -> s {_srsPipelinesRunningCount = a})

-- | The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
srsChannelClass :: Lens' StopChannelResponse (Maybe ChannelClass)
srsChannelClass = lens _srsChannelClass (\s a -> s {_srsChannelClass = a})

-- | The log level being written to CloudWatch Logs.
srsLogLevel :: Lens' StopChannelResponse (Maybe LogLevel)
srsLogLevel = lens _srsLogLevel (\s a -> s {_srsLogLevel = a})

-- | A list of destinations of the channel. For UDP outputs, there is one destination per output. For other types (HLS, for example), there is one destination per packager.
srsDestinations :: Lens' StopChannelResponse [OutputDestination]
srsDestinations = lens _srsDestinations (\s a -> s {_srsDestinations = a}) . _Default . _Coerce

-- | Undocumented member.
srsState :: Lens' StopChannelResponse (Maybe ChannelState)
srsState = lens _srsState (\s a -> s {_srsState = a})

-- | The name of the channel. (user-mutable)
srsName :: Lens' StopChannelResponse (Maybe Text)
srsName = lens _srsName (\s a -> s {_srsName = a})

-- | List of input attachments for channel.
srsInputAttachments :: Lens' StopChannelResponse [InputAttachment]
srsInputAttachments = lens _srsInputAttachments (\s a -> s {_srsInputAttachments = a}) . _Default . _Coerce

-- | A collection of key-value pairs.
srsTags :: Lens' StopChannelResponse (HashMap Text Text)
srsTags = lens _srsTags (\s a -> s {_srsTags = a}) . _Default . _Map

-- | Runtime details for the pipelines of a running channel.
srsPipelineDetails :: Lens' StopChannelResponse [PipelineDetail]
srsPipelineDetails = lens _srsPipelineDetails (\s a -> s {_srsPipelineDetails = a}) . _Default . _Coerce

-- | The endpoints where outgoing connections initiate from
srsEgressEndpoints :: Lens' StopChannelResponse [ChannelEgressEndpoint]
srsEgressEndpoints = lens _srsEgressEndpoints (\s a -> s {_srsEgressEndpoints = a}) . _Default . _Coerce

-- | Settings for VPC output
srsVPC :: Lens' StopChannelResponse (Maybe VPCOutputSettings)
srsVPC = lens _srsVPC (\s a -> s {_srsVPC = a})

-- | Specification of CDI inputs for this channel
srsCdiInputSpecification :: Lens' StopChannelResponse (Maybe CdiInputSpecification)
srsCdiInputSpecification = lens _srsCdiInputSpecification (\s a -> s {_srsCdiInputSpecification = a})

-- | -- | The response status code.
srsResponseStatus :: Lens' StopChannelResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StopChannelResponse
