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
-- Module      : Network.AWS.MediaPackage.UpdateChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing Channel.
module Network.AWS.MediaPackage.UpdateChannel
  ( -- * Creating a Request
    updateChannel,
    UpdateChannel,

    -- * Request Lenses
    ucDescription,
    ucId,

    -- * Destructuring the Response
    updateChannelResponse,
    UpdateChannelResponse,

    -- * Response Lenses
    ucrrsEgressAccessLogs,
    ucrrsHlsIngest,
    ucrrsARN,
    ucrrsId,
    ucrrsIngressAccessLogs,
    ucrrsTags,
    ucrrsDescription,
    ucrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Configuration parameters used to update the Channel.
--
-- /See:/ 'updateChannel' smart constructor.
data UpdateChannel = UpdateChannel'
  { _ucDescription ::
      !(Maybe Text),
    _ucId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucDescription' - A short text description of the Channel.
--
-- * 'ucId' - The ID of the Channel to update.
updateChannel ::
  -- | 'ucId'
  Text ->
  UpdateChannel
updateChannel pId_ =
  UpdateChannel'
    { _ucDescription = Nothing,
      _ucId = pId_
    }

-- | A short text description of the Channel.
ucDescription :: Lens' UpdateChannel (Maybe Text)
ucDescription = lens _ucDescription (\s a -> s {_ucDescription = a})

-- | The ID of the Channel to update.
ucId :: Lens' UpdateChannel Text
ucId = lens _ucId (\s a -> s {_ucId = a})

instance AWSRequest UpdateChannel where
  type Rs UpdateChannel = UpdateChannelResponse
  request = putJSON mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          UpdateChannelResponse'
            <$> (x .?> "egressAccessLogs")
            <*> (x .?> "hlsIngest")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "ingressAccessLogs")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "description")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateChannel

instance NFData UpdateChannel

instance ToHeaders UpdateChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateChannel where
  toJSON UpdateChannel' {..} =
    object
      (catMaybes [("description" .=) <$> _ucDescription])

instance ToPath UpdateChannel where
  toPath UpdateChannel' {..} =
    mconcat ["/channels/", toBS _ucId]

instance ToQuery UpdateChannel where
  toQuery = const mempty

-- | /See:/ 'updateChannelResponse' smart constructor.
data UpdateChannelResponse = UpdateChannelResponse'
  { _ucrrsEgressAccessLogs ::
      !(Maybe EgressAccessLogs),
    _ucrrsHlsIngest ::
      !(Maybe HlsIngest),
    _ucrrsARN :: !(Maybe Text),
    _ucrrsId :: !(Maybe Text),
    _ucrrsIngressAccessLogs ::
      !(Maybe IngressAccessLogs),
    _ucrrsTags ::
      !(Maybe (Map Text Text)),
    _ucrrsDescription ::
      !(Maybe Text),
    _ucrrsResponseStatus ::
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

-- | Creates a value of 'UpdateChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrrsEgressAccessLogs' - Undocumented member.
--
-- * 'ucrrsHlsIngest' - Undocumented member.
--
-- * 'ucrrsARN' - The Amazon Resource Name (ARN) assigned to the Channel.
--
-- * 'ucrrsId' - The ID of the Channel.
--
-- * 'ucrrsIngressAccessLogs' - Undocumented member.
--
-- * 'ucrrsTags' - Undocumented member.
--
-- * 'ucrrsDescription' - A short text description of the Channel.
--
-- * 'ucrrsResponseStatus' - -- | The response status code.
updateChannelResponse ::
  -- | 'ucrrsResponseStatus'
  Int ->
  UpdateChannelResponse
updateChannelResponse pResponseStatus_ =
  UpdateChannelResponse'
    { _ucrrsEgressAccessLogs =
        Nothing,
      _ucrrsHlsIngest = Nothing,
      _ucrrsARN = Nothing,
      _ucrrsId = Nothing,
      _ucrrsIngressAccessLogs = Nothing,
      _ucrrsTags = Nothing,
      _ucrrsDescription = Nothing,
      _ucrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ucrrsEgressAccessLogs :: Lens' UpdateChannelResponse (Maybe EgressAccessLogs)
ucrrsEgressAccessLogs = lens _ucrrsEgressAccessLogs (\s a -> s {_ucrrsEgressAccessLogs = a})

-- | Undocumented member.
ucrrsHlsIngest :: Lens' UpdateChannelResponse (Maybe HlsIngest)
ucrrsHlsIngest = lens _ucrrsHlsIngest (\s a -> s {_ucrrsHlsIngest = a})

-- | The Amazon Resource Name (ARN) assigned to the Channel.
ucrrsARN :: Lens' UpdateChannelResponse (Maybe Text)
ucrrsARN = lens _ucrrsARN (\s a -> s {_ucrrsARN = a})

-- | The ID of the Channel.
ucrrsId :: Lens' UpdateChannelResponse (Maybe Text)
ucrrsId = lens _ucrrsId (\s a -> s {_ucrrsId = a})

-- | Undocumented member.
ucrrsIngressAccessLogs :: Lens' UpdateChannelResponse (Maybe IngressAccessLogs)
ucrrsIngressAccessLogs = lens _ucrrsIngressAccessLogs (\s a -> s {_ucrrsIngressAccessLogs = a})

-- | Undocumented member.
ucrrsTags :: Lens' UpdateChannelResponse (HashMap Text Text)
ucrrsTags = lens _ucrrsTags (\s a -> s {_ucrrsTags = a}) . _Default . _Map

-- | A short text description of the Channel.
ucrrsDescription :: Lens' UpdateChannelResponse (Maybe Text)
ucrrsDescription = lens _ucrrsDescription (\s a -> s {_ucrrsDescription = a})

-- | -- | The response status code.
ucrrsResponseStatus :: Lens' UpdateChannelResponse Int
ucrrsResponseStatus = lens _ucrrsResponseStatus (\s a -> s {_ucrrsResponseStatus = a})

instance NFData UpdateChannelResponse
