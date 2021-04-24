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
-- Module      : Network.AWS.ElasticBeanstalk.ListPlatformBranches
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the platform branches available for your account in an AWS Region. Provides summary information about each platform branch.
--
--
-- For definitions of platform branch and other platform-related terms, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html AWS Elastic Beanstalk Platforms Glossary> .
module Network.AWS.ElasticBeanstalk.ListPlatformBranches
  ( -- * Creating a Request
    listPlatformBranches,
    ListPlatformBranches,

    -- * Request Lenses
    lpbNextToken,
    lpbFilters,
    lpbMaxRecords,

    -- * Destructuring the Response
    listPlatformBranchesResponse,
    ListPlatformBranchesResponse,

    -- * Response Lenses
    lpbrrsNextToken,
    lpbrrsPlatformBranchSummaryList,
    lpbrrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPlatformBranches' smart constructor.
data ListPlatformBranches = ListPlatformBranches'
  { _lpbNextToken ::
      !(Maybe Text),
    _lpbFilters ::
      !(Maybe [SearchFilter]),
    _lpbMaxRecords ::
      !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPlatformBranches' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpbNextToken' - For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request. If no @NextToken@ is specified, the first page is retrieved.
--
-- * 'lpbFilters' - Criteria for restricting the resulting list of platform branches. The filter is evaluated as a logical conjunction (AND) of the separate @SearchFilter@ terms. The following list shows valid attribute values for each of the @SearchFilter@ terms. Most operators take a single value. The @in@ and @not_in@ operators can take multiple values.     * @Attribute = BranchName@ :     * @Operator@ : @=@ | @!=@ | @begins_with@ | @ends_with@ | @contains@ | @in@ | @not_in@      * @Attribute = LifecycleState@ :     * @Operator@ : @=@ | @!=@ | @in@ | @not_in@      * @Values@ : @beta@ | @supported@ | @deprecated@ | @retired@      * @Attribute = PlatformName@ :     * @Operator@ : @=@ | @!=@ | @begins_with@ | @ends_with@ | @contains@ | @in@ | @not_in@      * @Attribute = TierType@ :     * @Operator@ : @=@ | @!=@      * @Values@ : @WebServer/Standard@ | @Worker/SQS/HTTP@  Array size: limited to 10 @SearchFilter@ objects. Within each @SearchFilter@ item, the @Values@ array is limited to 10 items.
--
-- * 'lpbMaxRecords' - The maximum number of platform branch values returned in one call.
listPlatformBranches ::
  ListPlatformBranches
listPlatformBranches =
  ListPlatformBranches'
    { _lpbNextToken = Nothing,
      _lpbFilters = Nothing,
      _lpbMaxRecords = Nothing
    }

-- | For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request. If no @NextToken@ is specified, the first page is retrieved.
lpbNextToken :: Lens' ListPlatformBranches (Maybe Text)
lpbNextToken = lens _lpbNextToken (\s a -> s {_lpbNextToken = a})

-- | Criteria for restricting the resulting list of platform branches. The filter is evaluated as a logical conjunction (AND) of the separate @SearchFilter@ terms. The following list shows valid attribute values for each of the @SearchFilter@ terms. Most operators take a single value. The @in@ and @not_in@ operators can take multiple values.     * @Attribute = BranchName@ :     * @Operator@ : @=@ | @!=@ | @begins_with@ | @ends_with@ | @contains@ | @in@ | @not_in@      * @Attribute = LifecycleState@ :     * @Operator@ : @=@ | @!=@ | @in@ | @not_in@      * @Values@ : @beta@ | @supported@ | @deprecated@ | @retired@      * @Attribute = PlatformName@ :     * @Operator@ : @=@ | @!=@ | @begins_with@ | @ends_with@ | @contains@ | @in@ | @not_in@      * @Attribute = TierType@ :     * @Operator@ : @=@ | @!=@      * @Values@ : @WebServer/Standard@ | @Worker/SQS/HTTP@  Array size: limited to 10 @SearchFilter@ objects. Within each @SearchFilter@ item, the @Values@ array is limited to 10 items.
lpbFilters :: Lens' ListPlatformBranches [SearchFilter]
lpbFilters = lens _lpbFilters (\s a -> s {_lpbFilters = a}) . _Default . _Coerce

-- | The maximum number of platform branch values returned in one call.
lpbMaxRecords :: Lens' ListPlatformBranches (Maybe Natural)
lpbMaxRecords = lens _lpbMaxRecords (\s a -> s {_lpbMaxRecords = a}) . mapping _Nat

instance AWSRequest ListPlatformBranches where
  type
    Rs ListPlatformBranches =
      ListPlatformBranchesResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "ListPlatformBranchesResult"
      ( \s h x ->
          ListPlatformBranchesResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "PlatformBranchSummaryList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListPlatformBranches

instance NFData ListPlatformBranches

instance ToHeaders ListPlatformBranches where
  toHeaders = const mempty

instance ToPath ListPlatformBranches where
  toPath = const "/"

instance ToQuery ListPlatformBranches where
  toQuery ListPlatformBranches' {..} =
    mconcat
      [ "Action" =: ("ListPlatformBranches" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "NextToken" =: _lpbNextToken,
        "Filters"
          =: toQuery (toQueryList "member" <$> _lpbFilters),
        "MaxRecords" =: _lpbMaxRecords
      ]

-- | /See:/ 'listPlatformBranchesResponse' smart constructor.
data ListPlatformBranchesResponse = ListPlatformBranchesResponse'
  { _lpbrrsNextToken ::
      !(Maybe Text),
    _lpbrrsPlatformBranchSummaryList ::
      !( Maybe
           [PlatformBranchSummary]
       ),
    _lpbrrsResponseStatus ::
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

-- | Creates a value of 'ListPlatformBranchesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpbrrsNextToken' - In a paginated request, if this value isn't @null@ , it's the token that you can pass in a subsequent request to get the next response page.
--
-- * 'lpbrrsPlatformBranchSummaryList' - Summary information about the platform branches.
--
-- * 'lpbrrsResponseStatus' - -- | The response status code.
listPlatformBranchesResponse ::
  -- | 'lpbrrsResponseStatus'
  Int ->
  ListPlatformBranchesResponse
listPlatformBranchesResponse pResponseStatus_ =
  ListPlatformBranchesResponse'
    { _lpbrrsNextToken =
        Nothing,
      _lpbrrsPlatformBranchSummaryList = Nothing,
      _lpbrrsResponseStatus = pResponseStatus_
    }

-- | In a paginated request, if this value isn't @null@ , it's the token that you can pass in a subsequent request to get the next response page.
lpbrrsNextToken :: Lens' ListPlatformBranchesResponse (Maybe Text)
lpbrrsNextToken = lens _lpbrrsNextToken (\s a -> s {_lpbrrsNextToken = a})

-- | Summary information about the platform branches.
lpbrrsPlatformBranchSummaryList :: Lens' ListPlatformBranchesResponse [PlatformBranchSummary]
lpbrrsPlatformBranchSummaryList = lens _lpbrrsPlatformBranchSummaryList (\s a -> s {_lpbrrsPlatformBranchSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lpbrrsResponseStatus :: Lens' ListPlatformBranchesResponse Int
lpbrrsResponseStatus = lens _lpbrrsResponseStatus (\s a -> s {_lpbrrsResponseStatus = a})

instance NFData ListPlatformBranchesResponse
