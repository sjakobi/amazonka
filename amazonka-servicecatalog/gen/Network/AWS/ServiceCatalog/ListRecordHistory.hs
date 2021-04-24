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
-- Module      : Network.AWS.ServiceCatalog.ListRecordHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified requests or all performed requests.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListRecordHistory
  ( -- * Creating a Request
    listRecordHistory,
    ListRecordHistory,

    -- * Request Lenses
    lrhPageSize,
    lrhPageToken,
    lrhAccessLevelFilter,
    lrhSearchFilter,
    lrhAcceptLanguage,

    -- * Destructuring the Response
    listRecordHistoryResponse,
    ListRecordHistoryResponse,

    -- * Response Lenses
    lrhrrsRecordDetails,
    lrhrrsNextPageToken,
    lrhrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listRecordHistory' smart constructor.
data ListRecordHistory = ListRecordHistory'
  { _lrhPageSize ::
      !(Maybe Nat),
    _lrhPageToken :: !(Maybe Text),
    _lrhAccessLevelFilter ::
      !(Maybe AccessLevelFilter),
    _lrhSearchFilter ::
      !( Maybe
           ListRecordHistorySearchFilter
       ),
    _lrhAcceptLanguage :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRecordHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrhPageSize' - The maximum number of items to return with this call.
--
-- * 'lrhPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lrhAccessLevelFilter' - The access level to use to obtain results. The default is @User@ .
--
-- * 'lrhSearchFilter' - The search filter to scope the results.
--
-- * 'lrhAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
listRecordHistory ::
  ListRecordHistory
listRecordHistory =
  ListRecordHistory'
    { _lrhPageSize = Nothing,
      _lrhPageToken = Nothing,
      _lrhAccessLevelFilter = Nothing,
      _lrhSearchFilter = Nothing,
      _lrhAcceptLanguage = Nothing
    }

-- | The maximum number of items to return with this call.
lrhPageSize :: Lens' ListRecordHistory (Maybe Natural)
lrhPageSize = lens _lrhPageSize (\s a -> s {_lrhPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lrhPageToken :: Lens' ListRecordHistory (Maybe Text)
lrhPageToken = lens _lrhPageToken (\s a -> s {_lrhPageToken = a})

-- | The access level to use to obtain results. The default is @User@ .
lrhAccessLevelFilter :: Lens' ListRecordHistory (Maybe AccessLevelFilter)
lrhAccessLevelFilter = lens _lrhAccessLevelFilter (\s a -> s {_lrhAccessLevelFilter = a})

-- | The search filter to scope the results.
lrhSearchFilter :: Lens' ListRecordHistory (Maybe ListRecordHistorySearchFilter)
lrhSearchFilter = lens _lrhSearchFilter (\s a -> s {_lrhSearchFilter = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lrhAcceptLanguage :: Lens' ListRecordHistory (Maybe Text)
lrhAcceptLanguage = lens _lrhAcceptLanguage (\s a -> s {_lrhAcceptLanguage = a})

instance AWSPager ListRecordHistory where
  page rq rs
    | stop (rs ^. lrhrrsNextPageToken) = Nothing
    | stop (rs ^. lrhrrsRecordDetails) = Nothing
    | otherwise =
      Just $ rq & lrhPageToken .~ rs ^. lrhrrsNextPageToken

instance AWSRequest ListRecordHistory where
  type Rs ListRecordHistory = ListRecordHistoryResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListRecordHistoryResponse'
            <$> (x .?> "RecordDetails" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListRecordHistory

instance NFData ListRecordHistory

instance ToHeaders ListRecordHistory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListRecordHistory" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListRecordHistory where
  toJSON ListRecordHistory' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lrhPageSize,
            ("PageToken" .=) <$> _lrhPageToken,
            ("AccessLevelFilter" .=) <$> _lrhAccessLevelFilter,
            ("SearchFilter" .=) <$> _lrhSearchFilter,
            ("AcceptLanguage" .=) <$> _lrhAcceptLanguage
          ]
      )

instance ToPath ListRecordHistory where
  toPath = const "/"

instance ToQuery ListRecordHistory where
  toQuery = const mempty

-- | /See:/ 'listRecordHistoryResponse' smart constructor.
data ListRecordHistoryResponse = ListRecordHistoryResponse'
  { _lrhrrsRecordDetails ::
      !( Maybe
           [RecordDetail]
       ),
    _lrhrrsNextPageToken ::
      !(Maybe Text),
    _lrhrrsResponseStatus ::
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

-- | Creates a value of 'ListRecordHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrhrrsRecordDetails' - The records, in reverse chronological order.
--
-- * 'lrhrrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lrhrrsResponseStatus' - -- | The response status code.
listRecordHistoryResponse ::
  -- | 'lrhrrsResponseStatus'
  Int ->
  ListRecordHistoryResponse
listRecordHistoryResponse pResponseStatus_ =
  ListRecordHistoryResponse'
    { _lrhrrsRecordDetails =
        Nothing,
      _lrhrrsNextPageToken = Nothing,
      _lrhrrsResponseStatus = pResponseStatus_
    }

-- | The records, in reverse chronological order.
lrhrrsRecordDetails :: Lens' ListRecordHistoryResponse [RecordDetail]
lrhrrsRecordDetails = lens _lrhrrsRecordDetails (\s a -> s {_lrhrrsRecordDetails = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lrhrrsNextPageToken :: Lens' ListRecordHistoryResponse (Maybe Text)
lrhrrsNextPageToken = lens _lrhrrsNextPageToken (\s a -> s {_lrhrrsNextPageToken = a})

-- | -- | The response status code.
lrhrrsResponseStatus :: Lens' ListRecordHistoryResponse Int
lrhrrsResponseStatus = lens _lrhrrsResponseStatus (\s a -> s {_lrhrrsResponseStatus = a})

instance NFData ListRecordHistoryResponse
