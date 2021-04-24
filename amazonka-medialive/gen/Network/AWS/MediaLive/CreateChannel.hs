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
-- Module      : Network.AWS.MediaLive.CreateChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new channel
module Network.AWS.MediaLive.CreateChannel
  ( -- * Creating a Request
    createChannel',
    CreateChannel',

    -- * Request Lenses
    creEncoderSettings,
    creRoleARN,
    creInputSpecification,
    creChannelClass,
    creLogLevel,
    creDestinations,
    creName,
    creReserved,
    creRequestId,
    creInputAttachments,
    creTags,
    creVPC,
    creCdiInputSpecification,

    -- * Destructuring the Response
    createChannelResponse,
    CreateChannelResponse,

    -- * Response Lenses
    ccrrsChannel,
    ccrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to create a channel
--
-- /See:/ 'createChannel'' smart constructor.
data CreateChannel' = CreateChannel''
  { _creEncoderSettings ::
      !(Maybe EncoderSettings),
    _creRoleARN :: !(Maybe Text),
    _creInputSpecification ::
      !(Maybe InputSpecification),
    _creChannelClass :: !(Maybe ChannelClass),
    _creLogLevel :: !(Maybe LogLevel),
    _creDestinations ::
      !(Maybe [OutputDestination]),
    _creName :: !(Maybe Text),
    _creReserved :: !(Maybe Text),
    _creRequestId :: !(Maybe Text),
    _creInputAttachments ::
      !(Maybe [InputAttachment]),
    _creTags :: !(Maybe (Map Text Text)),
    _creVPC :: !(Maybe VPCOutputSettings),
    _creCdiInputSpecification ::
      !(Maybe CdiInputSpecification)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateChannel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creEncoderSettings' - Undocumented member.
--
-- * 'creRoleARN' - An optional Amazon Resource Name (ARN) of the role to assume when running the Channel.
--
-- * 'creInputSpecification' - Specification of network and file inputs for this channel
--
-- * 'creChannelClass' - The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
--
-- * 'creLogLevel' - The log level to write to CloudWatch Logs.
--
-- * 'creDestinations' - Undocumented member.
--
-- * 'creName' - Name of channel.
--
-- * 'creReserved' - Deprecated field that's only usable by whitelisted customers.
--
-- * 'creRequestId' - Unique request ID to be specified. This is needed to prevent retries from creating multiple resources.
--
-- * 'creInputAttachments' - List of input attachments for channel.
--
-- * 'creTags' - A collection of key-value pairs.
--
-- * 'creVPC' - Settings for VPC output
--
-- * 'creCdiInputSpecification' - Specification of CDI inputs for this channel
createChannel' ::
  CreateChannel'
createChannel' =
  CreateChannel''
    { _creEncoderSettings = Nothing,
      _creRoleARN = Nothing,
      _creInputSpecification = Nothing,
      _creChannelClass = Nothing,
      _creLogLevel = Nothing,
      _creDestinations = Nothing,
      _creName = Nothing,
      _creReserved = Nothing,
      _creRequestId = Nothing,
      _creInputAttachments = Nothing,
      _creTags = Nothing,
      _creVPC = Nothing,
      _creCdiInputSpecification = Nothing
    }

-- | Undocumented member.
creEncoderSettings :: Lens' CreateChannel' (Maybe EncoderSettings)
creEncoderSettings = lens _creEncoderSettings (\s a -> s {_creEncoderSettings = a})

-- | An optional Amazon Resource Name (ARN) of the role to assume when running the Channel.
creRoleARN :: Lens' CreateChannel' (Maybe Text)
creRoleARN = lens _creRoleARN (\s a -> s {_creRoleARN = a})

-- | Specification of network and file inputs for this channel
creInputSpecification :: Lens' CreateChannel' (Maybe InputSpecification)
creInputSpecification = lens _creInputSpecification (\s a -> s {_creInputSpecification = a})

-- | The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
creChannelClass :: Lens' CreateChannel' (Maybe ChannelClass)
creChannelClass = lens _creChannelClass (\s a -> s {_creChannelClass = a})

-- | The log level to write to CloudWatch Logs.
creLogLevel :: Lens' CreateChannel' (Maybe LogLevel)
creLogLevel = lens _creLogLevel (\s a -> s {_creLogLevel = a})

-- | Undocumented member.
creDestinations :: Lens' CreateChannel' [OutputDestination]
creDestinations = lens _creDestinations (\s a -> s {_creDestinations = a}) . _Default . _Coerce

-- | Name of channel.
creName :: Lens' CreateChannel' (Maybe Text)
creName = lens _creName (\s a -> s {_creName = a})

-- | Deprecated field that's only usable by whitelisted customers.
creReserved :: Lens' CreateChannel' (Maybe Text)
creReserved = lens _creReserved (\s a -> s {_creReserved = a})

-- | Unique request ID to be specified. This is needed to prevent retries from creating multiple resources.
creRequestId :: Lens' CreateChannel' (Maybe Text)
creRequestId = lens _creRequestId (\s a -> s {_creRequestId = a})

-- | List of input attachments for channel.
creInputAttachments :: Lens' CreateChannel' [InputAttachment]
creInputAttachments = lens _creInputAttachments (\s a -> s {_creInputAttachments = a}) . _Default . _Coerce

-- | A collection of key-value pairs.
creTags :: Lens' CreateChannel' (HashMap Text Text)
creTags = lens _creTags (\s a -> s {_creTags = a}) . _Default . _Map

-- | Settings for VPC output
creVPC :: Lens' CreateChannel' (Maybe VPCOutputSettings)
creVPC = lens _creVPC (\s a -> s {_creVPC = a})

-- | Specification of CDI inputs for this channel
creCdiInputSpecification :: Lens' CreateChannel' (Maybe CdiInputSpecification)
creCdiInputSpecification = lens _creCdiInputSpecification (\s a -> s {_creCdiInputSpecification = a})

instance AWSRequest CreateChannel' where
  type Rs CreateChannel' = CreateChannelResponse
  request = postJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          CreateChannelResponse'
            <$> (x .?> "channel") <*> (pure (fromEnum s))
      )

instance Hashable CreateChannel'

instance NFData CreateChannel'

instance ToHeaders CreateChannel' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateChannel' where
  toJSON CreateChannel'' {..} =
    object
      ( catMaybes
          [ ("encoderSettings" .=) <$> _creEncoderSettings,
            ("roleArn" .=) <$> _creRoleARN,
            ("inputSpecification" .=) <$> _creInputSpecification,
            ("channelClass" .=) <$> _creChannelClass,
            ("logLevel" .=) <$> _creLogLevel,
            ("destinations" .=) <$> _creDestinations,
            ("name" .=) <$> _creName,
            ("reserved" .=) <$> _creReserved,
            ("requestId" .=) <$> _creRequestId,
            ("inputAttachments" .=) <$> _creInputAttachments,
            ("tags" .=) <$> _creTags,
            ("vpc" .=) <$> _creVPC,
            ("cdiInputSpecification" .=)
              <$> _creCdiInputSpecification
          ]
      )

instance ToPath CreateChannel' where
  toPath = const "/prod/channels"

instance ToQuery CreateChannel' where
  toQuery = const mempty

-- | Placeholder documentation for CreateChannelResponse
--
-- /See:/ 'createChannelResponse' smart constructor.
data CreateChannelResponse = CreateChannelResponse'
  { _ccrrsChannel ::
      !(Maybe Channel),
    _ccrrsResponseStatus ::
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

-- | Creates a value of 'CreateChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsChannel' - Undocumented member.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createChannelResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateChannelResponse
createChannelResponse pResponseStatus_ =
  CreateChannelResponse'
    { _ccrrsChannel = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ccrrsChannel :: Lens' CreateChannelResponse (Maybe Channel)
ccrrsChannel = lens _ccrrsChannel (\s a -> s {_ccrrsChannel = a})

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateChannelResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateChannelResponse
