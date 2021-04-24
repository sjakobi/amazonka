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
-- Module      : Network.AWS.KinesisVideo.DescribeSignalingChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the most current information about the signaling channel. You must specify either the name or the Amazon Resource Name (ARN) of the channel that you want to describe.
module Network.AWS.KinesisVideo.DescribeSignalingChannel
  ( -- * Creating a Request
    describeSignalingChannel,
    DescribeSignalingChannel,

    -- * Request Lenses
    dChannelName,
    dChannelARN,

    -- * Destructuring the Response
    describeSignalingChannelResponse,
    DescribeSignalingChannelResponse,

    -- * Response Lenses
    drsChannelInfo,
    drsResponseStatus,
  )
where

import Network.AWS.KinesisVideo.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSignalingChannel' smart constructor.
data DescribeSignalingChannel = DescribeSignalingChannel'
  { _dChannelName ::
      !(Maybe Text),
    _dChannelARN ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeSignalingChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dChannelName' - The name of the signaling channel that you want to describe.
--
-- * 'dChannelARN' - The ARN of the signaling channel that you want to describe.
describeSignalingChannel ::
  DescribeSignalingChannel
describeSignalingChannel =
  DescribeSignalingChannel'
    { _dChannelName = Nothing,
      _dChannelARN = Nothing
    }

-- | The name of the signaling channel that you want to describe.
dChannelName :: Lens' DescribeSignalingChannel (Maybe Text)
dChannelName = lens _dChannelName (\s a -> s {_dChannelName = a})

-- | The ARN of the signaling channel that you want to describe.
dChannelARN :: Lens' DescribeSignalingChannel (Maybe Text)
dChannelARN = lens _dChannelARN (\s a -> s {_dChannelARN = a})

instance AWSRequest DescribeSignalingChannel where
  type
    Rs DescribeSignalingChannel =
      DescribeSignalingChannelResponse
  request = postJSON kinesisVideo
  response =
    receiveJSON
      ( \s h x ->
          DescribeSignalingChannelResponse'
            <$> (x .?> "ChannelInfo") <*> (pure (fromEnum s))
      )

instance Hashable DescribeSignalingChannel

instance NFData DescribeSignalingChannel

instance ToHeaders DescribeSignalingChannel where
  toHeaders = const mempty

instance ToJSON DescribeSignalingChannel where
  toJSON DescribeSignalingChannel' {..} =
    object
      ( catMaybes
          [ ("ChannelName" .=) <$> _dChannelName,
            ("ChannelARN" .=) <$> _dChannelARN
          ]
      )

instance ToPath DescribeSignalingChannel where
  toPath = const "/describeSignalingChannel"

instance ToQuery DescribeSignalingChannel where
  toQuery = const mempty

-- | /See:/ 'describeSignalingChannelResponse' smart constructor.
data DescribeSignalingChannelResponse = DescribeSignalingChannelResponse'
  { _drsChannelInfo ::
      !( Maybe
           ChannelInfo
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeSignalingChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsChannelInfo' - A structure that encapsulates the specified signaling channel's metadata and properties.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeSignalingChannelResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeSignalingChannelResponse
describeSignalingChannelResponse pResponseStatus_ =
  DescribeSignalingChannelResponse'
    { _drsChannelInfo =
        Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | A structure that encapsulates the specified signaling channel's metadata and properties.
drsChannelInfo :: Lens' DescribeSignalingChannelResponse (Maybe ChannelInfo)
drsChannelInfo = lens _drsChannelInfo (\s a -> s {_drsChannelInfo = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeSignalingChannelResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeSignalingChannelResponse
