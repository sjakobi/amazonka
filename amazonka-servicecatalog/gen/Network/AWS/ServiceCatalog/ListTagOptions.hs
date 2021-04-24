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
-- Module      : Network.AWS.ServiceCatalog.ListTagOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified TagOptions or all TagOptions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListTagOptions
  ( -- * Creating a Request
    listTagOptions,
    ListTagOptions,

    -- * Request Lenses
    ltoPageSize,
    ltoPageToken,
    ltoFilters,

    -- * Destructuring the Response
    listTagOptionsResponse,
    ListTagOptionsResponse,

    -- * Response Lenses
    ltorrsPageToken,
    ltorrsTagOptionDetails,
    ltorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listTagOptions' smart constructor.
data ListTagOptions = ListTagOptions'
  { _ltoPageSize ::
      !(Maybe Nat),
    _ltoPageToken :: !(Maybe Text),
    _ltoFilters ::
      !(Maybe ListTagOptionsFilters)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltoPageSize' - The maximum number of items to return with this call.
--
-- * 'ltoPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'ltoFilters' - The search filters. If no search filters are specified, the output includes all TagOptions.
listTagOptions ::
  ListTagOptions
listTagOptions =
  ListTagOptions'
    { _ltoPageSize = Nothing,
      _ltoPageToken = Nothing,
      _ltoFilters = Nothing
    }

-- | The maximum number of items to return with this call.
ltoPageSize :: Lens' ListTagOptions (Maybe Natural)
ltoPageSize = lens _ltoPageSize (\s a -> s {_ltoPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
ltoPageToken :: Lens' ListTagOptions (Maybe Text)
ltoPageToken = lens _ltoPageToken (\s a -> s {_ltoPageToken = a})

-- | The search filters. If no search filters are specified, the output includes all TagOptions.
ltoFilters :: Lens' ListTagOptions (Maybe ListTagOptionsFilters)
ltoFilters = lens _ltoFilters (\s a -> s {_ltoFilters = a})

instance AWSPager ListTagOptions where
  page rq rs
    | stop (rs ^. ltorrsPageToken) = Nothing
    | stop (rs ^. ltorrsTagOptionDetails) = Nothing
    | otherwise =
      Just $ rq & ltoPageToken .~ rs ^. ltorrsPageToken

instance AWSRequest ListTagOptions where
  type Rs ListTagOptions = ListTagOptionsResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListTagOptionsResponse'
            <$> (x .?> "PageToken")
            <*> (x .?> "TagOptionDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTagOptions

instance NFData ListTagOptions

instance ToHeaders ListTagOptions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListTagOptions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTagOptions where
  toJSON ListTagOptions' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _ltoPageSize,
            ("PageToken" .=) <$> _ltoPageToken,
            ("Filters" .=) <$> _ltoFilters
          ]
      )

instance ToPath ListTagOptions where
  toPath = const "/"

instance ToQuery ListTagOptions where
  toQuery = const mempty

-- | /See:/ 'listTagOptionsResponse' smart constructor.
data ListTagOptionsResponse = ListTagOptionsResponse'
  { _ltorrsPageToken ::
      !(Maybe Text),
    _ltorrsTagOptionDetails ::
      !( Maybe
           [TagOptionDetail]
       ),
    _ltorrsResponseStatus ::
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

-- | Creates a value of 'ListTagOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltorrsPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'ltorrsTagOptionDetails' - Information about the TagOptions.
--
-- * 'ltorrsResponseStatus' - -- | The response status code.
listTagOptionsResponse ::
  -- | 'ltorrsResponseStatus'
  Int ->
  ListTagOptionsResponse
listTagOptionsResponse pResponseStatus_ =
  ListTagOptionsResponse'
    { _ltorrsPageToken = Nothing,
      _ltorrsTagOptionDetails = Nothing,
      _ltorrsResponseStatus = pResponseStatus_
    }

-- | The page token for the next set of results. To retrieve the first set of results, use null.
ltorrsPageToken :: Lens' ListTagOptionsResponse (Maybe Text)
ltorrsPageToken = lens _ltorrsPageToken (\s a -> s {_ltorrsPageToken = a})

-- | Information about the TagOptions.
ltorrsTagOptionDetails :: Lens' ListTagOptionsResponse [TagOptionDetail]
ltorrsTagOptionDetails = lens _ltorrsTagOptionDetails (\s a -> s {_ltorrsTagOptionDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
ltorrsResponseStatus :: Lens' ListTagOptionsResponse Int
ltorrsResponseStatus = lens _ltorrsResponseStatus (\s a -> s {_ltorrsResponseStatus = a})

instance NFData ListTagOptionsResponse
