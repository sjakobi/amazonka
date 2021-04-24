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
-- Module      : Network.AWS.DirectConnect.ListVirtualInterfaceTestHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the virtual interface failover test history.
module Network.AWS.DirectConnect.ListVirtualInterfaceTestHistory
  ( -- * Creating a Request
    listVirtualInterfaceTestHistory,
    ListVirtualInterfaceTestHistory,

    -- * Request Lenses
    lvithBgpPeers,
    lvithNextToken,
    lvithStatus,
    lvithMaxResults,
    lvithTestId,
    lvithVirtualInterfaceId,

    -- * Destructuring the Response
    listVirtualInterfaceTestHistoryResponse,
    ListVirtualInterfaceTestHistoryResponse,

    -- * Response Lenses
    lvithrrsNextToken,
    lvithrrsVirtualInterfaceTestHistory,
    lvithrrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listVirtualInterfaceTestHistory' smart constructor.
data ListVirtualInterfaceTestHistory = ListVirtualInterfaceTestHistory'
  { _lvithBgpPeers ::
      !( Maybe
           [Text]
       ),
    _lvithNextToken ::
      !( Maybe
           Text
       ),
    _lvithStatus ::
      !( Maybe
           Text
       ),
    _lvithMaxResults ::
      !( Maybe
           Int
       ),
    _lvithTestId ::
      !( Maybe
           Text
       ),
    _lvithVirtualInterfaceId ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListVirtualInterfaceTestHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvithBgpPeers' - The BGP peers that were placed in the DOWN state during the virtual interface failover test.
--
-- * 'lvithNextToken' - The token for the next page of results.
--
-- * 'lvithStatus' - The status of the virtual interface failover test.
--
-- * 'lvithMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value. If @MaxResults@ is given a value larger than 100, only 100 results are returned.
--
-- * 'lvithTestId' - The ID of the virtual interface failover test.
--
-- * 'lvithVirtualInterfaceId' - The ID of the virtual interface that was tested.
listVirtualInterfaceTestHistory ::
  ListVirtualInterfaceTestHistory
listVirtualInterfaceTestHistory =
  ListVirtualInterfaceTestHistory'
    { _lvithBgpPeers =
        Nothing,
      _lvithNextToken = Nothing,
      _lvithStatus = Nothing,
      _lvithMaxResults = Nothing,
      _lvithTestId = Nothing,
      _lvithVirtualInterfaceId = Nothing
    }

-- | The BGP peers that were placed in the DOWN state during the virtual interface failover test.
lvithBgpPeers :: Lens' ListVirtualInterfaceTestHistory [Text]
lvithBgpPeers = lens _lvithBgpPeers (\s a -> s {_lvithBgpPeers = a}) . _Default . _Coerce

-- | The token for the next page of results.
lvithNextToken :: Lens' ListVirtualInterfaceTestHistory (Maybe Text)
lvithNextToken = lens _lvithNextToken (\s a -> s {_lvithNextToken = a})

-- | The status of the virtual interface failover test.
lvithStatus :: Lens' ListVirtualInterfaceTestHistory (Maybe Text)
lvithStatus = lens _lvithStatus (\s a -> s {_lvithStatus = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value. If @MaxResults@ is given a value larger than 100, only 100 results are returned.
lvithMaxResults :: Lens' ListVirtualInterfaceTestHistory (Maybe Int)
lvithMaxResults = lens _lvithMaxResults (\s a -> s {_lvithMaxResults = a})

-- | The ID of the virtual interface failover test.
lvithTestId :: Lens' ListVirtualInterfaceTestHistory (Maybe Text)
lvithTestId = lens _lvithTestId (\s a -> s {_lvithTestId = a})

-- | The ID of the virtual interface that was tested.
lvithVirtualInterfaceId :: Lens' ListVirtualInterfaceTestHistory (Maybe Text)
lvithVirtualInterfaceId = lens _lvithVirtualInterfaceId (\s a -> s {_lvithVirtualInterfaceId = a})

instance AWSRequest ListVirtualInterfaceTestHistory where
  type
    Rs ListVirtualInterfaceTestHistory =
      ListVirtualInterfaceTestHistoryResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          ListVirtualInterfaceTestHistoryResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "virtualInterfaceTestHistory" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListVirtualInterfaceTestHistory

instance NFData ListVirtualInterfaceTestHistory

instance ToHeaders ListVirtualInterfaceTestHistory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.ListVirtualInterfaceTestHistory" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListVirtualInterfaceTestHistory where
  toJSON ListVirtualInterfaceTestHistory' {..} =
    object
      ( catMaybes
          [ ("bgpPeers" .=) <$> _lvithBgpPeers,
            ("nextToken" .=) <$> _lvithNextToken,
            ("status" .=) <$> _lvithStatus,
            ("maxResults" .=) <$> _lvithMaxResults,
            ("testId" .=) <$> _lvithTestId,
            ("virtualInterfaceId" .=)
              <$> _lvithVirtualInterfaceId
          ]
      )

instance ToPath ListVirtualInterfaceTestHistory where
  toPath = const "/"

instance ToQuery ListVirtualInterfaceTestHistory where
  toQuery = const mempty

-- | /See:/ 'listVirtualInterfaceTestHistoryResponse' smart constructor.
data ListVirtualInterfaceTestHistoryResponse = ListVirtualInterfaceTestHistoryResponse'
  { _lvithrrsNextToken ::
      !( Maybe
           Text
       ),
    _lvithrrsVirtualInterfaceTestHistory ::
      !( Maybe
           [VirtualInterfaceTestHistory]
       ),
    _lvithrrsResponseStatus ::
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

-- | Creates a value of 'ListVirtualInterfaceTestHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvithrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lvithrrsVirtualInterfaceTestHistory' - The ID of the tested virtual interface.
--
-- * 'lvithrrsResponseStatus' - -- | The response status code.
listVirtualInterfaceTestHistoryResponse ::
  -- | 'lvithrrsResponseStatus'
  Int ->
  ListVirtualInterfaceTestHistoryResponse
listVirtualInterfaceTestHistoryResponse
  pResponseStatus_ =
    ListVirtualInterfaceTestHistoryResponse'
      { _lvithrrsNextToken =
          Nothing,
        _lvithrrsVirtualInterfaceTestHistory =
          Nothing,
        _lvithrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
lvithrrsNextToken :: Lens' ListVirtualInterfaceTestHistoryResponse (Maybe Text)
lvithrrsNextToken = lens _lvithrrsNextToken (\s a -> s {_lvithrrsNextToken = a})

-- | The ID of the tested virtual interface.
lvithrrsVirtualInterfaceTestHistory :: Lens' ListVirtualInterfaceTestHistoryResponse [VirtualInterfaceTestHistory]
lvithrrsVirtualInterfaceTestHistory = lens _lvithrrsVirtualInterfaceTestHistory (\s a -> s {_lvithrrsVirtualInterfaceTestHistory = a}) . _Default . _Coerce

-- | -- | The response status code.
lvithrrsResponseStatus :: Lens' ListVirtualInterfaceTestHistoryResponse Int
lvithrrsResponseStatus = lens _lvithrrsResponseStatus (\s a -> s {_lvithrrsResponseStatus = a})

instance
  NFData
    ListVirtualInterfaceTestHistoryResponse
