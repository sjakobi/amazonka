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
-- Module      : Network.AWS.ElasticBeanstalk.ListPlatformVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the platform versions available for your account in an AWS Region. Provides summary information about each platform version. Compare to 'DescribePlatformVersion' , which provides full details about a single platform version.
--
--
-- For definitions of platform version and other platform-related terms, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html AWS Elastic Beanstalk Platforms Glossary> .
--
--
-- This operation returns paginated results.
module Network.AWS.ElasticBeanstalk.ListPlatformVersions
  ( -- * Creating a Request
    listPlatformVersions,
    ListPlatformVersions,

    -- * Request Lenses
    lpvNextToken,
    lpvFilters,
    lpvMaxRecords,

    -- * Destructuring the Response
    listPlatformVersionsResponse,
    ListPlatformVersionsResponse,

    -- * Response Lenses
    lpvrrsNextToken,
    lpvrrsPlatformSummaryList,
    lpvrrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPlatformVersions' smart constructor.
data ListPlatformVersions = ListPlatformVersions'
  { _lpvNextToken ::
      !(Maybe Text),
    _lpvFilters ::
      !(Maybe [PlatformFilter]),
    _lpvMaxRecords ::
      !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPlatformVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpvNextToken' - For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request. If no @NextToken@ is specified, the first page is retrieved.
--
-- * 'lpvFilters' - Criteria for restricting the resulting list of platform versions. The filter is interpreted as a logical conjunction (AND) of the separate @PlatformFilter@ terms.
--
-- * 'lpvMaxRecords' - The maximum number of platform version values returned in one call.
listPlatformVersions ::
  ListPlatformVersions
listPlatformVersions =
  ListPlatformVersions'
    { _lpvNextToken = Nothing,
      _lpvFilters = Nothing,
      _lpvMaxRecords = Nothing
    }

-- | For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request. If no @NextToken@ is specified, the first page is retrieved.
lpvNextToken :: Lens' ListPlatformVersions (Maybe Text)
lpvNextToken = lens _lpvNextToken (\s a -> s {_lpvNextToken = a})

-- | Criteria for restricting the resulting list of platform versions. The filter is interpreted as a logical conjunction (AND) of the separate @PlatformFilter@ terms.
lpvFilters :: Lens' ListPlatformVersions [PlatformFilter]
lpvFilters = lens _lpvFilters (\s a -> s {_lpvFilters = a}) . _Default . _Coerce

-- | The maximum number of platform version values returned in one call.
lpvMaxRecords :: Lens' ListPlatformVersions (Maybe Natural)
lpvMaxRecords = lens _lpvMaxRecords (\s a -> s {_lpvMaxRecords = a}) . mapping _Nat

instance AWSPager ListPlatformVersions where
  page rq rs
    | stop (rs ^. lpvrrsNextToken) = Nothing
    | stop (rs ^. lpvrrsPlatformSummaryList) = Nothing
    | otherwise =
      Just $ rq & lpvNextToken .~ rs ^. lpvrrsNextToken

instance AWSRequest ListPlatformVersions where
  type
    Rs ListPlatformVersions =
      ListPlatformVersionsResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "ListPlatformVersionsResult"
      ( \s h x ->
          ListPlatformVersionsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "PlatformSummaryList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListPlatformVersions

instance NFData ListPlatformVersions

instance ToHeaders ListPlatformVersions where
  toHeaders = const mempty

instance ToPath ListPlatformVersions where
  toPath = const "/"

instance ToQuery ListPlatformVersions where
  toQuery ListPlatformVersions' {..} =
    mconcat
      [ "Action" =: ("ListPlatformVersions" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "NextToken" =: _lpvNextToken,
        "Filters"
          =: toQuery (toQueryList "member" <$> _lpvFilters),
        "MaxRecords" =: _lpvMaxRecords
      ]

-- | /See:/ 'listPlatformVersionsResponse' smart constructor.
data ListPlatformVersionsResponse = ListPlatformVersionsResponse'
  { _lpvrrsNextToken ::
      !(Maybe Text),
    _lpvrrsPlatformSummaryList ::
      !( Maybe
           [PlatformSummary]
       ),
    _lpvrrsResponseStatus ::
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

-- | Creates a value of 'ListPlatformVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpvrrsNextToken' - In a paginated request, if this value isn't @null@ , it's the token that you can pass in a subsequent request to get the next response page.
--
-- * 'lpvrrsPlatformSummaryList' - Summary information about the platform versions.
--
-- * 'lpvrrsResponseStatus' - -- | The response status code.
listPlatformVersionsResponse ::
  -- | 'lpvrrsResponseStatus'
  Int ->
  ListPlatformVersionsResponse
listPlatformVersionsResponse pResponseStatus_ =
  ListPlatformVersionsResponse'
    { _lpvrrsNextToken =
        Nothing,
      _lpvrrsPlatformSummaryList = Nothing,
      _lpvrrsResponseStatus = pResponseStatus_
    }

-- | In a paginated request, if this value isn't @null@ , it's the token that you can pass in a subsequent request to get the next response page.
lpvrrsNextToken :: Lens' ListPlatformVersionsResponse (Maybe Text)
lpvrrsNextToken = lens _lpvrrsNextToken (\s a -> s {_lpvrrsNextToken = a})

-- | Summary information about the platform versions.
lpvrrsPlatformSummaryList :: Lens' ListPlatformVersionsResponse [PlatformSummary]
lpvrrsPlatformSummaryList = lens _lpvrrsPlatformSummaryList (\s a -> s {_lpvrrsPlatformSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lpvrrsResponseStatus :: Lens' ListPlatformVersionsResponse Int
lpvrrsResponseStatus = lens _lpvrrsResponseStatus (\s a -> s {_lpvrrsResponseStatus = a})

instance NFData ListPlatformVersionsResponse
