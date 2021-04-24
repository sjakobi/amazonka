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
-- Module      : Network.AWS.ElasticBeanstalk.DescribeApplicationVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a list of application versions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElasticBeanstalk.DescribeApplicationVersions
  ( -- * Creating a Request
    describeApplicationVersions,
    DescribeApplicationVersions,

    -- * Request Lenses
    dNextToken,
    dVersionLabels,
    dApplicationName,
    dMaxRecords,

    -- * Destructuring the Response
    describeApplicationVersionsResponse,
    DescribeApplicationVersionsResponse,

    -- * Response Lenses
    davrrsNextToken,
    davrrsApplicationVersions,
    davrrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to describe application versions.
--
--
--
-- /See:/ 'describeApplicationVersions' smart constructor.
data DescribeApplicationVersions = DescribeApplicationVersions'
  { _dNextToken ::
      !(Maybe Text),
    _dVersionLabels ::
      !(Maybe [Text]),
    _dApplicationName ::
      !(Maybe Text),
    _dMaxRecords ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeApplicationVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNextToken' - For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request. If no @NextToken@ is specified, the first page is retrieved.
--
-- * 'dVersionLabels' - Specify a version label to show a specific application version.
--
-- * 'dApplicationName' - Specify an application name to show only application versions for that application.
--
-- * 'dMaxRecords' - For a paginated request. Specify a maximum number of application versions to include in each response. If no @MaxRecords@ is specified, all available application versions are retrieved in a single response.
describeApplicationVersions ::
  DescribeApplicationVersions
describeApplicationVersions =
  DescribeApplicationVersions'
    { _dNextToken = Nothing,
      _dVersionLabels = Nothing,
      _dApplicationName = Nothing,
      _dMaxRecords = Nothing
    }

-- | For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request. If no @NextToken@ is specified, the first page is retrieved.
dNextToken :: Lens' DescribeApplicationVersions (Maybe Text)
dNextToken = lens _dNextToken (\s a -> s {_dNextToken = a})

-- | Specify a version label to show a specific application version.
dVersionLabels :: Lens' DescribeApplicationVersions [Text]
dVersionLabels = lens _dVersionLabels (\s a -> s {_dVersionLabels = a}) . _Default . _Coerce

-- | Specify an application name to show only application versions for that application.
dApplicationName :: Lens' DescribeApplicationVersions (Maybe Text)
dApplicationName = lens _dApplicationName (\s a -> s {_dApplicationName = a})

-- | For a paginated request. Specify a maximum number of application versions to include in each response. If no @MaxRecords@ is specified, all available application versions are retrieved in a single response.
dMaxRecords :: Lens' DescribeApplicationVersions (Maybe Natural)
dMaxRecords = lens _dMaxRecords (\s a -> s {_dMaxRecords = a}) . mapping _Nat

instance AWSPager DescribeApplicationVersions where
  page rq rs
    | stop (rs ^. davrrsNextToken) = Nothing
    | stop (rs ^. davrrsApplicationVersions) = Nothing
    | otherwise =
      Just $ rq & dNextToken .~ rs ^. davrrsNextToken

instance AWSRequest DescribeApplicationVersions where
  type
    Rs DescribeApplicationVersions =
      DescribeApplicationVersionsResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "DescribeApplicationVersionsResult"
      ( \s h x ->
          DescribeApplicationVersionsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "ApplicationVersions" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeApplicationVersions

instance NFData DescribeApplicationVersions

instance ToHeaders DescribeApplicationVersions where
  toHeaders = const mempty

instance ToPath DescribeApplicationVersions where
  toPath = const "/"

instance ToQuery DescribeApplicationVersions where
  toQuery DescribeApplicationVersions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeApplicationVersions" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "NextToken" =: _dNextToken,
        "VersionLabels"
          =: toQuery (toQueryList "member" <$> _dVersionLabels),
        "ApplicationName" =: _dApplicationName,
        "MaxRecords" =: _dMaxRecords
      ]

-- | Result message wrapping a list of application version descriptions.
--
--
--
-- /See:/ 'describeApplicationVersionsResponse' smart constructor.
data DescribeApplicationVersionsResponse = DescribeApplicationVersionsResponse'
  { _davrrsNextToken ::
      !( Maybe
           Text
       ),
    _davrrsApplicationVersions ::
      !( Maybe
           [ApplicationVersionDescription]
       ),
    _davrrsResponseStatus ::
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

-- | Creates a value of 'DescribeApplicationVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'davrrsNextToken' - In a paginated request, the token that you can pass in a subsequent request to get the next response page.
--
-- * 'davrrsApplicationVersions' - List of @ApplicationVersionDescription@ objects sorted in order of creation.
--
-- * 'davrrsResponseStatus' - -- | The response status code.
describeApplicationVersionsResponse ::
  -- | 'davrrsResponseStatus'
  Int ->
  DescribeApplicationVersionsResponse
describeApplicationVersionsResponse pResponseStatus_ =
  DescribeApplicationVersionsResponse'
    { _davrrsNextToken =
        Nothing,
      _davrrsApplicationVersions = Nothing,
      _davrrsResponseStatus =
        pResponseStatus_
    }

-- | In a paginated request, the token that you can pass in a subsequent request to get the next response page.
davrrsNextToken :: Lens' DescribeApplicationVersionsResponse (Maybe Text)
davrrsNextToken = lens _davrrsNextToken (\s a -> s {_davrrsNextToken = a})

-- | List of @ApplicationVersionDescription@ objects sorted in order of creation.
davrrsApplicationVersions :: Lens' DescribeApplicationVersionsResponse [ApplicationVersionDescription]
davrrsApplicationVersions = lens _davrrsApplicationVersions (\s a -> s {_davrrsApplicationVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
davrrsResponseStatus :: Lens' DescribeApplicationVersionsResponse Int
davrrsResponseStatus = lens _davrrsResponseStatus (\s a -> s {_davrrsResponseStatus = a})

instance NFData DescribeApplicationVersionsResponse
