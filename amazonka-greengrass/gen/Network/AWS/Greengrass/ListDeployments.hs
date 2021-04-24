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
-- Module      : Network.AWS.Greengrass.ListDeployments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a history of deployments for the group.
--
-- This operation returns paginated results.
module Network.AWS.Greengrass.ListDeployments
  ( -- * Creating a Request
    listDeployments,
    ListDeployments,

    -- * Request Lenses
    ldNextToken,
    ldMaxResults,
    ldGroupId,

    -- * Destructuring the Response
    listDeploymentsResponse,
    ListDeploymentsResponse,

    -- * Response Lenses
    ldrrsNextToken,
    ldrrsDeployments,
    ldrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDeployments' smart constructor.
data ListDeployments = ListDeployments'
  { _ldNextToken ::
      !(Maybe Text),
    _ldMaxResults :: !(Maybe Text),
    _ldGroupId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDeployments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'ldMaxResults' - The maximum number of results to be returned per request.
--
-- * 'ldGroupId' - The ID of the Greengrass group.
listDeployments ::
  -- | 'ldGroupId'
  Text ->
  ListDeployments
listDeployments pGroupId_ =
  ListDeployments'
    { _ldNextToken = Nothing,
      _ldMaxResults = Nothing,
      _ldGroupId = pGroupId_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
ldNextToken :: Lens' ListDeployments (Maybe Text)
ldNextToken = lens _ldNextToken (\s a -> s {_ldNextToken = a})

-- | The maximum number of results to be returned per request.
ldMaxResults :: Lens' ListDeployments (Maybe Text)
ldMaxResults = lens _ldMaxResults (\s a -> s {_ldMaxResults = a})

-- | The ID of the Greengrass group.
ldGroupId :: Lens' ListDeployments Text
ldGroupId = lens _ldGroupId (\s a -> s {_ldGroupId = a})

instance AWSPager ListDeployments where
  page rq rs
    | stop (rs ^. ldrrsNextToken) = Nothing
    | stop (rs ^. ldrrsDeployments) = Nothing
    | otherwise =
      Just $ rq & ldNextToken .~ rs ^. ldrrsNextToken

instance AWSRequest ListDeployments where
  type Rs ListDeployments = ListDeploymentsResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          ListDeploymentsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Deployments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDeployments

instance NFData ListDeployments

instance ToHeaders ListDeployments where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListDeployments where
  toPath ListDeployments' {..} =
    mconcat
      [ "/greengrass/groups/",
        toBS _ldGroupId,
        "/deployments"
      ]

instance ToQuery ListDeployments where
  toQuery ListDeployments' {..} =
    mconcat
      [ "NextToken" =: _ldNextToken,
        "MaxResults" =: _ldMaxResults
      ]

-- | /See:/ 'listDeploymentsResponse' smart constructor.
data ListDeploymentsResponse = ListDeploymentsResponse'
  { _ldrrsNextToken ::
      !(Maybe Text),
    _ldrrsDeployments ::
      !(Maybe [Deployment]),
    _ldrrsResponseStatus ::
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

-- | Creates a value of 'ListDeploymentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'ldrrsDeployments' - A list of deployments for the requested groups.
--
-- * 'ldrrsResponseStatus' - -- | The response status code.
listDeploymentsResponse ::
  -- | 'ldrrsResponseStatus'
  Int ->
  ListDeploymentsResponse
listDeploymentsResponse pResponseStatus_ =
  ListDeploymentsResponse'
    { _ldrrsNextToken = Nothing,
      _ldrrsDeployments = Nothing,
      _ldrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results, or ''null'' if there are no additional results.
ldrrsNextToken :: Lens' ListDeploymentsResponse (Maybe Text)
ldrrsNextToken = lens _ldrrsNextToken (\s a -> s {_ldrrsNextToken = a})

-- | A list of deployments for the requested groups.
ldrrsDeployments :: Lens' ListDeploymentsResponse [Deployment]
ldrrsDeployments = lens _ldrrsDeployments (\s a -> s {_ldrrsDeployments = a}) . _Default . _Coerce

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDeploymentsResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

instance NFData ListDeploymentsResponse
