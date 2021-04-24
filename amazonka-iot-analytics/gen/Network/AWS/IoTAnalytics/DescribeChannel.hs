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
-- Module      : Network.AWS.IoTAnalytics.DescribeChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a channel.
module Network.AWS.IoTAnalytics.DescribeChannel
  ( -- * Creating a Request
    describeChannel,
    DescribeChannel,

    -- * Request Lenses
    dcIncludeStatistics,
    dcChannelName,

    -- * Destructuring the Response
    describeChannelResponse,
    DescribeChannelResponse,

    -- * Response Lenses
    dcrrsStatistics,
    dcrrsChannel,
    dcrrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeChannel' smart constructor.
data DescribeChannel = DescribeChannel'
  { _dcIncludeStatistics ::
      !(Maybe Bool),
    _dcChannelName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcIncludeStatistics' - If true, additional statistical information about the channel is included in the response. This feature cannot be used with a channel whose S3 storage is customer-managed.
--
-- * 'dcChannelName' - The name of the channel whose information is retrieved.
describeChannel ::
  -- | 'dcChannelName'
  Text ->
  DescribeChannel
describeChannel pChannelName_ =
  DescribeChannel'
    { _dcIncludeStatistics = Nothing,
      _dcChannelName = pChannelName_
    }

-- | If true, additional statistical information about the channel is included in the response. This feature cannot be used with a channel whose S3 storage is customer-managed.
dcIncludeStatistics :: Lens' DescribeChannel (Maybe Bool)
dcIncludeStatistics = lens _dcIncludeStatistics (\s a -> s {_dcIncludeStatistics = a})

-- | The name of the channel whose information is retrieved.
dcChannelName :: Lens' DescribeChannel Text
dcChannelName = lens _dcChannelName (\s a -> s {_dcChannelName = a})

instance AWSRequest DescribeChannel where
  type Rs DescribeChannel = DescribeChannelResponse
  request = get ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          DescribeChannelResponse'
            <$> (x .?> "statistics")
            <*> (x .?> "channel")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeChannel

instance NFData DescribeChannel

instance ToHeaders DescribeChannel where
  toHeaders = const mempty

instance ToPath DescribeChannel where
  toPath DescribeChannel' {..} =
    mconcat ["/channels/", toBS _dcChannelName]

instance ToQuery DescribeChannel where
  toQuery DescribeChannel' {..} =
    mconcat
      ["includeStatistics" =: _dcIncludeStatistics]

-- | /See:/ 'describeChannelResponse' smart constructor.
data DescribeChannelResponse = DescribeChannelResponse'
  { _dcrrsStatistics ::
      !( Maybe
           ChannelStatistics
       ),
    _dcrrsChannel ::
      !(Maybe Channel),
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
-- * 'dcrrsStatistics' - Statistics about the channel. Included if the @includeStatistics@ parameter is set to @true@ in the request.
--
-- * 'dcrrsChannel' - An object that contains information about the channel.
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
describeChannelResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DescribeChannelResponse
describeChannelResponse pResponseStatus_ =
  DescribeChannelResponse'
    { _dcrrsStatistics =
        Nothing,
      _dcrrsChannel = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | Statistics about the channel. Included if the @includeStatistics@ parameter is set to @true@ in the request.
dcrrsStatistics :: Lens' DescribeChannelResponse (Maybe ChannelStatistics)
dcrrsStatistics = lens _dcrrsStatistics (\s a -> s {_dcrrsStatistics = a})

-- | An object that contains information about the channel.
dcrrsChannel :: Lens' DescribeChannelResponse (Maybe Channel)
dcrrsChannel = lens _dcrrsChannel (\s a -> s {_dcrrsChannel = a})

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeChannelResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeChannelResponse
