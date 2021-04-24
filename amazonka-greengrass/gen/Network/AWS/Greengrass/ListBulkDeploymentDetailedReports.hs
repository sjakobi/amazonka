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
-- Module      : Network.AWS.Greengrass.ListBulkDeploymentDetailedReports
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a paginated list of the deployments that have been started in a bulk deployment operation, and their current deployment status.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListBulkDeploymentDetailedReports
  ( -- * Creating a Request
    listBulkDeploymentDetailedReports,
    ListBulkDeploymentDetailedReports,

    -- * Request Lenses
    lbddrNextToken,
    lbddrMaxResults,
    lbddrBulkDeploymentId,

    -- * Destructuring the Response
    listBulkDeploymentDetailedReportsResponse,
    ListBulkDeploymentDetailedReportsResponse,

    -- * Response Lenses
    lbddrrrsNextToken,
    lbddrrrsDeployments,
    lbddrrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listBulkDeploymentDetailedReports' smart constructor.
data ListBulkDeploymentDetailedReports = ListBulkDeploymentDetailedReports'
  { _lbddrNextToken ::
      !( Maybe
           Text
       ),
    _lbddrMaxResults ::
      !( Maybe
           Text
       ),
    _lbddrBulkDeploymentId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListBulkDeploymentDetailedReports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbddrNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lbddrMaxResults' - The maximum number of results to be returned per request.
--
-- * 'lbddrBulkDeploymentId' - The ID of the bulk deployment.
listBulkDeploymentDetailedReports ::
  -- | 'lbddrBulkDeploymentId'
  Text ->
  ListBulkDeploymentDetailedReports
listBulkDeploymentDetailedReports pBulkDeploymentId_ =
  ListBulkDeploymentDetailedReports'
    { _lbddrNextToken =
        Nothing,
      _lbddrMaxResults = Nothing,
      _lbddrBulkDeploymentId =
        pBulkDeploymentId_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lbddrNextToken :: Lens' ListBulkDeploymentDetailedReports (Maybe Text)
lbddrNextToken = lens _lbddrNextToken (\s a -> s {_lbddrNextToken = a})

-- | The maximum number of results to be returned per request.
lbddrMaxResults :: Lens' ListBulkDeploymentDetailedReports (Maybe Text)
lbddrMaxResults = lens _lbddrMaxResults (\s a -> s {_lbddrMaxResults = a})

-- | The ID of the bulk deployment.
lbddrBulkDeploymentId :: Lens' ListBulkDeploymentDetailedReports Text
lbddrBulkDeploymentId = lens _lbddrBulkDeploymentId (\s a -> s {_lbddrBulkDeploymentId = a})

instance AWSPager ListBulkDeploymentDetailedReports where
  page rq rs
    | stop (rs ^. lbddrrrsNextToken) = Nothing
    | stop (rs ^. lbddrrrsDeployments) = Nothing
    | otherwise =
      Just $ rq & lbddrNextToken .~ rs ^. lbddrrrsNextToken

instance AWSRequest ListBulkDeploymentDetailedReports where
  type
    Rs ListBulkDeploymentDetailedReports =
      ListBulkDeploymentDetailedReportsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListBulkDeploymentDetailedReportsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Deployments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListBulkDeploymentDetailedReports

instance NFData ListBulkDeploymentDetailedReports

instance ToHeaders ListBulkDeploymentDetailedReports where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListBulkDeploymentDetailedReports where
  toPath ListBulkDeploymentDetailedReports' {..} =
    mconcat
      [ "/greengrass/bulk/deployments/",
        toBS _lbddrBulkDeploymentId,
        "/detailed-reports"
      ]

instance ToQuery ListBulkDeploymentDetailedReports where
  toQuery ListBulkDeploymentDetailedReports' {..} =
    mconcat
      [ "NextToken" =: _lbddrNextToken,
        "MaxResults" =: _lbddrMaxResults
      ]

-- | /See:/ 'listBulkDeploymentDetailedReportsResponse' smart constructor.
data ListBulkDeploymentDetailedReportsResponse = ListBulkDeploymentDetailedReportsResponse'
  { _lbddrrrsNextToken ::
      !( Maybe
           Text
       ),
    _lbddrrrsDeployments ::
      !( Maybe
           [BulkDeploymentResult]
       ),
    _lbddrrrsResponseStatus ::
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

-- | Creates a value of 'ListBulkDeploymentDetailedReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbddrrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'lbddrrrsDeployments' - A list of the individual group deployments in the bulk deployment operation.
--
-- * 'lbddrrrsResponseStatus' - -- | The response status code.
listBulkDeploymentDetailedReportsResponse ::
  -- | 'lbddrrrsResponseStatus'
  Int ->
  ListBulkDeploymentDetailedReportsResponse
listBulkDeploymentDetailedReportsResponse
  pResponseStatus_ =
    ListBulkDeploymentDetailedReportsResponse'
      { _lbddrrrsNextToken =
          Nothing,
        _lbddrrrsDeployments = Nothing,
        _lbddrrrsResponseStatus =
          pResponseStatus_
      }

-- | The token for the next set of results, or ''null'' if there are no additional results.
lbddrrrsNextToken :: Lens' ListBulkDeploymentDetailedReportsResponse (Maybe Text)
lbddrrrsNextToken = lens _lbddrrrsNextToken (\s a -> s {_lbddrrrsNextToken = a})

-- | A list of the individual group deployments in the bulk deployment operation.
lbddrrrsDeployments :: Lens' ListBulkDeploymentDetailedReportsResponse [BulkDeploymentResult]
lbddrrrsDeployments = lens _lbddrrrsDeployments (\s a -> s {_lbddrrrsDeployments = a}) . _Default . _Coerce

-- | -- | The response status code.
lbddrrrsResponseStatus :: Lens' ListBulkDeploymentDetailedReportsResponse Int
lbddrrrsResponseStatus = lens _lbddrrrsResponseStatus (\s a -> s {_lbddrrrsResponseStatus = a})

instance
  NFData
    ListBulkDeploymentDetailedReportsResponse
