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
-- Module      : Network.AWS.WorkSpaces.DescribeWorkspaceBundles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes the available WorkSpace bundles.
--
--
-- You can filter the results using either bundle ID or owner, but not both.
--
--
-- This operation returns paginated results.
module Network.AWS.WorkSpaces.DescribeWorkspaceBundles
  ( -- * Creating a Request
    describeWorkspaceBundles,
    DescribeWorkspaceBundles,

    -- * Request Lenses
    dwbNextToken,
    dwbOwner,
    dwbBundleIds,

    -- * Destructuring the Response
    describeWorkspaceBundlesResponse,
    DescribeWorkspaceBundlesResponse,

    -- * Response Lenses
    dwbrrsNextToken,
    dwbrrsBundles,
    dwbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'describeWorkspaceBundles' smart constructor.
data DescribeWorkspaceBundles = DescribeWorkspaceBundles'
  { _dwbNextToken ::
      !(Maybe Text),
    _dwbOwner ::
      !(Maybe Text),
    _dwbBundleIds ::
      !(Maybe (List1 Text))
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeWorkspaceBundles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwbNextToken' - The token for the next set of results. (You received this token from a previous call.)
--
-- * 'dwbOwner' - The owner of the bundles. You cannot combine this parameter with any other filter. Specify @AMAZON@ to describe the bundles provided by AWS or null to describe the bundles that belong to your account.
--
-- * 'dwbBundleIds' - The identifiers of the bundles. You cannot combine this parameter with any other filter.
describeWorkspaceBundles ::
  DescribeWorkspaceBundles
describeWorkspaceBundles =
  DescribeWorkspaceBundles'
    { _dwbNextToken = Nothing,
      _dwbOwner = Nothing,
      _dwbBundleIds = Nothing
    }

-- | The token for the next set of results. (You received this token from a previous call.)
dwbNextToken :: Lens' DescribeWorkspaceBundles (Maybe Text)
dwbNextToken = lens _dwbNextToken (\s a -> s {_dwbNextToken = a})

-- | The owner of the bundles. You cannot combine this parameter with any other filter. Specify @AMAZON@ to describe the bundles provided by AWS or null to describe the bundles that belong to your account.
dwbOwner :: Lens' DescribeWorkspaceBundles (Maybe Text)
dwbOwner = lens _dwbOwner (\s a -> s {_dwbOwner = a})

-- | The identifiers of the bundles. You cannot combine this parameter with any other filter.
dwbBundleIds :: Lens' DescribeWorkspaceBundles (Maybe (NonEmpty Text))
dwbBundleIds = lens _dwbBundleIds (\s a -> s {_dwbBundleIds = a}) . mapping _List1

instance AWSPager DescribeWorkspaceBundles where
  page rq rs
    | stop (rs ^. dwbrrsNextToken) = Nothing
    | stop (rs ^. dwbrrsBundles) = Nothing
    | otherwise =
      Just $ rq & dwbNextToken .~ rs ^. dwbrrsNextToken

instance AWSRequest DescribeWorkspaceBundles where
  type
    Rs DescribeWorkspaceBundles =
      DescribeWorkspaceBundlesResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          DescribeWorkspaceBundlesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Bundles" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeWorkspaceBundles

instance NFData DescribeWorkspaceBundles

instance ToHeaders DescribeWorkspaceBundles where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.DescribeWorkspaceBundles" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeWorkspaceBundles where
  toJSON DescribeWorkspaceBundles' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dwbNextToken,
            ("Owner" .=) <$> _dwbOwner,
            ("BundleIds" .=) <$> _dwbBundleIds
          ]
      )

instance ToPath DescribeWorkspaceBundles where
  toPath = const "/"

instance ToQuery DescribeWorkspaceBundles where
  toQuery = const mempty

-- | /See:/ 'describeWorkspaceBundlesResponse' smart constructor.
data DescribeWorkspaceBundlesResponse = DescribeWorkspaceBundlesResponse'
  { _dwbrrsNextToken ::
      !( Maybe
           Text
       ),
    _dwbrrsBundles ::
      !( Maybe
           [WorkspaceBundle]
       ),
    _dwbrrsResponseStatus ::
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

-- | Creates a value of 'DescribeWorkspaceBundlesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwbrrsNextToken' - The token to use to retrieve the next set of results, or null if there are no more results available. This token is valid for one day and must be used within that time frame.
--
-- * 'dwbrrsBundles' - Information about the bundles.
--
-- * 'dwbrrsResponseStatus' - -- | The response status code.
describeWorkspaceBundlesResponse ::
  -- | 'dwbrrsResponseStatus'
  Int ->
  DescribeWorkspaceBundlesResponse
describeWorkspaceBundlesResponse pResponseStatus_ =
  DescribeWorkspaceBundlesResponse'
    { _dwbrrsNextToken =
        Nothing,
      _dwbrrsBundles = Nothing,
      _dwbrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next set of results, or null if there are no more results available. This token is valid for one day and must be used within that time frame.
dwbrrsNextToken :: Lens' DescribeWorkspaceBundlesResponse (Maybe Text)
dwbrrsNextToken = lens _dwbrrsNextToken (\s a -> s {_dwbrrsNextToken = a})

-- | Information about the bundles.
dwbrrsBundles :: Lens' DescribeWorkspaceBundlesResponse [WorkspaceBundle]
dwbrrsBundles = lens _dwbrrsBundles (\s a -> s {_dwbrrsBundles = a}) . _Default . _Coerce

-- | -- | The response status code.
dwbrrsResponseStatus :: Lens' DescribeWorkspaceBundlesResponse Int
dwbrrsResponseStatus = lens _dwbrrsResponseStatus (\s a -> s {_dwbrrsResponseStatus = a})

instance NFData DescribeWorkspaceBundlesResponse
