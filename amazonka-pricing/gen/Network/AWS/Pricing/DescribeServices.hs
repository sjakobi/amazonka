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
-- Module      : Network.AWS.Pricing.DescribeServices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as @AmazonEC2@ , to get information specific to that service, such as the attribute names available for that service. For example, some of the attribute names available for EC2 are @volumeType@ , @maxIopsVolume@ , @operation@ , @locationType@ , and @instanceCapacity10xlarge@ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.Pricing.DescribeServices
  ( -- * Creating a Request
    describeServices,
    DescribeServices,

    -- * Request Lenses
    dsNextToken,
    dsMaxResults,
    dsServiceCode,
    dsFormatVersion,

    -- * Destructuring the Response
    describeServicesResponse,
    DescribeServicesResponse,

    -- * Response Lenses
    dsrrsNextToken,
    dsrrsServices,
    dsrrsFormatVersion,
    dsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Pricing.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeServices' smart constructor.
data DescribeServices = DescribeServices'
  { _dsNextToken ::
      !(Maybe Text),
    _dsMaxResults :: !(Maybe Nat),
    _dsServiceCode :: !(Maybe Text),
    _dsFormatVersion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeServices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsNextToken' - The pagination token that indicates the next set of results that you want to retrieve.
--
-- * 'dsMaxResults' - The maximum number of results that you want returned in the response.
--
-- * 'dsServiceCode' - The code for the service whose information you want to retrieve, such as @AmazonEC2@ . You can use the @ServiceCode@ to filter the results in a @GetProducts@ call. To retrieve a list of all services, leave this blank.
--
-- * 'dsFormatVersion' - The format version that you want the response to be in. Valid values are: @aws_v1@
describeServices ::
  DescribeServices
describeServices =
  DescribeServices'
    { _dsNextToken = Nothing,
      _dsMaxResults = Nothing,
      _dsServiceCode = Nothing,
      _dsFormatVersion = Nothing
    }

-- | The pagination token that indicates the next set of results that you want to retrieve.
dsNextToken :: Lens' DescribeServices (Maybe Text)
dsNextToken = lens _dsNextToken (\s a -> s {_dsNextToken = a})

-- | The maximum number of results that you want returned in the response.
dsMaxResults :: Lens' DescribeServices (Maybe Natural)
dsMaxResults = lens _dsMaxResults (\s a -> s {_dsMaxResults = a}) . mapping _Nat

-- | The code for the service whose information you want to retrieve, such as @AmazonEC2@ . You can use the @ServiceCode@ to filter the results in a @GetProducts@ call. To retrieve a list of all services, leave this blank.
dsServiceCode :: Lens' DescribeServices (Maybe Text)
dsServiceCode = lens _dsServiceCode (\s a -> s {_dsServiceCode = a})

-- | The format version that you want the response to be in. Valid values are: @aws_v1@
dsFormatVersion :: Lens' DescribeServices (Maybe Text)
dsFormatVersion = lens _dsFormatVersion (\s a -> s {_dsFormatVersion = a})

instance AWSPager DescribeServices where
  page rq rs
    | stop (rs ^. dsrrsNextToken) = Nothing
    | stop (rs ^. dsrrsServices) = Nothing
    | otherwise =
      Just $ rq & dsNextToken .~ rs ^. dsrrsNextToken

instance AWSRequest DescribeServices where
  type Rs DescribeServices = DescribeServicesResponse
  request = postJSON pricing
  response =
    receiveJSON
      ( \s h x ->
          DescribeServicesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Services" .!@ mempty)
            <*> (x .?> "FormatVersion")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeServices

instance NFData DescribeServices

instance ToHeaders DescribeServices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPriceListService.DescribeServices" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeServices where
  toJSON DescribeServices' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dsNextToken,
            ("MaxResults" .=) <$> _dsMaxResults,
            ("ServiceCode" .=) <$> _dsServiceCode,
            ("FormatVersion" .=) <$> _dsFormatVersion
          ]
      )

instance ToPath DescribeServices where
  toPath = const "/"

instance ToQuery DescribeServices where
  toQuery = const mempty

-- | /See:/ 'describeServicesResponse' smart constructor.
data DescribeServicesResponse = DescribeServicesResponse'
  { _dsrrsNextToken ::
      !(Maybe Text),
    _dsrrsServices ::
      !( Maybe
           [PricingService]
       ),
    _dsrrsFormatVersion ::
      !(Maybe Text),
    _dsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsNextToken' - The pagination token for the next set of retreivable results.
--
-- * 'dsrrsServices' - The service metadata for the service or services in the response.
--
-- * 'dsrrsFormatVersion' - The format version of the response. For example, @aws_v1@ .
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
describeServicesResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DescribeServicesResponse
describeServicesResponse pResponseStatus_ =
  DescribeServicesResponse'
    { _dsrrsNextToken =
        Nothing,
      _dsrrsServices = Nothing,
      _dsrrsFormatVersion = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | The pagination token for the next set of retreivable results.
dsrrsNextToken :: Lens' DescribeServicesResponse (Maybe Text)
dsrrsNextToken = lens _dsrrsNextToken (\s a -> s {_dsrrsNextToken = a})

-- | The service metadata for the service or services in the response.
dsrrsServices :: Lens' DescribeServicesResponse [PricingService]
dsrrsServices = lens _dsrrsServices (\s a -> s {_dsrrsServices = a}) . _Default . _Coerce

-- | The format version of the response. For example, @aws_v1@ .
dsrrsFormatVersion :: Lens' DescribeServicesResponse (Maybe Text)
dsrrsFormatVersion = lens _dsrrsFormatVersion (\s a -> s {_dsrrsFormatVersion = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeServicesResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DescribeServicesResponse
