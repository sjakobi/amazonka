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
-- Module      : Network.AWS.WAF.ListIPSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'IPSetSummary' objects in the response.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WAF.ListIPSets
  ( -- * Creating a Request
    listIPSets,
    ListIPSets,

    -- * Request Lenses
    lisNextMarker,
    lisLimit,

    -- * Destructuring the Response
    listIPSetsResponse,
    ListIPSetsResponse,

    -- * Response Lenses
    lisrrsNextMarker,
    lisrrsIPSets,
    lisrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'listIPSets' smart constructor.
data ListIPSets = ListIPSets'
  { _lisNextMarker ::
      !(Maybe Text),
    _lisLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListIPSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisNextMarker' - AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @IPSets@ . For the second and subsequent @ListIPSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @IPSets@ .
--
-- * 'lisLimit' - Specifies the number of @IPSet@ objects that you want AWS WAF to return for this request. If you have more @IPSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @IPSet@ objects.
listIPSets ::
  ListIPSets
listIPSets =
  ListIPSets'
    { _lisNextMarker = Nothing,
      _lisLimit = Nothing
    }

-- | AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @IPSets@ . For the second and subsequent @ListIPSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @IPSets@ .
lisNextMarker :: Lens' ListIPSets (Maybe Text)
lisNextMarker = lens _lisNextMarker (\s a -> s {_lisNextMarker = a})

-- | Specifies the number of @IPSet@ objects that you want AWS WAF to return for this request. If you have more @IPSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @IPSet@ objects.
lisLimit :: Lens' ListIPSets (Maybe Natural)
lisLimit = lens _lisLimit (\s a -> s {_lisLimit = a}) . mapping _Nat

instance AWSPager ListIPSets where
  page rq rs
    | stop (rs ^. lisrrsNextMarker) = Nothing
    | stop (rs ^. lisrrsIPSets) = Nothing
    | otherwise =
      Just $ rq & lisNextMarker .~ rs ^. lisrrsNextMarker

instance AWSRequest ListIPSets where
  type Rs ListIPSets = ListIPSetsResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          ListIPSetsResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "IPSets" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListIPSets

instance NFData ListIPSets

instance ToHeaders ListIPSets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSWAF_20150824.ListIPSets" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListIPSets where
  toJSON ListIPSets' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _lisNextMarker,
            ("Limit" .=) <$> _lisLimit
          ]
      )

instance ToPath ListIPSets where
  toPath = const "/"

instance ToQuery ListIPSets where
  toQuery = const mempty

-- | /See:/ 'listIPSetsResponse' smart constructor.
data ListIPSetsResponse = ListIPSetsResponse'
  { _lisrrsNextMarker ::
      !(Maybe Text),
    _lisrrsIPSets ::
      !(Maybe [IPSetSummary]),
    _lisrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListIPSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisrrsNextMarker' - To list more @IPSet@ objects, submit another @ListIPSets@ request, and in the next request use the @NextMarker@ response value as the @NextMarker@ value.
--
-- * 'lisrrsIPSets' - An array of 'IPSetSummary' objects.
--
-- * 'lisrrsResponseStatus' - -- | The response status code.
listIPSetsResponse ::
  -- | 'lisrrsResponseStatus'
  Int ->
  ListIPSetsResponse
listIPSetsResponse pResponseStatus_ =
  ListIPSetsResponse'
    { _lisrrsNextMarker = Nothing,
      _lisrrsIPSets = Nothing,
      _lisrrsResponseStatus = pResponseStatus_
    }

-- | To list more @IPSet@ objects, submit another @ListIPSets@ request, and in the next request use the @NextMarker@ response value as the @NextMarker@ value.
lisrrsNextMarker :: Lens' ListIPSetsResponse (Maybe Text)
lisrrsNextMarker = lens _lisrrsNextMarker (\s a -> s {_lisrrsNextMarker = a})

-- | An array of 'IPSetSummary' objects.
lisrrsIPSets :: Lens' ListIPSetsResponse [IPSetSummary]
lisrrsIPSets = lens _lisrrsIPSets (\s a -> s {_lisrrsIPSets = a}) . _Default . _Coerce

-- | -- | The response status code.
lisrrsResponseStatus :: Lens' ListIPSetsResponse Int
lisrrsResponseStatus = lens _lisrrsResponseStatus (\s a -> s {_lisrrsResponseStatus = a})

instance NFData ListIPSetsResponse
