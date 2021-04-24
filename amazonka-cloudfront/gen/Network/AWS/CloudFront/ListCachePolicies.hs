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
-- Module      : Network.AWS.CloudFront.ListCachePolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of cache policies.
--
--
-- You can optionally apply a filter to return only the managed policies created by AWS, or only the custom policies created in your AWS account.
--
-- You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the @NextMarker@ value from the current response as the @Marker@ value in the subsequent request.
module Network.AWS.CloudFront.ListCachePolicies
  ( -- * Creating a Request
    listCachePolicies,
    ListCachePolicies,

    -- * Request Lenses
    lcpType,
    lcpMaxItems,
    lcpMarker,

    -- * Destructuring the Response
    listCachePoliciesResponse,
    ListCachePoliciesResponse,

    -- * Response Lenses
    lcprrsCachePolicyList,
    lcprrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listCachePolicies' smart constructor.
data ListCachePolicies = ListCachePolicies'
  { _lcpType ::
      !(Maybe CachePolicyType),
    _lcpMaxItems :: !(Maybe Text),
    _lcpMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCachePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcpType' - A filter to return only the specified kinds of cache policies. Valid values are:     * @managed@ – Returns only the managed policies created by AWS.     * @custom@ – Returns only the custom policies created in your AWS account.
--
-- * 'lcpMaxItems' - The maximum number of cache policies that you want in the response.
--
-- * 'lcpMarker' - Use this field when paginating results to indicate where to begin in your list of cache policies. The response includes cache policies in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of @NextMarker@ from the current page’s response.
listCachePolicies ::
  ListCachePolicies
listCachePolicies =
  ListCachePolicies'
    { _lcpType = Nothing,
      _lcpMaxItems = Nothing,
      _lcpMarker = Nothing
    }

-- | A filter to return only the specified kinds of cache policies. Valid values are:     * @managed@ – Returns only the managed policies created by AWS.     * @custom@ – Returns only the custom policies created in your AWS account.
lcpType :: Lens' ListCachePolicies (Maybe CachePolicyType)
lcpType = lens _lcpType (\s a -> s {_lcpType = a})

-- | The maximum number of cache policies that you want in the response.
lcpMaxItems :: Lens' ListCachePolicies (Maybe Text)
lcpMaxItems = lens _lcpMaxItems (\s a -> s {_lcpMaxItems = a})

-- | Use this field when paginating results to indicate where to begin in your list of cache policies. The response includes cache policies in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of @NextMarker@ from the current page’s response.
lcpMarker :: Lens' ListCachePolicies (Maybe Text)
lcpMarker = lens _lcpMarker (\s a -> s {_lcpMarker = a})

instance AWSRequest ListCachePolicies where
  type Rs ListCachePolicies = ListCachePoliciesResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          ListCachePoliciesResponse'
            <$> (parseXML x) <*> (pure (fromEnum s))
      )

instance Hashable ListCachePolicies

instance NFData ListCachePolicies

instance ToHeaders ListCachePolicies where
  toHeaders = const mempty

instance ToPath ListCachePolicies where
  toPath = const "/2020-05-31/cache-policy"

instance ToQuery ListCachePolicies where
  toQuery ListCachePolicies' {..} =
    mconcat
      [ "Type" =: _lcpType,
        "MaxItems" =: _lcpMaxItems,
        "Marker" =: _lcpMarker
      ]

-- | /See:/ 'listCachePoliciesResponse' smart constructor.
data ListCachePoliciesResponse = ListCachePoliciesResponse'
  { _lcprrsCachePolicyList ::
      !( Maybe
           CachePolicyList
       ),
    _lcprrsResponseStatus ::
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

-- | Creates a value of 'ListCachePoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcprrsCachePolicyList' - A list of cache policies.
--
-- * 'lcprrsResponseStatus' - -- | The response status code.
listCachePoliciesResponse ::
  -- | 'lcprrsResponseStatus'
  Int ->
  ListCachePoliciesResponse
listCachePoliciesResponse pResponseStatus_ =
  ListCachePoliciesResponse'
    { _lcprrsCachePolicyList =
        Nothing,
      _lcprrsResponseStatus = pResponseStatus_
    }

-- | A list of cache policies.
lcprrsCachePolicyList :: Lens' ListCachePoliciesResponse (Maybe CachePolicyList)
lcprrsCachePolicyList = lens _lcprrsCachePolicyList (\s a -> s {_lcprrsCachePolicyList = a})

-- | -- | The response status code.
lcprrsResponseStatus :: Lens' ListCachePoliciesResponse Int
lcprrsResponseStatus = lens _lcprrsResponseStatus (\s a -> s {_lcprrsResponseStatus = a})

instance NFData ListCachePoliciesResponse
