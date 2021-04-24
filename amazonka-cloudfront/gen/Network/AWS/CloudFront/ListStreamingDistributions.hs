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
-- Module      : Network.AWS.CloudFront.ListStreamingDistributions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List streaming distributions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFront.ListStreamingDistributions
  ( -- * Creating a Request
    listStreamingDistributions,
    ListStreamingDistributions,

    -- * Request Lenses
    lsdMaxItems,
    lsdMarker,

    -- * Destructuring the Response
    listStreamingDistributionsResponse,
    ListStreamingDistributionsResponse,

    -- * Response Lenses
    lsdrrsResponseStatus,
    lsdrrsStreamingDistributionList,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to list your streaming distributions.
--
--
--
-- /See:/ 'listStreamingDistributions' smart constructor.
data ListStreamingDistributions = ListStreamingDistributions'
  { _lsdMaxItems ::
      !(Maybe Text),
    _lsdMarker ::
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

-- | Creates a value of 'ListStreamingDistributions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsdMaxItems' - The value that you provided for the @MaxItems@ request parameter.
--
-- * 'lsdMarker' - The value that you provided for the @Marker@ request parameter.
listStreamingDistributions ::
  ListStreamingDistributions
listStreamingDistributions =
  ListStreamingDistributions'
    { _lsdMaxItems = Nothing,
      _lsdMarker = Nothing
    }

-- | The value that you provided for the @MaxItems@ request parameter.
lsdMaxItems :: Lens' ListStreamingDistributions (Maybe Text)
lsdMaxItems = lens _lsdMaxItems (\s a -> s {_lsdMaxItems = a})

-- | The value that you provided for the @Marker@ request parameter.
lsdMarker :: Lens' ListStreamingDistributions (Maybe Text)
lsdMarker = lens _lsdMarker (\s a -> s {_lsdMarker = a})

instance AWSPager ListStreamingDistributions where
  page rq rs
    | stop
        ( rs
            ^. lsdrrsStreamingDistributionList . sdlIsTruncated
        ) =
      Nothing
    | isNothing
        ( rs
            ^? lsdrrsStreamingDistributionList
              . sdlNextMarker
              . _Just
        ) =
      Nothing
    | otherwise =
      Just $
        rq
          & lsdMarker
          .~ rs
          ^? lsdrrsStreamingDistributionList
            . sdlNextMarker
            . _Just

instance AWSRequest ListStreamingDistributions where
  type
    Rs ListStreamingDistributions =
      ListStreamingDistributionsResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          ListStreamingDistributionsResponse'
            <$> (pure (fromEnum s)) <*> (parseXML x)
      )

instance Hashable ListStreamingDistributions

instance NFData ListStreamingDistributions

instance ToHeaders ListStreamingDistributions where
  toHeaders = const mempty

instance ToPath ListStreamingDistributions where
  toPath = const "/2020-05-31/streaming-distribution"

instance ToQuery ListStreamingDistributions where
  toQuery ListStreamingDistributions' {..} =
    mconcat
      ["MaxItems" =: _lsdMaxItems, "Marker" =: _lsdMarker]

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'listStreamingDistributionsResponse' smart constructor.
data ListStreamingDistributionsResponse = ListStreamingDistributionsResponse'
  { _lsdrrsResponseStatus ::
      !Int,
    _lsdrrsStreamingDistributionList ::
      !StreamingDistributionList
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListStreamingDistributionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsdrrsResponseStatus' - -- | The response status code.
--
-- * 'lsdrrsStreamingDistributionList' - The @StreamingDistributionList@ type.
listStreamingDistributionsResponse ::
  -- | 'lsdrrsResponseStatus'
  Int ->
  -- | 'lsdrrsStreamingDistributionList'
  StreamingDistributionList ->
  ListStreamingDistributionsResponse
listStreamingDistributionsResponse
  pResponseStatus_
  pStreamingDistributionList_ =
    ListStreamingDistributionsResponse'
      { _lsdrrsResponseStatus =
          pResponseStatus_,
        _lsdrrsStreamingDistributionList =
          pStreamingDistributionList_
      }

-- | -- | The response status code.
lsdrrsResponseStatus :: Lens' ListStreamingDistributionsResponse Int
lsdrrsResponseStatus = lens _lsdrrsResponseStatus (\s a -> s {_lsdrrsResponseStatus = a})

-- | The @StreamingDistributionList@ type.
lsdrrsStreamingDistributionList :: Lens' ListStreamingDistributionsResponse StreamingDistributionList
lsdrrsStreamingDistributionList = lens _lsdrrsStreamingDistributionList (\s a -> s {_lsdrrsStreamingDistributionList = a})

instance NFData ListStreamingDistributionsResponse
