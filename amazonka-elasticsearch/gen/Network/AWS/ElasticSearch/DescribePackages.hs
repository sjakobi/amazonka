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
-- Module      : Network.AWS.ElasticSearch.DescribePackages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.
module Network.AWS.ElasticSearch.DescribePackages
  ( -- * Creating a Request
    describePackages,
    DescribePackages,

    -- * Request Lenses
    dpNextToken,
    dpMaxResults,
    dpFilters,

    -- * Destructuring the Response
    describePackagesResponse,
    DescribePackagesResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsPackageDetailsList,
    desrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for request parameters to @'DescribePackage' @ operation.
--
--
--
-- /See:/ 'describePackages' smart constructor.
data DescribePackages = DescribePackages'
  { _dpNextToken ::
      !(Maybe Text),
    _dpMaxResults :: !(Maybe Int),
    _dpFilters ::
      !(Maybe [DescribePackagesFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribePackages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpNextToken' - Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.
--
-- * 'dpMaxResults' - Limits results to a maximum number of packages.
--
-- * 'dpFilters' - Only returns packages that match the @DescribePackagesFilterList@ values.
describePackages ::
  DescribePackages
describePackages =
  DescribePackages'
    { _dpNextToken = Nothing,
      _dpMaxResults = Nothing,
      _dpFilters = Nothing
    }

-- | Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.
dpNextToken :: Lens' DescribePackages (Maybe Text)
dpNextToken = lens _dpNextToken (\s a -> s {_dpNextToken = a})

-- | Limits results to a maximum number of packages.
dpMaxResults :: Lens' DescribePackages (Maybe Int)
dpMaxResults = lens _dpMaxResults (\s a -> s {_dpMaxResults = a})

-- | Only returns packages that match the @DescribePackagesFilterList@ values.
dpFilters :: Lens' DescribePackages [DescribePackagesFilter]
dpFilters = lens _dpFilters (\s a -> s {_dpFilters = a}) . _Default . _Coerce

instance AWSRequest DescribePackages where
  type Rs DescribePackages = DescribePackagesResponse
  request = postJSON elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          DescribePackagesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PackageDetailsList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePackages

instance NFData DescribePackages

instance ToHeaders DescribePackages where
  toHeaders = const mempty

instance ToJSON DescribePackages where
  toJSON DescribePackages' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dpNextToken,
            ("MaxResults" .=) <$> _dpMaxResults,
            ("Filters" .=) <$> _dpFilters
          ]
      )

instance ToPath DescribePackages where
  toPath = const "/2015-01-01/packages/describe"

instance ToQuery DescribePackages where
  toQuery = const mempty

-- | Container for response returned by @'DescribePackages' @ operation.
--
--
--
-- /See:/ 'describePackagesResponse' smart constructor.
data DescribePackagesResponse = DescribePackagesResponse'
  { _desrsNextToken ::
      !(Maybe Text),
    _desrsPackageDetailsList ::
      !( Maybe
           [PackageDetails]
       ),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribePackagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - Undocumented member.
--
-- * 'desrsPackageDetailsList' - List of @PackageDetails@ objects.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describePackagesResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribePackagesResponse
describePackagesResponse pResponseStatus_ =
  DescribePackagesResponse'
    { _desrsNextToken =
        Nothing,
      _desrsPackageDetailsList = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
desrsNextToken :: Lens' DescribePackagesResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | List of @PackageDetails@ objects.
desrsPackageDetailsList :: Lens' DescribePackagesResponse [PackageDetails]
desrsPackageDetailsList = lens _desrsPackageDetailsList (\s a -> s {_desrsPackageDetailsList = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribePackagesResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribePackagesResponse
