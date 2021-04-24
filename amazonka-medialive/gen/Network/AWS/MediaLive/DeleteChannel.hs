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
-- Module      : Network.AWS.MediaLive.DeleteChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts deletion of channel. The associated outputs are also deleted.
module Network.AWS.MediaLive.DeleteChannel
  ( -- * Creating a Request
    deleteChannel,
    DeleteChannel,

    -- * Request Lenses
    delChannelId,

    -- * Destructuring the Response
    deleteChannelResponse,
    DeleteChannelResponse,

    -- * Response Lenses
    dcrcrsEncoderSettings,
    dcrcrsRoleARN,
    dcrcrsInputSpecification,
    dcrcrsARN,
    dcrcrsId,
    dcrcrsPipelinesRunningCount,
    dcrcrsChannelClass,
    dcrcrsLogLevel,
    dcrcrsDestinations,
    dcrcrsState,
    dcrcrsName,
    dcrcrsInputAttachments,
    dcrcrsTags,
    dcrcrsPipelineDetails,
    dcrcrsEgressEndpoints,
    dcrcrsVPC,
    dcrcrsCdiInputSpecification,
    dcrcrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DeleteChannelRequest
--
-- /See:/ 'deleteChannel' smart constructor.
newtype DeleteChannel = DeleteChannel'
  { _delChannelId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delChannelId' - Unique ID of the channel.
deleteChannel ::
  -- | 'delChannelId'
  Text ->
  DeleteChannel
deleteChannel pChannelId_ =
  DeleteChannel' {_delChannelId = pChannelId_}

-- | Unique ID of the channel.
delChannelId :: Lens' DeleteChannel Text
delChannelId = lens _delChannelId (\s a -> s {_delChannelId = a})

instance AWSRequest DeleteChannel where
  type Rs DeleteChannel = DeleteChannelResponse
  request = delete mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DeleteChannelResponse'
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

instance Hashable DeleteChannel

instance NFData DeleteChannel

instance ToHeaders DeleteChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteChannel where
  toPath DeleteChannel' {..} =
    mconcat ["/prod/channels/", toBS _delChannelId]

instance ToQuery DeleteChannel where
  toQuery = const mempty

-- | Placeholder documentation for DeleteChannelResponse
--
-- /See:/ 'deleteChannelResponse' smart constructor.
data DeleteChannelResponse = DeleteChannelResponse'
  { _dcrcrsEncoderSettings ::
      !(Maybe EncoderSettings),
    _dcrcrsRoleARN ::
      !(Maybe Text),
    _dcrcrsInputSpecification ::
      !(Maybe InputSpecification),
    _dcrcrsARN :: !(Maybe Text),
    _dcrcrsId :: !(Maybe Text),
    _dcrcrsPipelinesRunningCount ::
      !(Maybe Int),
    _dcrcrsChannelClass ::
      !(Maybe ChannelClass),
    _dcrcrsLogLevel ::
      !(Maybe LogLevel),
    _dcrcrsDestinations ::
      !( Maybe
           [OutputDestination]
       ),
    _dcrcrsState ::
      !(Maybe ChannelState),
    _dcrcrsName ::
      !(Maybe Text),
    _dcrcrsInputAttachments ::
      !(Maybe [InputAttachment]),
    _dcrcrsTags ::
      !(Maybe (Map Text Text)),
    _dcrcrsPipelineDetails ::
      !(Maybe [PipelineDetail]),
    _dcrcrsEgressEndpoints ::
      !( Maybe
           [ChannelEgressEndpoint]
       ),
    _dcrcrsVPC ::
      !(Maybe VPCOutputSettings),
    _dcrcrsCdiInputSpecification ::
      !( Maybe
           CdiInputSpecification
       ),
    _dcrcrsResponseStatus ::
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

-- | Creates a value of 'DeleteChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrcrsEncoderSettings' - Undocumented member.
--
-- * 'dcrcrsRoleARN' - The Amazon Resource Name (ARN) of the role assumed when running the Channel.
--
-- * 'dcrcrsInputSpecification' - Specification of network and file inputs for this channel
--
-- * 'dcrcrsARN' - The unique arn of the channel.
--
-- * 'dcrcrsId' - The unique id of the channel.
--
-- * 'dcrcrsPipelinesRunningCount' - The number of currently healthy pipelines.
--
-- * 'dcrcrsChannelClass' - The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
--
-- * 'dcrcrsLogLevel' - The log level being written to CloudWatch Logs.
--
-- * 'dcrcrsDestinations' - A list of destinations of the channel. For UDP outputs, there is one destination per output. For other types (HLS, for example), there is one destination per packager.
--
-- * 'dcrcrsState' - Undocumented member.
--
-- * 'dcrcrsName' - The name of the channel. (user-mutable)
--
-- * 'dcrcrsInputAttachments' - List of input attachments for channel.
--
-- * 'dcrcrsTags' - A collection of key-value pairs.
--
-- * 'dcrcrsPipelineDetails' - Runtime details for the pipelines of a running channel.
--
-- * 'dcrcrsEgressEndpoints' - The endpoints where outgoing connections initiate from
--
-- * 'dcrcrsVPC' - Settings for VPC output
--
-- * 'dcrcrsCdiInputSpecification' - Specification of CDI inputs for this channel
--
-- * 'dcrcrsResponseStatus' - -- | The response status code.
deleteChannelResponse ::
  -- | 'dcrcrsResponseStatus'
  Int ->
  DeleteChannelResponse
deleteChannelResponse pResponseStatus_ =
  DeleteChannelResponse'
    { _dcrcrsEncoderSettings =
        Nothing,
      _dcrcrsRoleARN = Nothing,
      _dcrcrsInputSpecification = Nothing,
      _dcrcrsARN = Nothing,
      _dcrcrsId = Nothing,
      _dcrcrsPipelinesRunningCount = Nothing,
      _dcrcrsChannelClass = Nothing,
      _dcrcrsLogLevel = Nothing,
      _dcrcrsDestinations = Nothing,
      _dcrcrsState = Nothing,
      _dcrcrsName = Nothing,
      _dcrcrsInputAttachments = Nothing,
      _dcrcrsTags = Nothing,
      _dcrcrsPipelineDetails = Nothing,
      _dcrcrsEgressEndpoints = Nothing,
      _dcrcrsVPC = Nothing,
      _dcrcrsCdiInputSpecification = Nothing,
      _dcrcrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dcrcrsEncoderSettings :: Lens' DeleteChannelResponse (Maybe EncoderSettings)
dcrcrsEncoderSettings = lens _dcrcrsEncoderSettings (\s a -> s {_dcrcrsEncoderSettings = a})

-- | The Amazon Resource Name (ARN) of the role assumed when running the Channel.
dcrcrsRoleARN :: Lens' DeleteChannelResponse (Maybe Text)
dcrcrsRoleARN = lens _dcrcrsRoleARN (\s a -> s {_dcrcrsRoleARN = a})

-- | Specification of network and file inputs for this channel
dcrcrsInputSpecification :: Lens' DeleteChannelResponse (Maybe InputSpecification)
dcrcrsInputSpecification = lens _dcrcrsInputSpecification (\s a -> s {_dcrcrsInputSpecification = a})

-- | The unique arn of the channel.
dcrcrsARN :: Lens' DeleteChannelResponse (Maybe Text)
dcrcrsARN = lens _dcrcrsARN (\s a -> s {_dcrcrsARN = a})

-- | The unique id of the channel.
dcrcrsId :: Lens' DeleteChannelResponse (Maybe Text)
dcrcrsId = lens _dcrcrsId (\s a -> s {_dcrcrsId = a})

-- | The number of currently healthy pipelines.
dcrcrsPipelinesRunningCount :: Lens' DeleteChannelResponse (Maybe Int)
dcrcrsPipelinesRunningCount = lens _dcrcrsPipelinesRunningCount (\s a -> s {_dcrcrsPipelinesRunningCount = a})

-- | The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
dcrcrsChannelClass :: Lens' DeleteChannelResponse (Maybe ChannelClass)
dcrcrsChannelClass = lens _dcrcrsChannelClass (\s a -> s {_dcrcrsChannelClass = a})

-- | The log level being written to CloudWatch Logs.
dcrcrsLogLevel :: Lens' DeleteChannelResponse (Maybe LogLevel)
dcrcrsLogLevel = lens _dcrcrsLogLevel (\s a -> s {_dcrcrsLogLevel = a})

-- | A list of destinations of the channel. For UDP outputs, there is one destination per output. For other types (HLS, for example), there is one destination per packager.
dcrcrsDestinations :: Lens' DeleteChannelResponse [OutputDestination]
dcrcrsDestinations = lens _dcrcrsDestinations (\s a -> s {_dcrcrsDestinations = a}) . _Default . _Coerce

-- | Undocumented member.
dcrcrsState :: Lens' DeleteChannelResponse (Maybe ChannelState)
dcrcrsState = lens _dcrcrsState (\s a -> s {_dcrcrsState = a})

-- | The name of the channel. (user-mutable)
dcrcrsName :: Lens' DeleteChannelResponse (Maybe Text)
dcrcrsName = lens _dcrcrsName (\s a -> s {_dcrcrsName = a})

-- | List of input attachments for channel.
dcrcrsInputAttachments :: Lens' DeleteChannelResponse [InputAttachment]
dcrcrsInputAttachments = lens _dcrcrsInputAttachments (\s a -> s {_dcrcrsInputAttachments = a}) . _Default . _Coerce

-- | A collection of key-value pairs.
dcrcrsTags :: Lens' DeleteChannelResponse (HashMap Text Text)
dcrcrsTags = lens _dcrcrsTags (\s a -> s {_dcrcrsTags = a}) . _Default . _Map

-- | Runtime details for the pipelines of a running channel.
dcrcrsPipelineDetails :: Lens' DeleteChannelResponse [PipelineDetail]
dcrcrsPipelineDetails = lens _dcrcrsPipelineDetails (\s a -> s {_dcrcrsPipelineDetails = a}) . _Default . _Coerce

-- | The endpoints where outgoing connections initiate from
dcrcrsEgressEndpoints :: Lens' DeleteChannelResponse [ChannelEgressEndpoint]
dcrcrsEgressEndpoints = lens _dcrcrsEgressEndpoints (\s a -> s {_dcrcrsEgressEndpoints = a}) . _Default . _Coerce

-- | Settings for VPC output
dcrcrsVPC :: Lens' DeleteChannelResponse (Maybe VPCOutputSettings)
dcrcrsVPC = lens _dcrcrsVPC (\s a -> s {_dcrcrsVPC = a})

-- | Specification of CDI inputs for this channel
dcrcrsCdiInputSpecification :: Lens' DeleteChannelResponse (Maybe CdiInputSpecification)
dcrcrsCdiInputSpecification = lens _dcrcrsCdiInputSpecification (\s a -> s {_dcrcrsCdiInputSpecification = a})

-- | -- | The response status code.
dcrcrsResponseStatus :: Lens' DeleteChannelResponse Int
dcrcrsResponseStatus = lens _dcrcrsResponseStatus (\s a -> s {_dcrcrsResponseStatus = a})

instance NFData DeleteChannelResponse
