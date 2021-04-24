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
-- Module      : Network.AWS.StorageGateway.ListGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists gateways owned by an AWS account in an AWS Region specified in the request. The returned list is ordered by gateway Amazon Resource Name (ARN).
--
--
-- By default, the operation returns a maximum of 100 gateways. This operation supports pagination that allows you to optionally reduce the number of gateways returned in a response.
--
-- If you have more gateways than are returned in a response (that is, the response returns only a truncated list of your gateways), the response contains a marker that you can specify in your next request to fetch the next page of gateways.
--
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.ListGateways
  ( -- * Creating a Request
    listGateways,
    ListGateways,

    -- * Request Lenses
    lgLimit,
    lgMarker,

    -- * Destructuring the Response
    listGatewaysResponse,
    ListGatewaysResponse,

    -- * Response Lenses
    lgrrsGateways,
    lgrrsMarker,
    lgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing zero or more of the following fields:
--
--
--     * 'ListGatewaysInput$Limit'
--
--     * 'ListGatewaysInput$Marker'
--
--
--
--
-- /See:/ 'listGateways' smart constructor.
data ListGateways = ListGateways'
  { _lgLimit ::
      !(Maybe Nat),
    _lgMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGateways' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgLimit' - Specifies that the list of gateways returned be limited to the specified number of items.
--
-- * 'lgMarker' - An opaque string that indicates the position at which to begin the returned list of gateways.
listGateways ::
  ListGateways
listGateways =
  ListGateways'
    { _lgLimit = Nothing,
      _lgMarker = Nothing
    }

-- | Specifies that the list of gateways returned be limited to the specified number of items.
lgLimit :: Lens' ListGateways (Maybe Natural)
lgLimit = lens _lgLimit (\s a -> s {_lgLimit = a}) . mapping _Nat

-- | An opaque string that indicates the position at which to begin the returned list of gateways.
lgMarker :: Lens' ListGateways (Maybe Text)
lgMarker = lens _lgMarker (\s a -> s {_lgMarker = a})

instance AWSPager ListGateways where
  page rq rs
    | stop (rs ^. lgrrsMarker) = Nothing
    | stop (rs ^. lgrrsGateways) = Nothing
    | otherwise =
      Just $ rq & lgMarker .~ rs ^. lgrrsMarker

instance AWSRequest ListGateways where
  type Rs ListGateways = ListGatewaysResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          ListGatewaysResponse'
            <$> (x .?> "Gateways" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListGateways

instance NFData ListGateways

instance ToHeaders ListGateways where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.ListGateways" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListGateways where
  toJSON ListGateways' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _lgLimit,
            ("Marker" .=) <$> _lgMarker
          ]
      )

instance ToPath ListGateways where
  toPath = const "/"

instance ToQuery ListGateways where
  toQuery = const mempty

-- | /See:/ 'listGatewaysResponse' smart constructor.
data ListGatewaysResponse = ListGatewaysResponse'
  { _lgrrsGateways ::
      !(Maybe [GatewayInfo]),
    _lgrrsMarker :: !(Maybe Text),
    _lgrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGatewaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrrsGateways' - An array of 'GatewayInfo' objects.
--
-- * 'lgrrsMarker' - Use the marker in your next request to fetch the next set of gateways in the list. If there are no more gateways to list, this field does not appear in the response.
--
-- * 'lgrrsResponseStatus' - -- | The response status code.
listGatewaysResponse ::
  -- | 'lgrrsResponseStatus'
  Int ->
  ListGatewaysResponse
listGatewaysResponse pResponseStatus_ =
  ListGatewaysResponse'
    { _lgrrsGateways = Nothing,
      _lgrrsMarker = Nothing,
      _lgrrsResponseStatus = pResponseStatus_
    }

-- | An array of 'GatewayInfo' objects.
lgrrsGateways :: Lens' ListGatewaysResponse [GatewayInfo]
lgrrsGateways = lens _lgrrsGateways (\s a -> s {_lgrrsGateways = a}) . _Default . _Coerce

-- | Use the marker in your next request to fetch the next set of gateways in the list. If there are no more gateways to list, this field does not appear in the response.
lgrrsMarker :: Lens' ListGatewaysResponse (Maybe Text)
lgrrsMarker = lens _lgrrsMarker (\s a -> s {_lgrrsMarker = a})

-- | -- | The response status code.
lgrrsResponseStatus :: Lens' ListGatewaysResponse Int
lgrrsResponseStatus = lens _lgrrsResponseStatus (\s a -> s {_lgrrsResponseStatus = a})

instance NFData ListGatewaysResponse
