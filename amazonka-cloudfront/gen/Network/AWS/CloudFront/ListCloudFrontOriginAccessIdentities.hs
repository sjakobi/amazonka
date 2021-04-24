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
-- Module      : Network.AWS.CloudFront.ListCloudFrontOriginAccessIdentities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists origin access identities.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFront.ListCloudFrontOriginAccessIdentities
  ( -- * Creating a Request
    listCloudFrontOriginAccessIdentities,
    ListCloudFrontOriginAccessIdentities,

    -- * Request Lenses
    lcfoaiMaxItems,
    lcfoaiMarker,

    -- * Destructuring the Response
    listCloudFrontOriginAccessIdentitiesResponse,
    ListCloudFrontOriginAccessIdentitiesResponse,

    -- * Response Lenses
    lcfoairrsResponseStatus,
    lcfoairrsCloudFrontOriginAccessIdentityList,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to list origin access identities.
--
--
--
-- /See:/ 'listCloudFrontOriginAccessIdentities' smart constructor.
data ListCloudFrontOriginAccessIdentities = ListCloudFrontOriginAccessIdentities'
  { _lcfoaiMaxItems ::
      !( Maybe
           Text
       ),
    _lcfoaiMarker ::
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

-- | Creates a value of 'ListCloudFrontOriginAccessIdentities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcfoaiMaxItems' - The maximum number of origin access identities you want in the response body.
--
-- * 'lcfoaiMarker' - Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the @Marker@ to the value of the @NextMarker@ from the current page's response (which is also the ID of the last identity on that page).
listCloudFrontOriginAccessIdentities ::
  ListCloudFrontOriginAccessIdentities
listCloudFrontOriginAccessIdentities =
  ListCloudFrontOriginAccessIdentities'
    { _lcfoaiMaxItems =
        Nothing,
      _lcfoaiMarker = Nothing
    }

-- | The maximum number of origin access identities you want in the response body.
lcfoaiMaxItems :: Lens' ListCloudFrontOriginAccessIdentities (Maybe Text)
lcfoaiMaxItems = lens _lcfoaiMaxItems (\s a -> s {_lcfoaiMaxItems = a})

-- | Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the @Marker@ to the value of the @NextMarker@ from the current page's response (which is also the ID of the last identity on that page).
lcfoaiMarker :: Lens' ListCloudFrontOriginAccessIdentities (Maybe Text)
lcfoaiMarker = lens _lcfoaiMarker (\s a -> s {_lcfoaiMarker = a})

instance
  AWSPager
    ListCloudFrontOriginAccessIdentities
  where
  page rq rs
    | stop
        ( rs
            ^. lcfoairrsCloudFrontOriginAccessIdentityList
              . cfoailIsTruncated
        ) =
      Nothing
    | isNothing
        ( rs
            ^? lcfoairrsCloudFrontOriginAccessIdentityList
              . cfoailNextMarker
              . _Just
        ) =
      Nothing
    | otherwise =
      Just $
        rq
          & lcfoaiMarker
          .~ rs
          ^? lcfoairrsCloudFrontOriginAccessIdentityList
            . cfoailNextMarker
            . _Just

instance
  AWSRequest
    ListCloudFrontOriginAccessIdentities
  where
  type
    Rs ListCloudFrontOriginAccessIdentities =
      ListCloudFrontOriginAccessIdentitiesResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          ListCloudFrontOriginAccessIdentitiesResponse'
            <$> (pure (fromEnum s)) <*> (parseXML x)
      )

instance
  Hashable
    ListCloudFrontOriginAccessIdentities

instance NFData ListCloudFrontOriginAccessIdentities

instance
  ToHeaders
    ListCloudFrontOriginAccessIdentities
  where
  toHeaders = const mempty

instance ToPath ListCloudFrontOriginAccessIdentities where
  toPath =
    const
      "/2020-05-31/origin-access-identity/cloudfront"

instance ToQuery ListCloudFrontOriginAccessIdentities where
  toQuery ListCloudFrontOriginAccessIdentities' {..} =
    mconcat
      [ "MaxItems" =: _lcfoaiMaxItems,
        "Marker" =: _lcfoaiMarker
      ]

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'listCloudFrontOriginAccessIdentitiesResponse' smart constructor.
data ListCloudFrontOriginAccessIdentitiesResponse = ListCloudFrontOriginAccessIdentitiesResponse'
  { _lcfoairrsResponseStatus ::
      !Int,
    _lcfoairrsCloudFrontOriginAccessIdentityList ::
      !CloudFrontOriginAccessIdentityList
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListCloudFrontOriginAccessIdentitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcfoairrsResponseStatus' - -- | The response status code.
--
-- * 'lcfoairrsCloudFrontOriginAccessIdentityList' - The @CloudFrontOriginAccessIdentityList@ type.
listCloudFrontOriginAccessIdentitiesResponse ::
  -- | 'lcfoairrsResponseStatus'
  Int ->
  -- | 'lcfoairrsCloudFrontOriginAccessIdentityList'
  CloudFrontOriginAccessIdentityList ->
  ListCloudFrontOriginAccessIdentitiesResponse
listCloudFrontOriginAccessIdentitiesResponse
  pResponseStatus_
  pCloudFrontOriginAccessIdentityList_ =
    ListCloudFrontOriginAccessIdentitiesResponse'
      { _lcfoairrsResponseStatus =
          pResponseStatus_,
        _lcfoairrsCloudFrontOriginAccessIdentityList =
          pCloudFrontOriginAccessIdentityList_
      }

-- | -- | The response status code.
lcfoairrsResponseStatus :: Lens' ListCloudFrontOriginAccessIdentitiesResponse Int
lcfoairrsResponseStatus = lens _lcfoairrsResponseStatus (\s a -> s {_lcfoairrsResponseStatus = a})

-- | The @CloudFrontOriginAccessIdentityList@ type.
lcfoairrsCloudFrontOriginAccessIdentityList :: Lens' ListCloudFrontOriginAccessIdentitiesResponse CloudFrontOriginAccessIdentityList
lcfoairrsCloudFrontOriginAccessIdentityList = lens _lcfoairrsCloudFrontOriginAccessIdentityList (\s a -> s {_lcfoairrsCloudFrontOriginAccessIdentityList = a})

instance
  NFData
    ListCloudFrontOriginAccessIdentitiesResponse
