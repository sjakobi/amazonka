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
-- Module      : Network.AWS.MediaPackage.CreateChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Channel.
module Network.AWS.MediaPackage.CreateChannel
  ( -- * Creating a Request
    createChannel,
    CreateChannel,

    -- * Request Lenses
    ccTags,
    ccDescription,
    ccId,

    -- * Destructuring the Response
    createChannelResponse,
    CreateChannelResponse,

    -- * Response Lenses
    ccrrsEgressAccessLogs,
    ccrrsHlsIngest,
    ccrrsARN,
    ccrrsId,
    ccrrsIngressAccessLogs,
    ccrrsTags,
    ccrrsDescription,
    ccrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A new Channel configuration.
--
-- /See:/ 'createChannel' smart constructor.
data CreateChannel = CreateChannel'
  { _ccTags ::
      !(Maybe (Map Text Text)),
    _ccDescription :: !(Maybe Text),
    _ccId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccTags' - Undocumented member.
--
-- * 'ccDescription' - A short text description of the Channel.
--
-- * 'ccId' - The ID of the Channel. The ID must be unique within the region and it cannot be changed after a Channel is created.
createChannel ::
  -- | 'ccId'
  Text ->
  CreateChannel
createChannel pId_ =
  CreateChannel'
    { _ccTags = Nothing,
      _ccDescription = Nothing,
      _ccId = pId_
    }

-- | Undocumented member.
ccTags :: Lens' CreateChannel (HashMap Text Text)
ccTags = lens _ccTags (\s a -> s {_ccTags = a}) . _Default . _Map

-- | A short text description of the Channel.
ccDescription :: Lens' CreateChannel (Maybe Text)
ccDescription = lens _ccDescription (\s a -> s {_ccDescription = a})

-- | The ID of the Channel. The ID must be unique within the region and it cannot be changed after a Channel is created.
ccId :: Lens' CreateChannel Text
ccId = lens _ccId (\s a -> s {_ccId = a})

instance AWSRequest CreateChannel where
  type Rs CreateChannel = CreateChannelResponse
  request = postJSON mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          CreateChannelResponse'
            <$> (x .?> "egressAccessLogs")
            <*> (x .?> "hlsIngest")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "ingressAccessLogs")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "description")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateChannel

instance NFData CreateChannel

instance ToHeaders CreateChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateChannel where
  toJSON CreateChannel' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _ccTags,
            ("description" .=) <$> _ccDescription,
            Just ("id" .= _ccId)
          ]
      )

instance ToPath CreateChannel where
  toPath = const "/channels"

instance ToQuery CreateChannel where
  toQuery = const mempty

-- | /See:/ 'createChannelResponse' smart constructor.
data CreateChannelResponse = CreateChannelResponse'
  { _ccrrsEgressAccessLogs ::
      !(Maybe EgressAccessLogs),
    _ccrrsHlsIngest ::
      !(Maybe HlsIngest),
    _ccrrsARN :: !(Maybe Text),
    _ccrrsId :: !(Maybe Text),
    _ccrrsIngressAccessLogs ::
      !(Maybe IngressAccessLogs),
    _ccrrsTags ::
      !(Maybe (Map Text Text)),
    _ccrrsDescription ::
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
-- * 'ccrrsEgressAccessLogs' - Undocumented member.
--
-- * 'ccrrsHlsIngest' - Undocumented member.
--
-- * 'ccrrsARN' - The Amazon Resource Name (ARN) assigned to the Channel.
--
-- * 'ccrrsId' - The ID of the Channel.
--
-- * 'ccrrsIngressAccessLogs' - Undocumented member.
--
-- * 'ccrrsTags' - Undocumented member.
--
-- * 'ccrrsDescription' - A short text description of the Channel.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createChannelResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateChannelResponse
createChannelResponse pResponseStatus_ =
  CreateChannelResponse'
    { _ccrrsEgressAccessLogs =
        Nothing,
      _ccrrsHlsIngest = Nothing,
      _ccrrsARN = Nothing,
      _ccrrsId = Nothing,
      _ccrrsIngressAccessLogs = Nothing,
      _ccrrsTags = Nothing,
      _ccrrsDescription = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ccrrsEgressAccessLogs :: Lens' CreateChannelResponse (Maybe EgressAccessLogs)
ccrrsEgressAccessLogs = lens _ccrrsEgressAccessLogs (\s a -> s {_ccrrsEgressAccessLogs = a})

-- | Undocumented member.
ccrrsHlsIngest :: Lens' CreateChannelResponse (Maybe HlsIngest)
ccrrsHlsIngest = lens _ccrrsHlsIngest (\s a -> s {_ccrrsHlsIngest = a})

-- | The Amazon Resource Name (ARN) assigned to the Channel.
ccrrsARN :: Lens' CreateChannelResponse (Maybe Text)
ccrrsARN = lens _ccrrsARN (\s a -> s {_ccrrsARN = a})

-- | The ID of the Channel.
ccrrsId :: Lens' CreateChannelResponse (Maybe Text)
ccrrsId = lens _ccrrsId (\s a -> s {_ccrrsId = a})

-- | Undocumented member.
ccrrsIngressAccessLogs :: Lens' CreateChannelResponse (Maybe IngressAccessLogs)
ccrrsIngressAccessLogs = lens _ccrrsIngressAccessLogs (\s a -> s {_ccrrsIngressAccessLogs = a})

-- | Undocumented member.
ccrrsTags :: Lens' CreateChannelResponse (HashMap Text Text)
ccrrsTags = lens _ccrrsTags (\s a -> s {_ccrrsTags = a}) . _Default . _Map

-- | A short text description of the Channel.
ccrrsDescription :: Lens' CreateChannelResponse (Maybe Text)
ccrrsDescription = lens _ccrrsDescription (\s a -> s {_ccrrsDescription = a})

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateChannelResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateChannelResponse
