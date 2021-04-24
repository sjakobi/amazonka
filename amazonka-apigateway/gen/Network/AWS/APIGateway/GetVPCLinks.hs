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
-- Module      : Network.AWS.APIGateway.GetVPCLinks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the 'VpcLinks' collection under the caller's account in a selected region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetVPCLinks
  ( -- * Creating a Request
    getVPCLinks,
    GetVPCLinks,

    -- * Request Lenses
    gvlPosition,
    gvlLimit,

    -- * Destructuring the Response
    getVPCLinksResponse,
    GetVPCLinksResponse,

    -- * Response Lenses
    gvlrrsItems,
    gvlrrsPosition,
    gvlrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Gets the 'VpcLinks' collection under the caller's account in a selected region.
--
--
--
-- /See:/ 'getVPCLinks' smart constructor.
data GetVPCLinks = GetVPCLinks'
  { _gvlPosition ::
      !(Maybe Text),
    _gvlLimit :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetVPCLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvlPosition' - The current pagination position in the paged result set.
--
-- * 'gvlLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
getVPCLinks ::
  GetVPCLinks
getVPCLinks =
  GetVPCLinks'
    { _gvlPosition = Nothing,
      _gvlLimit = Nothing
    }

-- | The current pagination position in the paged result set.
gvlPosition :: Lens' GetVPCLinks (Maybe Text)
gvlPosition = lens _gvlPosition (\s a -> s {_gvlPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gvlLimit :: Lens' GetVPCLinks (Maybe Int)
gvlLimit = lens _gvlLimit (\s a -> s {_gvlLimit = a})

instance AWSPager GetVPCLinks where
  page rq rs
    | stop (rs ^. gvlrrsPosition) = Nothing
    | stop (rs ^. gvlrrsItems) = Nothing
    | otherwise =
      Just $ rq & gvlPosition .~ rs ^. gvlrrsPosition

instance AWSRequest GetVPCLinks where
  type Rs GetVPCLinks = GetVPCLinksResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetVPCLinksResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetVPCLinks

instance NFData GetVPCLinks

instance ToHeaders GetVPCLinks where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetVPCLinks where
  toPath = const "/vpclinks"

instance ToQuery GetVPCLinks where
  toQuery GetVPCLinks' {..} =
    mconcat
      ["position" =: _gvlPosition, "limit" =: _gvlLimit]

-- | The collection of VPC links under the caller's account in a region.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-with-private-integration.html Getting Started with Private Integrations> , <https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-private-integration.html Set up Private Integrations>
--
-- /See:/ 'getVPCLinksResponse' smart constructor.
data GetVPCLinksResponse = GetVPCLinksResponse'
  { _gvlrrsItems ::
      !(Maybe [VPCLink]),
    _gvlrrsPosition ::
      !(Maybe Text),
    _gvlrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetVPCLinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvlrrsItems' - The current page of elements from this collection.
--
-- * 'gvlrrsPosition' - Undocumented member.
--
-- * 'gvlrrsResponseStatus' - -- | The response status code.
getVPCLinksResponse ::
  -- | 'gvlrrsResponseStatus'
  Int ->
  GetVPCLinksResponse
getVPCLinksResponse pResponseStatus_ =
  GetVPCLinksResponse'
    { _gvlrrsItems = Nothing,
      _gvlrrsPosition = Nothing,
      _gvlrrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
gvlrrsItems :: Lens' GetVPCLinksResponse [VPCLink]
gvlrrsItems = lens _gvlrrsItems (\s a -> s {_gvlrrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
gvlrrsPosition :: Lens' GetVPCLinksResponse (Maybe Text)
gvlrrsPosition = lens _gvlrrsPosition (\s a -> s {_gvlrrsPosition = a})

-- | -- | The response status code.
gvlrrsResponseStatus :: Lens' GetVPCLinksResponse Int
gvlrrsResponseStatus = lens _gvlrrsResponseStatus (\s a -> s {_gvlrrsResponseStatus = a})

instance NFData GetVPCLinksResponse
