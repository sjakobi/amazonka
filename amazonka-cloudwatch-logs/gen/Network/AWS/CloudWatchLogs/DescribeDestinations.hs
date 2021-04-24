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
-- Module      : Network.AWS.CloudWatchLogs.DescribeDestinations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all your destinations. The results are ASCII-sorted by destination name.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.DescribeDestinations
  ( -- * Creating a Request
    describeDestinations,
    DescribeDestinations,

    -- * Request Lenses
    ddNextToken,
    ddDestinationNamePrefix,
    ddLimit,

    -- * Destructuring the Response
    describeDestinationsResponse,
    DescribeDestinationsResponse,

    -- * Response Lenses
    ddrrsNextToken,
    ddrrsDestinations,
    ddrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDestinations' smart constructor.
data DescribeDestinations = DescribeDestinations'
  { _ddNextToken ::
      !(Maybe Text),
    _ddDestinationNamePrefix ::
      !(Maybe Text),
    _ddLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDestinations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'ddDestinationNamePrefix' - The prefix to match. If you don't specify a value, no prefix filter is applied.
--
-- * 'ddLimit' - The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
describeDestinations ::
  DescribeDestinations
describeDestinations =
  DescribeDestinations'
    { _ddNextToken = Nothing,
      _ddDestinationNamePrefix = Nothing,
      _ddLimit = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
ddNextToken :: Lens' DescribeDestinations (Maybe Text)
ddNextToken = lens _ddNextToken (\s a -> s {_ddNextToken = a})

-- | The prefix to match. If you don't specify a value, no prefix filter is applied.
ddDestinationNamePrefix :: Lens' DescribeDestinations (Maybe Text)
ddDestinationNamePrefix = lens _ddDestinationNamePrefix (\s a -> s {_ddDestinationNamePrefix = a})

-- | The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
ddLimit :: Lens' DescribeDestinations (Maybe Natural)
ddLimit = lens _ddLimit (\s a -> s {_ddLimit = a}) . mapping _Nat

instance AWSPager DescribeDestinations where
  page rq rs
    | stop (rs ^. ddrrsNextToken) = Nothing
    | stop (rs ^. ddrrsDestinations) = Nothing
    | otherwise =
      Just $ rq & ddNextToken .~ rs ^. ddrrsNextToken

instance AWSRequest DescribeDestinations where
  type
    Rs DescribeDestinations =
      DescribeDestinationsResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          DescribeDestinationsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "destinations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDestinations

instance NFData DescribeDestinations

instance ToHeaders DescribeDestinations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Logs_20140328.DescribeDestinations" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDestinations where
  toJSON DescribeDestinations' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ddNextToken,
            ("DestinationNamePrefix" .=)
              <$> _ddDestinationNamePrefix,
            ("limit" .=) <$> _ddLimit
          ]
      )

instance ToPath DescribeDestinations where
  toPath = const "/"

instance ToQuery DescribeDestinations where
  toQuery = const mempty

-- | /See:/ 'describeDestinationsResponse' smart constructor.
data DescribeDestinationsResponse = DescribeDestinationsResponse'
  { _ddrrsNextToken ::
      !(Maybe Text),
    _ddrrsDestinations ::
      !( Maybe
           [Destination]
       ),
    _ddrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDestinationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrrsNextToken' - Undocumented member.
--
-- * 'ddrrsDestinations' - The destinations.
--
-- * 'ddrrsResponseStatus' - -- | The response status code.
describeDestinationsResponse ::
  -- | 'ddrrsResponseStatus'
  Int ->
  DescribeDestinationsResponse
describeDestinationsResponse pResponseStatus_ =
  DescribeDestinationsResponse'
    { _ddrrsNextToken =
        Nothing,
      _ddrrsDestinations = Nothing,
      _ddrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ddrrsNextToken :: Lens' DescribeDestinationsResponse (Maybe Text)
ddrrsNextToken = lens _ddrrsNextToken (\s a -> s {_ddrrsNextToken = a})

-- | The destinations.
ddrrsDestinations :: Lens' DescribeDestinationsResponse [Destination]
ddrrsDestinations = lens _ddrrsDestinations (\s a -> s {_ddrrsDestinations = a}) . _Default . _Coerce

-- | -- | The response status code.
ddrrsResponseStatus :: Lens' DescribeDestinationsResponse Int
ddrrsResponseStatus = lens _ddrrsResponseStatus (\s a -> s {_ddrrsResponseStatus = a})

instance NFData DescribeDestinationsResponse
