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
-- Module      : Network.AWS.IoT.ListPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your policies.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListPolicies
  ( -- * Creating a Request
    listPolicies,
    ListPolicies,

    -- * Request Lenses
    lpPageSize,
    lpAscendingOrder,
    lpMarker,

    -- * Destructuring the Response
    listPoliciesResponse,
    ListPoliciesResponse,

    -- * Response Lenses
    lprrsPolicies,
    lprrsNextMarker,
    lprrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the ListPolicies operation.
--
--
--
-- /See:/ 'listPolicies' smart constructor.
data ListPolicies = ListPolicies'
  { _lpPageSize ::
      !(Maybe Nat),
    _lpAscendingOrder :: !(Maybe Bool),
    _lpMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpPageSize' - The result page size.
--
-- * 'lpAscendingOrder' - Specifies the order for results. If true, the results are returned in ascending creation order.
--
-- * 'lpMarker' - The marker for the next set of results.
listPolicies ::
  ListPolicies
listPolicies =
  ListPolicies'
    { _lpPageSize = Nothing,
      _lpAscendingOrder = Nothing,
      _lpMarker = Nothing
    }

-- | The result page size.
lpPageSize :: Lens' ListPolicies (Maybe Natural)
lpPageSize = lens _lpPageSize (\s a -> s {_lpPageSize = a}) . mapping _Nat

-- | Specifies the order for results. If true, the results are returned in ascending creation order.
lpAscendingOrder :: Lens' ListPolicies (Maybe Bool)
lpAscendingOrder = lens _lpAscendingOrder (\s a -> s {_lpAscendingOrder = a})

-- | The marker for the next set of results.
lpMarker :: Lens' ListPolicies (Maybe Text)
lpMarker = lens _lpMarker (\s a -> s {_lpMarker = a})

instance AWSPager ListPolicies where
  page rq rs
    | stop (rs ^. lprrsNextMarker) = Nothing
    | stop (rs ^. lprrsPolicies) = Nothing
    | otherwise =
      Just $ rq & lpMarker .~ rs ^. lprrsNextMarker

instance AWSRequest ListPolicies where
  type Rs ListPolicies = ListPoliciesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListPoliciesResponse'
            <$> (x .?> "policies" .!@ mempty)
            <*> (x .?> "nextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListPolicies

instance NFData ListPolicies

instance ToHeaders ListPolicies where
  toHeaders = const mempty

instance ToPath ListPolicies where
  toPath = const "/policies"

instance ToQuery ListPolicies where
  toQuery ListPolicies' {..} =
    mconcat
      [ "pageSize" =: _lpPageSize,
        "isAscendingOrder" =: _lpAscendingOrder,
        "marker" =: _lpMarker
      ]

-- | The output from the ListPolicies operation.
--
--
--
-- /See:/ 'listPoliciesResponse' smart constructor.
data ListPoliciesResponse = ListPoliciesResponse'
  { _lprrsPolicies ::
      !(Maybe [Policy]),
    _lprrsNextMarker ::
      !(Maybe Text),
    _lprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsPolicies' - The descriptions of the policies.
--
-- * 'lprrsNextMarker' - The marker for the next set of results, or null if there are no additional results.
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listPoliciesResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPoliciesResponse
listPoliciesResponse pResponseStatus_ =
  ListPoliciesResponse'
    { _lprrsPolicies = Nothing,
      _lprrsNextMarker = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | The descriptions of the policies.
lprrsPolicies :: Lens' ListPoliciesResponse [Policy]
lprrsPolicies = lens _lprrsPolicies (\s a -> s {_lprrsPolicies = a}) . _Default . _Coerce

-- | The marker for the next set of results, or null if there are no additional results.
lprrsNextMarker :: Lens' ListPoliciesResponse (Maybe Text)
lprrsNextMarker = lens _lprrsNextMarker (\s a -> s {_lprrsNextMarker = a})

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPoliciesResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListPoliciesResponse
