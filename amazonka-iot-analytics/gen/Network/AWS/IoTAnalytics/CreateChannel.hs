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
-- Module      : Network.AWS.IoTAnalytics.CreateChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a channel. A channel collects data from an MQTT topic and archives the raw, unprocessed messages before publishing the data to a pipeline.
module Network.AWS.IoTAnalytics.CreateChannel
  ( -- * Creating a Request
    createChannel,
    CreateChannel,

    -- * Request Lenses
    ccRetentionPeriod,
    ccTags,
    ccChannelStorage,
    ccChannelName,

    -- * Destructuring the Response
    createChannelResponse,
    CreateChannelResponse,

    -- * Response Lenses
    ccrrsChannelName,
    ccrrsRetentionPeriod,
    ccrrsChannelARN,
    ccrrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createChannel' smart constructor.
data CreateChannel = CreateChannel'
  { _ccRetentionPeriod ::
      !(Maybe RetentionPeriod),
    _ccTags :: !(Maybe (List1 Tag)),
    _ccChannelStorage ::
      !(Maybe ChannelStorage),
    _ccChannelName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccRetentionPeriod' - How long, in days, message data is kept for the channel. When @customerManagedS3@ storage is selected, this parameter is ignored.
--
-- * 'ccTags' - Metadata which can be used to manage the channel.
--
-- * 'ccChannelStorage' - Where channel data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is @serviceManagedS3@ . You cannot change this storage option after the channel is created.
--
-- * 'ccChannelName' - The name of the channel.
createChannel ::
  -- | 'ccChannelName'
  Text ->
  CreateChannel
createChannel pChannelName_ =
  CreateChannel'
    { _ccRetentionPeriod = Nothing,
      _ccTags = Nothing,
      _ccChannelStorage = Nothing,
      _ccChannelName = pChannelName_
    }

-- | How long, in days, message data is kept for the channel. When @customerManagedS3@ storage is selected, this parameter is ignored.
ccRetentionPeriod :: Lens' CreateChannel (Maybe RetentionPeriod)
ccRetentionPeriod = lens _ccRetentionPeriod (\s a -> s {_ccRetentionPeriod = a})

-- | Metadata which can be used to manage the channel.
ccTags :: Lens' CreateChannel (Maybe (NonEmpty Tag))
ccTags = lens _ccTags (\s a -> s {_ccTags = a}) . mapping _List1

-- | Where channel data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is @serviceManagedS3@ . You cannot change this storage option after the channel is created.
ccChannelStorage :: Lens' CreateChannel (Maybe ChannelStorage)
ccChannelStorage = lens _ccChannelStorage (\s a -> s {_ccChannelStorage = a})

-- | The name of the channel.
ccChannelName :: Lens' CreateChannel Text
ccChannelName = lens _ccChannelName (\s a -> s {_ccChannelName = a})

instance AWSRequest CreateChannel where
  type Rs CreateChannel = CreateChannelResponse
  request = postJSON ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          CreateChannelResponse'
            <$> (x .?> "channelName")
            <*> (x .?> "retentionPeriod")
            <*> (x .?> "channelArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateChannel

instance NFData CreateChannel

instance ToHeaders CreateChannel where
  toHeaders = const mempty

instance ToJSON CreateChannel where
  toJSON CreateChannel' {..} =
    object
      ( catMaybes
          [ ("retentionPeriod" .=) <$> _ccRetentionPeriod,
            ("tags" .=) <$> _ccTags,
            ("channelStorage" .=) <$> _ccChannelStorage,
            Just ("channelName" .= _ccChannelName)
          ]
      )

instance ToPath CreateChannel where
  toPath = const "/channels"

instance ToQuery CreateChannel where
  toQuery = const mempty

-- | /See:/ 'createChannelResponse' smart constructor.
data CreateChannelResponse = CreateChannelResponse'
  { _ccrrsChannelName ::
      !(Maybe Text),
    _ccrrsRetentionPeriod ::
      !(Maybe RetentionPeriod),
    _ccrrsChannelARN ::
      !(Maybe Text),
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
-- * 'ccrrsChannelName' - The name of the channel.
--
-- * 'ccrrsRetentionPeriod' - How long, in days, message data is kept for the channel.
--
-- * 'ccrrsChannelARN' - The ARN of the channel.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createChannelResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateChannelResponse
createChannelResponse pResponseStatus_ =
  CreateChannelResponse'
    { _ccrrsChannelName = Nothing,
      _ccrrsRetentionPeriod = Nothing,
      _ccrrsChannelARN = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | The name of the channel.
ccrrsChannelName :: Lens' CreateChannelResponse (Maybe Text)
ccrrsChannelName = lens _ccrrsChannelName (\s a -> s {_ccrrsChannelName = a})

-- | How long, in days, message data is kept for the channel.
ccrrsRetentionPeriod :: Lens' CreateChannelResponse (Maybe RetentionPeriod)
ccrrsRetentionPeriod = lens _ccrrsRetentionPeriod (\s a -> s {_ccrrsRetentionPeriod = a})

-- | The ARN of the channel.
ccrrsChannelARN :: Lens' CreateChannelResponse (Maybe Text)
ccrrsChannelARN = lens _ccrrsChannelARN (\s a -> s {_ccrrsChannelARN = a})

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateChannelResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateChannelResponse
