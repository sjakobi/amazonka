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
-- Module      : Network.AWS.EC2.DescribeByoipCidrs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the IP address ranges that were specified in calls to 'ProvisionByoipCidr' .
--
--
-- To describe the address pools that were created when you provisioned the address ranges, use 'DescribePublicIpv4Pools' or 'DescribeIpv6Pools' .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeByoipCidrs
  ( -- * Creating a Request
    describeByoipCidrs,
    DescribeByoipCidrs,

    -- * Request Lenses
    dbcNextToken,
    dbcDryRun,
    dbcMaxResults,

    -- * Destructuring the Response
    describeByoipCidrsResponse,
    DescribeByoipCidrsResponse,

    -- * Response Lenses
    dbcrrsNextToken,
    dbcrrsByoipCidrs,
    dbcrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeByoipCidrs' smart constructor.
data DescribeByoipCidrs = DescribeByoipCidrs'
  { _dbcNextToken ::
      !(Maybe Text),
    _dbcDryRun :: !(Maybe Bool),
    _dbcMaxResults :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeByoipCidrs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbcNextToken' - The token for the next page of results.
--
-- * 'dbcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dbcMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
describeByoipCidrs ::
  -- | 'dbcMaxResults'
  Natural ->
  DescribeByoipCidrs
describeByoipCidrs pMaxResults_ =
  DescribeByoipCidrs'
    { _dbcNextToken = Nothing,
      _dbcDryRun = Nothing,
      _dbcMaxResults = _Nat # pMaxResults_
    }

-- | The token for the next page of results.
dbcNextToken :: Lens' DescribeByoipCidrs (Maybe Text)
dbcNextToken = lens _dbcNextToken (\s a -> s {_dbcNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dbcDryRun :: Lens' DescribeByoipCidrs (Maybe Bool)
dbcDryRun = lens _dbcDryRun (\s a -> s {_dbcDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dbcMaxResults :: Lens' DescribeByoipCidrs Natural
dbcMaxResults = lens _dbcMaxResults (\s a -> s {_dbcMaxResults = a}) . _Nat

instance AWSPager DescribeByoipCidrs where
  page rq rs
    | stop (rs ^. dbcrrsNextToken) = Nothing
    | stop (rs ^. dbcrrsByoipCidrs) = Nothing
    | otherwise =
      Just $ rq & dbcNextToken .~ rs ^. dbcrrsNextToken

instance AWSRequest DescribeByoipCidrs where
  type
    Rs DescribeByoipCidrs =
      DescribeByoipCidrsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeByoipCidrsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "byoipCidrSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeByoipCidrs

instance NFData DescribeByoipCidrs

instance ToHeaders DescribeByoipCidrs where
  toHeaders = const mempty

instance ToPath DescribeByoipCidrs where
  toPath = const "/"

instance ToQuery DescribeByoipCidrs where
  toQuery DescribeByoipCidrs' {..} =
    mconcat
      [ "Action" =: ("DescribeByoipCidrs" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dbcNextToken,
        "DryRun" =: _dbcDryRun,
        "MaxResults" =: _dbcMaxResults
      ]

-- | /See:/ 'describeByoipCidrsResponse' smart constructor.
data DescribeByoipCidrsResponse = DescribeByoipCidrsResponse'
  { _dbcrrsNextToken ::
      !(Maybe Text),
    _dbcrrsByoipCidrs ::
      !( Maybe
           [ByoipCidr]
       ),
    _dbcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeByoipCidrsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbcrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dbcrrsByoipCidrs' - Information about your address ranges.
--
-- * 'dbcrrsResponseStatus' - -- | The response status code.
describeByoipCidrsResponse ::
  -- | 'dbcrrsResponseStatus'
  Int ->
  DescribeByoipCidrsResponse
describeByoipCidrsResponse pResponseStatus_ =
  DescribeByoipCidrsResponse'
    { _dbcrrsNextToken =
        Nothing,
      _dbcrrsByoipCidrs = Nothing,
      _dbcrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dbcrrsNextToken :: Lens' DescribeByoipCidrsResponse (Maybe Text)
dbcrrsNextToken = lens _dbcrrsNextToken (\s a -> s {_dbcrrsNextToken = a})

-- | Information about your address ranges.
dbcrrsByoipCidrs :: Lens' DescribeByoipCidrsResponse [ByoipCidr]
dbcrrsByoipCidrs = lens _dbcrrsByoipCidrs (\s a -> s {_dbcrrsByoipCidrs = a}) . _Default . _Coerce

-- | -- | The response status code.
dbcrrsResponseStatus :: Lens' DescribeByoipCidrsResponse Int
dbcrrsResponseStatus = lens _dbcrrsResponseStatus (\s a -> s {_dbcrrsResponseStatus = a})

instance NFData DescribeByoipCidrsResponse
