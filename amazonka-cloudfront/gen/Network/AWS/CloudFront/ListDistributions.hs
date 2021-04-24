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
-- Module      : Network.AWS.CloudFront.ListDistributions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List CloudFront distributions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFront.ListDistributions
  ( -- * Creating a Request
    listDistributions,
    ListDistributions,

    -- * Request Lenses
    ldMaxItems,
    ldMarker,

    -- * Destructuring the Response
    listDistributionsResponse,
    ListDistributionsResponse,

    -- * Response Lenses
    ldrrsResponseStatus,
    ldrrsDistributionList,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to list your distributions.
--
--
--
-- /See:/ 'listDistributions' smart constructor.
data ListDistributions = ListDistributions'
  { _ldMaxItems ::
      !(Maybe Text),
    _ldMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDistributions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldMaxItems' - The maximum number of distributions you want in the response body.
--
-- * 'ldMarker' - Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the @Marker@ to the value of the @NextMarker@ from the current page's response (which is also the ID of the last distribution on that page).
listDistributions ::
  ListDistributions
listDistributions =
  ListDistributions'
    { _ldMaxItems = Nothing,
      _ldMarker = Nothing
    }

-- | The maximum number of distributions you want in the response body.
ldMaxItems :: Lens' ListDistributions (Maybe Text)
ldMaxItems = lens _ldMaxItems (\s a -> s {_ldMaxItems = a})

-- | Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the @Marker@ to the value of the @NextMarker@ from the current page's response (which is also the ID of the last distribution on that page).
ldMarker :: Lens' ListDistributions (Maybe Text)
ldMarker = lens _ldMarker (\s a -> s {_ldMarker = a})

instance AWSPager ListDistributions where
  page rq rs
    | stop (rs ^. ldrrsDistributionList . dlIsTruncated) =
      Nothing
    | isNothing
        (rs ^? ldrrsDistributionList . dlNextMarker . _Just) =
      Nothing
    | otherwise =
      Just $
        rq
          & ldMarker
          .~ rs ^? ldrrsDistributionList . dlNextMarker . _Just

instance AWSRequest ListDistributions where
  type Rs ListDistributions = ListDistributionsResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          ListDistributionsResponse'
            <$> (pure (fromEnum s)) <*> (parseXML x)
      )

instance Hashable ListDistributions

instance NFData ListDistributions

instance ToHeaders ListDistributions where
  toHeaders = const mempty

instance ToPath ListDistributions where
  toPath = const "/2020-05-31/distribution"

instance ToQuery ListDistributions where
  toQuery ListDistributions' {..} =
    mconcat
      ["MaxItems" =: _ldMaxItems, "Marker" =: _ldMarker]

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'listDistributionsResponse' smart constructor.
data ListDistributionsResponse = ListDistributionsResponse'
  { _ldrrsResponseStatus ::
      !Int,
    _ldrrsDistributionList ::
      !DistributionList
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListDistributionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
--
-- * 'ldrrsDistributionList' - The @DistributionList@ type.
listDistributionsResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  -- | 'ldrrsDistributionList'
  DistributionList ->
  ListDistributionsResponse
listDistributionsResponse
  pResponseStatus_
  pDistributionList_ =
    ListDistributionsResponse'
      { _ldrrsResponseStatus =
          pResponseStatus_,
        _ldrrsDistributionList = pDistributionList_
      }

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDistributionsResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

-- | The @DistributionList@ type.
ldrrsDistributionList :: Lens' ListDistributionsResponse DistributionList
ldrrsDistributionList = lens _ldrrsDistributionList (\s a -> s {_ldrrsDistributionList = a})

instance NFData ListDistributionsResponse
