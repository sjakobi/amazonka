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
-- Module      : Network.AWS.ELBv2.DescribeSSLPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified policies or all policies used for SSL negotiation.
--
--
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies Security policies> in the /Application Load Balancers Guide/ or <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies Security policies> in the /Network Load Balancers Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.ELBv2.DescribeSSLPolicies
  ( -- * Creating a Request
    describeSSLPolicies,
    DescribeSSLPolicies,

    -- * Request Lenses
    dspNames,
    dspPageSize,
    dspMarker,

    -- * Destructuring the Response
    describeSSLPoliciesResponse,
    DescribeSSLPoliciesResponse,

    -- * Response Lenses
    dsprrsNextMarker,
    dsprrsSSLPolicies,
    dsprrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSSLPolicies' smart constructor.
data DescribeSSLPolicies = DescribeSSLPolicies'
  { _dspNames ::
      !(Maybe [Text]),
    _dspPageSize :: !(Maybe Nat),
    _dspMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeSSLPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dspNames' - The names of the policies.
--
-- * 'dspPageSize' - The maximum number of results to return with this call.
--
-- * 'dspMarker' - The marker for the next set of results. (You received this marker from a previous call.)
describeSSLPolicies ::
  DescribeSSLPolicies
describeSSLPolicies =
  DescribeSSLPolicies'
    { _dspNames = Nothing,
      _dspPageSize = Nothing,
      _dspMarker = Nothing
    }

-- | The names of the policies.
dspNames :: Lens' DescribeSSLPolicies [Text]
dspNames = lens _dspNames (\s a -> s {_dspNames = a}) . _Default . _Coerce

-- | The maximum number of results to return with this call.
dspPageSize :: Lens' DescribeSSLPolicies (Maybe Natural)
dspPageSize = lens _dspPageSize (\s a -> s {_dspPageSize = a}) . mapping _Nat

-- | The marker for the next set of results. (You received this marker from a previous call.)
dspMarker :: Lens' DescribeSSLPolicies (Maybe Text)
dspMarker = lens _dspMarker (\s a -> s {_dspMarker = a})

instance AWSPager DescribeSSLPolicies where
  page rq rs
    | stop (rs ^. dsprrsNextMarker) = Nothing
    | stop (rs ^. dsprrsSSLPolicies) = Nothing
    | otherwise =
      Just $ rq & dspMarker .~ rs ^. dsprrsNextMarker

instance AWSRequest DescribeSSLPolicies where
  type
    Rs DescribeSSLPolicies =
      DescribeSSLPoliciesResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "DescribeSSLPoliciesResult"
      ( \s h x ->
          DescribeSSLPoliciesResponse'
            <$> (x .@? "NextMarker")
            <*> ( x .@? "SslPolicies" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSSLPolicies

instance NFData DescribeSSLPolicies

instance ToHeaders DescribeSSLPolicies where
  toHeaders = const mempty

instance ToPath DescribeSSLPolicies where
  toPath = const "/"

instance ToQuery DescribeSSLPolicies where
  toQuery DescribeSSLPolicies' {..} =
    mconcat
      [ "Action" =: ("DescribeSSLPolicies" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "Names"
          =: toQuery (toQueryList "member" <$> _dspNames),
        "PageSize" =: _dspPageSize,
        "Marker" =: _dspMarker
      ]

-- | /See:/ 'describeSSLPoliciesResponse' smart constructor.
data DescribeSSLPoliciesResponse = DescribeSSLPoliciesResponse'
  { _dsprrsNextMarker ::
      !(Maybe Text),
    _dsprrsSSLPolicies ::
      !( Maybe
           [SSLPolicy]
       ),
    _dsprrsResponseStatus ::
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

-- | Creates a value of 'DescribeSSLPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsprrsNextMarker' - If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
--
-- * 'dsprrsSSLPolicies' - Information about the security policies.
--
-- * 'dsprrsResponseStatus' - -- | The response status code.
describeSSLPoliciesResponse ::
  -- | 'dsprrsResponseStatus'
  Int ->
  DescribeSSLPoliciesResponse
describeSSLPoliciesResponse pResponseStatus_ =
  DescribeSSLPoliciesResponse'
    { _dsprrsNextMarker =
        Nothing,
      _dsprrsSSLPolicies = Nothing,
      _dsprrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
dsprrsNextMarker :: Lens' DescribeSSLPoliciesResponse (Maybe Text)
dsprrsNextMarker = lens _dsprrsNextMarker (\s a -> s {_dsprrsNextMarker = a})

-- | Information about the security policies.
dsprrsSSLPolicies :: Lens' DescribeSSLPoliciesResponse [SSLPolicy]
dsprrsSSLPolicies = lens _dsprrsSSLPolicies (\s a -> s {_dsprrsSSLPolicies = a}) . _Default . _Coerce

-- | -- | The response status code.
dsprrsResponseStatus :: Lens' DescribeSSLPoliciesResponse Int
dsprrsResponseStatus = lens _dsprrsResponseStatus (\s a -> s {_dsprrsResponseStatus = a})

instance NFData DescribeSSLPoliciesResponse
