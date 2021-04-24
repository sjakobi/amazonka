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
-- Module      : Network.AWS.MediaPackage.DescribeChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about a Channel.
module Network.AWS.MediaPackage.DescribeChannel
  ( -- * Creating a Request
    describeChannel,
    DescribeChannel,

    -- * Request Lenses
    dcId,

    -- * Destructuring the Response
    describeChannelResponse,
    DescribeChannelResponse,

    -- * Response Lenses
    dcrrsEgressAccessLogs,
    dcrrsHlsIngest,
    dcrrsARN,
    dcrrsId,
    dcrrsIngressAccessLogs,
    dcrrsTags,
    dcrrsDescription,
    dcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeChannel' smart constructor.
newtype DescribeChannel = DescribeChannel'
  { _dcId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcId' - The ID of a Channel.
describeChannel ::
  -- | 'dcId'
  Text ->
  DescribeChannel
describeChannel pId_ = DescribeChannel' {_dcId = pId_}

-- | The ID of a Channel.
dcId :: Lens' DescribeChannel Text
dcId = lens _dcId (\s a -> s {_dcId = a})

instance AWSRequest DescribeChannel where
  type Rs DescribeChannel = DescribeChannelResponse
  request = get mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          DescribeChannelResponse'
            <$> (x .?> "egressAccessLogs")
            <*> (x .?> "hlsIngest")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "ingressAccessLogs")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "description")
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
    mconcat ["/channels/", toBS _dcId]

instance ToQuery DescribeChannel where
  toQuery = const mempty

-- | /See:/ 'describeChannelResponse' smart constructor.
data DescribeChannelResponse = DescribeChannelResponse'
  { _dcrrsEgressAccessLogs ::
      !( Maybe
           EgressAccessLogs
       ),
    _dcrrsHlsIngest ::
      !(Maybe HlsIngest),
    _dcrrsARN ::
      !(Maybe Text),
    _dcrrsId ::
      !(Maybe Text),
    _dcrrsIngressAccessLogs ::
      !( Maybe
           IngressAccessLogs
       ),
    _dcrrsTags ::
      !( Maybe
           (Map Text Text)
       ),
    _dcrrsDescription ::
      !(Maybe Text),
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
-- * 'dcrrsEgressAccessLogs' - Undocumented member.
--
-- * 'dcrrsHlsIngest' - Undocumented member.
--
-- * 'dcrrsARN' - The Amazon Resource Name (ARN) assigned to the Channel.
--
-- * 'dcrrsId' - The ID of the Channel.
--
-- * 'dcrrsIngressAccessLogs' - Undocumented member.
--
-- * 'dcrrsTags' - Undocumented member.
--
-- * 'dcrrsDescription' - A short text description of the Channel.
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
describeChannelResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DescribeChannelResponse
describeChannelResponse pResponseStatus_ =
  DescribeChannelResponse'
    { _dcrrsEgressAccessLogs =
        Nothing,
      _dcrrsHlsIngest = Nothing,
      _dcrrsARN = Nothing,
      _dcrrsId = Nothing,
      _dcrrsIngressAccessLogs = Nothing,
      _dcrrsTags = Nothing,
      _dcrrsDescription = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dcrrsEgressAccessLogs :: Lens' DescribeChannelResponse (Maybe EgressAccessLogs)
dcrrsEgressAccessLogs = lens _dcrrsEgressAccessLogs (\s a -> s {_dcrrsEgressAccessLogs = a})

-- | Undocumented member.
dcrrsHlsIngest :: Lens' DescribeChannelResponse (Maybe HlsIngest)
dcrrsHlsIngest = lens _dcrrsHlsIngest (\s a -> s {_dcrrsHlsIngest = a})

-- | The Amazon Resource Name (ARN) assigned to the Channel.
dcrrsARN :: Lens' DescribeChannelResponse (Maybe Text)
dcrrsARN = lens _dcrrsARN (\s a -> s {_dcrrsARN = a})

-- | The ID of the Channel.
dcrrsId :: Lens' DescribeChannelResponse (Maybe Text)
dcrrsId = lens _dcrrsId (\s a -> s {_dcrrsId = a})

-- | Undocumented member.
dcrrsIngressAccessLogs :: Lens' DescribeChannelResponse (Maybe IngressAccessLogs)
dcrrsIngressAccessLogs = lens _dcrrsIngressAccessLogs (\s a -> s {_dcrrsIngressAccessLogs = a})

-- | Undocumented member.
dcrrsTags :: Lens' DescribeChannelResponse (HashMap Text Text)
dcrrsTags = lens _dcrrsTags (\s a -> s {_dcrrsTags = a}) . _Default . _Map

-- | A short text description of the Channel.
dcrrsDescription :: Lens' DescribeChannelResponse (Maybe Text)
dcrrsDescription = lens _dcrrsDescription (\s a -> s {_dcrrsDescription = a})

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeChannelResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeChannelResponse
