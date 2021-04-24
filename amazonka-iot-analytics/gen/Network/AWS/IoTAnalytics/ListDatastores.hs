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
-- Module      : Network.AWS.IoTAnalytics.ListDatastores
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of data stores.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoTAnalytics.ListDatastores
  ( -- * Creating a Request
    listDatastores,
    ListDatastores,

    -- * Request Lenses
    ldNextToken,
    ldMaxResults,

    -- * Destructuring the Response
    listDatastoresResponse,
    ListDatastoresResponse,

    -- * Response Lenses
    ldrrsNextToken,
    ldrrsDatastoreSummaries,
    ldrrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDatastores' smart constructor.
data ListDatastores = ListDatastores'
  { _ldNextToken ::
      !(Maybe Text),
    _ldMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDatastores' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldNextToken' - The token for the next set of results.
--
-- * 'ldMaxResults' - The maximum number of results to return in this request. The default value is 100.
listDatastores ::
  ListDatastores
listDatastores =
  ListDatastores'
    { _ldNextToken = Nothing,
      _ldMaxResults = Nothing
    }

-- | The token for the next set of results.
ldNextToken :: Lens' ListDatastores (Maybe Text)
ldNextToken = lens _ldNextToken (\s a -> s {_ldNextToken = a})

-- | The maximum number of results to return in this request. The default value is 100.
ldMaxResults :: Lens' ListDatastores (Maybe Natural)
ldMaxResults = lens _ldMaxResults (\s a -> s {_ldMaxResults = a}) . mapping _Nat

instance AWSPager ListDatastores where
  page rq rs
    | stop (rs ^. ldrrsNextToken) = Nothing
    | stop (rs ^. ldrrsDatastoreSummaries) = Nothing
    | otherwise =
      Just $ rq & ldNextToken .~ rs ^. ldrrsNextToken

instance AWSRequest ListDatastores where
  type Rs ListDatastores = ListDatastoresResponse
  request = get ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          ListDatastoresResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "datastoreSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDatastores

instance NFData ListDatastores

instance ToHeaders ListDatastores where
  toHeaders = const mempty

instance ToPath ListDatastores where
  toPath = const "/datastores"

instance ToQuery ListDatastores where
  toQuery ListDatastores' {..} =
    mconcat
      [ "nextToken" =: _ldNextToken,
        "maxResults" =: _ldMaxResults
      ]

-- | /See:/ 'listDatastoresResponse' smart constructor.
data ListDatastoresResponse = ListDatastoresResponse'
  { _ldrrsNextToken ::
      !(Maybe Text),
    _ldrrsDatastoreSummaries ::
      !( Maybe
           [DatastoreSummary]
       ),
    _ldrrsResponseStatus ::
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

-- | Creates a value of 'ListDatastoresResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsNextToken' - The token to retrieve the next set of results, or @null@ if there are no more results.
--
-- * 'ldrrsDatastoreSummaries' - A list of @DatastoreSummary@ objects.
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
listDatastoresResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  ListDatastoresResponse
listDatastoresResponse pResponseStatus_ =
  ListDatastoresResponse'
    { _ldrrsNextToken = Nothing,
      _ldrrsDatastoreSummaries = Nothing,
      _ldrrsResponseStatus = pResponseStatus_
    }

-- | The token to retrieve the next set of results, or @null@ if there are no more results.
ldrrsNextToken :: Lens' ListDatastoresResponse (Maybe Text)
ldrrsNextToken = lens _ldrrsNextToken (\s a -> s {_ldrrsNextToken = a})

-- | A list of @DatastoreSummary@ objects.
ldrrsDatastoreSummaries :: Lens' ListDatastoresResponse [DatastoreSummary]
ldrrsDatastoreSummaries = lens _ldrrsDatastoreSummaries (\s a -> s {_ldrrsDatastoreSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDatastoresResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

instance NFData ListDatastoresResponse
