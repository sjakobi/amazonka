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
-- Module      : Network.AWS.MarketplaceEntitlement.GetEntitlements
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- GetEntitlements retrieves entitlement values for a given product. The results can be filtered based on customer identifier or product dimensions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MarketplaceEntitlement.GetEntitlements
  ( -- * Creating a Request
    getEntitlements,
    GetEntitlements,

    -- * Request Lenses
    geNextToken,
    geMaxResults,
    geFilter,
    geProductCode,

    -- * Destructuring the Response
    getEntitlementsResponse,
    GetEntitlementsResponse,

    -- * Response Lenses
    gerrsNextToken,
    gerrsEntitlements,
    gerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MarketplaceEntitlement.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The GetEntitlementsRequest contains parameters for the GetEntitlements operation.
--
--
--
-- /See:/ 'getEntitlements' smart constructor.
data GetEntitlements = GetEntitlements'
  { _geNextToken ::
      !(Maybe Text),
    _geMaxResults :: !(Maybe Int),
    _geFilter ::
      !( Maybe
           ( Map
               GetEntitlementFilterName
               (List1 Text)
           )
       ),
    _geProductCode :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetEntitlements' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'geNextToken' - For paginated calls to GetEntitlements, pass the NextToken from the previous GetEntitlementsResult.
--
-- * 'geMaxResults' - The maximum number of items to retrieve from the GetEntitlements operation. For pagination, use the NextToken field in subsequent calls to GetEntitlements.
--
-- * 'geFilter' - Filter is used to return entitlements for a specific customer or for a specific dimension. Filters are described as keys mapped to a lists of values. Filtered requests are /unioned/ for each value in the value list, and then /intersected/ for each filter key.
--
-- * 'geProductCode' - Product code is used to uniquely identify a product in AWS Marketplace. The product code will be provided by AWS Marketplace when the product listing is created.
getEntitlements ::
  -- | 'geProductCode'
  Text ->
  GetEntitlements
getEntitlements pProductCode_ =
  GetEntitlements'
    { _geNextToken = Nothing,
      _geMaxResults = Nothing,
      _geFilter = Nothing,
      _geProductCode = pProductCode_
    }

-- | For paginated calls to GetEntitlements, pass the NextToken from the previous GetEntitlementsResult.
geNextToken :: Lens' GetEntitlements (Maybe Text)
geNextToken = lens _geNextToken (\s a -> s {_geNextToken = a})

-- | The maximum number of items to retrieve from the GetEntitlements operation. For pagination, use the NextToken field in subsequent calls to GetEntitlements.
geMaxResults :: Lens' GetEntitlements (Maybe Int)
geMaxResults = lens _geMaxResults (\s a -> s {_geMaxResults = a})

-- | Filter is used to return entitlements for a specific customer or for a specific dimension. Filters are described as keys mapped to a lists of values. Filtered requests are /unioned/ for each value in the value list, and then /intersected/ for each filter key.
geFilter :: Lens' GetEntitlements (HashMap GetEntitlementFilterName (NonEmpty Text))
geFilter = lens _geFilter (\s a -> s {_geFilter = a}) . _Default . _Map

-- | Product code is used to uniquely identify a product in AWS Marketplace. The product code will be provided by AWS Marketplace when the product listing is created.
geProductCode :: Lens' GetEntitlements Text
geProductCode = lens _geProductCode (\s a -> s {_geProductCode = a})

instance AWSPager GetEntitlements where
  page rq rs
    | stop (rs ^. gerrsNextToken) = Nothing
    | stop (rs ^. gerrsEntitlements) = Nothing
    | otherwise =
      Just $ rq & geNextToken .~ rs ^. gerrsNextToken

instance AWSRequest GetEntitlements where
  type Rs GetEntitlements = GetEntitlementsResponse
  request = postJSON marketplaceEntitlement
  response =
    receiveJSON
      ( \s h x ->
          GetEntitlementsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Entitlements" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetEntitlements

instance NFData GetEntitlements

instance ToHeaders GetEntitlements where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSMPEntitlementService.GetEntitlements" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetEntitlements where
  toJSON GetEntitlements' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _geNextToken,
            ("MaxResults" .=) <$> _geMaxResults,
            ("Filter" .=) <$> _geFilter,
            Just ("ProductCode" .= _geProductCode)
          ]
      )

instance ToPath GetEntitlements where
  toPath = const "/"

instance ToQuery GetEntitlements where
  toQuery = const mempty

-- | The GetEntitlementsRequest contains results from the GetEntitlements operation.
--
--
--
-- /See:/ 'getEntitlementsResponse' smart constructor.
data GetEntitlementsResponse = GetEntitlementsResponse'
  { _gerrsNextToken ::
      !(Maybe Text),
    _gerrsEntitlements ::
      !(Maybe [Entitlement]),
    _gerrsResponseStatus ::
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

-- | Creates a value of 'GetEntitlementsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gerrsNextToken' - For paginated results, use NextToken in subsequent calls to GetEntitlements. If the result contains an empty set of entitlements, NextToken might still be present and should be used.
--
-- * 'gerrsEntitlements' - The set of entitlements found through the GetEntitlements operation. If the result contains an empty set of entitlements, NextToken might still be present and should be used.
--
-- * 'gerrsResponseStatus' - -- | The response status code.
getEntitlementsResponse ::
  -- | 'gerrsResponseStatus'
  Int ->
  GetEntitlementsResponse
getEntitlementsResponse pResponseStatus_ =
  GetEntitlementsResponse'
    { _gerrsNextToken = Nothing,
      _gerrsEntitlements = Nothing,
      _gerrsResponseStatus = pResponseStatus_
    }

-- | For paginated results, use NextToken in subsequent calls to GetEntitlements. If the result contains an empty set of entitlements, NextToken might still be present and should be used.
gerrsNextToken :: Lens' GetEntitlementsResponse (Maybe Text)
gerrsNextToken = lens _gerrsNextToken (\s a -> s {_gerrsNextToken = a})

-- | The set of entitlements found through the GetEntitlements operation. If the result contains an empty set of entitlements, NextToken might still be present and should be used.
gerrsEntitlements :: Lens' GetEntitlementsResponse [Entitlement]
gerrsEntitlements = lens _gerrsEntitlements (\s a -> s {_gerrsEntitlements = a}) . _Default . _Coerce

-- | -- | The response status code.
gerrsResponseStatus :: Lens' GetEntitlementsResponse Int
gerrsResponseStatus = lens _gerrsResponseStatus (\s a -> s {_gerrsResponseStatus = a})

instance NFData GetEntitlementsResponse
