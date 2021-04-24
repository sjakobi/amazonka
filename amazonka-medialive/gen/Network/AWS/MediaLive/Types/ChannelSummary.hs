{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ChannelSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ChannelSummary where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.CdiInputSpecification
import Network.AWS.MediaLive.Types.ChannelClass
import Network.AWS.MediaLive.Types.ChannelEgressEndpoint
import Network.AWS.MediaLive.Types.ChannelState
import Network.AWS.MediaLive.Types.InputAttachment
import Network.AWS.MediaLive.Types.InputSpecification
import Network.AWS.MediaLive.Types.LogLevel
import Network.AWS.MediaLive.Types.OutputDestination
import Network.AWS.MediaLive.Types.VPCOutputSettings
import Network.AWS.Prelude

-- | Placeholder documentation for ChannelSummary
--
-- /See:/ 'channelSummary' smart constructor.
data ChannelSummary = ChannelSummary'
  { _chaRoleARN ::
      !(Maybe Text),
    _chaInputSpecification ::
      !(Maybe InputSpecification),
    _chaARN :: !(Maybe Text),
    _chaId :: !(Maybe Text),
    _chaPipelinesRunningCount :: !(Maybe Int),
    _chaChannelClass :: !(Maybe ChannelClass),
    _chaLogLevel :: !(Maybe LogLevel),
    _chaDestinations ::
      !(Maybe [OutputDestination]),
    _chaState :: !(Maybe ChannelState),
    _chaName :: !(Maybe Text),
    _chaInputAttachments ::
      !(Maybe [InputAttachment]),
    _chaTags :: !(Maybe (Map Text Text)),
    _chaEgressEndpoints ::
      !(Maybe [ChannelEgressEndpoint]),
    _chaVPC :: !(Maybe VPCOutputSettings),
    _chaCdiInputSpecification ::
      !(Maybe CdiInputSpecification)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ChannelSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaRoleARN' - The Amazon Resource Name (ARN) of the role assumed when running the Channel.
--
-- * 'chaInputSpecification' - Specification of network and file inputs for this channel
--
-- * 'chaARN' - The unique arn of the channel.
--
-- * 'chaId' - The unique id of the channel.
--
-- * 'chaPipelinesRunningCount' - The number of currently healthy pipelines.
--
-- * 'chaChannelClass' - The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
--
-- * 'chaLogLevel' - The log level being written to CloudWatch Logs.
--
-- * 'chaDestinations' - A list of destinations of the channel. For UDP outputs, there is one destination per output. For other types (HLS, for example), there is one destination per packager.
--
-- * 'chaState' - Undocumented member.
--
-- * 'chaName' - The name of the channel. (user-mutable)
--
-- * 'chaInputAttachments' - List of input attachments for channel.
--
-- * 'chaTags' - A collection of key-value pairs.
--
-- * 'chaEgressEndpoints' - The endpoints where outgoing connections initiate from
--
-- * 'chaVPC' - Settings for VPC output
--
-- * 'chaCdiInputSpecification' - Specification of CDI inputs for this channel
channelSummary ::
  ChannelSummary
channelSummary =
  ChannelSummary'
    { _chaRoleARN = Nothing,
      _chaInputSpecification = Nothing,
      _chaARN = Nothing,
      _chaId = Nothing,
      _chaPipelinesRunningCount = Nothing,
      _chaChannelClass = Nothing,
      _chaLogLevel = Nothing,
      _chaDestinations = Nothing,
      _chaState = Nothing,
      _chaName = Nothing,
      _chaInputAttachments = Nothing,
      _chaTags = Nothing,
      _chaEgressEndpoints = Nothing,
      _chaVPC = Nothing,
      _chaCdiInputSpecification = Nothing
    }

-- | The Amazon Resource Name (ARN) of the role assumed when running the Channel.
chaRoleARN :: Lens' ChannelSummary (Maybe Text)
chaRoleARN = lens _chaRoleARN (\s a -> s {_chaRoleARN = a})

-- | Specification of network and file inputs for this channel
chaInputSpecification :: Lens' ChannelSummary (Maybe InputSpecification)
chaInputSpecification = lens _chaInputSpecification (\s a -> s {_chaInputSpecification = a})

-- | The unique arn of the channel.
chaARN :: Lens' ChannelSummary (Maybe Text)
chaARN = lens _chaARN (\s a -> s {_chaARN = a})

-- | The unique id of the channel.
chaId :: Lens' ChannelSummary (Maybe Text)
chaId = lens _chaId (\s a -> s {_chaId = a})

-- | The number of currently healthy pipelines.
chaPipelinesRunningCount :: Lens' ChannelSummary (Maybe Int)
chaPipelinesRunningCount = lens _chaPipelinesRunningCount (\s a -> s {_chaPipelinesRunningCount = a})

-- | The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
chaChannelClass :: Lens' ChannelSummary (Maybe ChannelClass)
chaChannelClass = lens _chaChannelClass (\s a -> s {_chaChannelClass = a})

-- | The log level being written to CloudWatch Logs.
chaLogLevel :: Lens' ChannelSummary (Maybe LogLevel)
chaLogLevel = lens _chaLogLevel (\s a -> s {_chaLogLevel = a})

-- | A list of destinations of the channel. For UDP outputs, there is one destination per output. For other types (HLS, for example), there is one destination per packager.
chaDestinations :: Lens' ChannelSummary [OutputDestination]
chaDestinations = lens _chaDestinations (\s a -> s {_chaDestinations = a}) . _Default . _Coerce

-- | Undocumented member.
chaState :: Lens' ChannelSummary (Maybe ChannelState)
chaState = lens _chaState (\s a -> s {_chaState = a})

-- | The name of the channel. (user-mutable)
chaName :: Lens' ChannelSummary (Maybe Text)
chaName = lens _chaName (\s a -> s {_chaName = a})

-- | List of input attachments for channel.
chaInputAttachments :: Lens' ChannelSummary [InputAttachment]
chaInputAttachments = lens _chaInputAttachments (\s a -> s {_chaInputAttachments = a}) . _Default . _Coerce

-- | A collection of key-value pairs.
chaTags :: Lens' ChannelSummary (HashMap Text Text)
chaTags = lens _chaTags (\s a -> s {_chaTags = a}) . _Default . _Map

-- | The endpoints where outgoing connections initiate from
chaEgressEndpoints :: Lens' ChannelSummary [ChannelEgressEndpoint]
chaEgressEndpoints = lens _chaEgressEndpoints (\s a -> s {_chaEgressEndpoints = a}) . _Default . _Coerce

-- | Settings for VPC output
chaVPC :: Lens' ChannelSummary (Maybe VPCOutputSettings)
chaVPC = lens _chaVPC (\s a -> s {_chaVPC = a})

-- | Specification of CDI inputs for this channel
chaCdiInputSpecification :: Lens' ChannelSummary (Maybe CdiInputSpecification)
chaCdiInputSpecification = lens _chaCdiInputSpecification (\s a -> s {_chaCdiInputSpecification = a})

instance FromJSON ChannelSummary where
  parseJSON =
    withObject
      "ChannelSummary"
      ( \x ->
          ChannelSummary'
            <$> (x .:? "roleArn")
            <*> (x .:? "inputSpecification")
            <*> (x .:? "arn")
            <*> (x .:? "id")
            <*> (x .:? "pipelinesRunningCount")
            <*> (x .:? "channelClass")
            <*> (x .:? "logLevel")
            <*> (x .:? "destinations" .!= mempty)
            <*> (x .:? "state")
            <*> (x .:? "name")
            <*> (x .:? "inputAttachments" .!= mempty)
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "egressEndpoints" .!= mempty)
            <*> (x .:? "vpc")
            <*> (x .:? "cdiInputSpecification")
      )

instance Hashable ChannelSummary

instance NFData ChannelSummary
