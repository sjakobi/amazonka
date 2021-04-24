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
-- Module      : Network.AWS.CodeDeploy.ListDeployments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the deployments in a deployment group for an application registered with the IAM user or AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeDeploy.ListDeployments
  ( -- * Creating a Request
    listDeployments,
    ListDeployments,

    -- * Request Lenses
    ldNextToken,
    ldDeploymentGroupName,
    ldCreateTimeRange,
    ldIncludeOnlyStatuses,
    ldExternalId,
    ldApplicationName,

    -- * Destructuring the Response
    listDeploymentsResponse,
    ListDeploymentsResponse,

    -- * Response Lenses
    ldrrsNextToken,
    ldrrsDeployments,
    ldrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @ListDeployments@ operation.
--
--
--
-- /See:/ 'listDeployments' smart constructor.
data ListDeployments = ListDeployments'
  { _ldNextToken ::
      !(Maybe Text),
    _ldDeploymentGroupName :: !(Maybe Text),
    _ldCreateTimeRange ::
      !(Maybe TimeRange),
    _ldIncludeOnlyStatuses ::
      !(Maybe [DeploymentStatus]),
    _ldExternalId :: !(Maybe Text),
    _ldApplicationName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDeployments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldNextToken' - An identifier returned from the previous list deployments call. It can be used to return the next set of deployments in the list.
--
-- * 'ldDeploymentGroupName' - The name of a deployment group for the specified application.
--
-- * 'ldCreateTimeRange' - A time range (start and end) for returning a subset of the list of deployments.
--
-- * 'ldIncludeOnlyStatuses' - A subset of deployments to list by status:     * @Created@ : Include created deployments in the resulting list.     * @Queued@ : Include queued deployments in the resulting list.     * @In Progress@ : Include in-progress deployments in the resulting list.     * @Succeeded@ : Include successful deployments in the resulting list.     * @Failed@ : Include failed deployments in the resulting list.     * @Stopped@ : Include stopped deployments in the resulting list.
--
-- * 'ldExternalId' - The unique ID of an external resource for returning deployments linked to the external resource.
--
-- * 'ldApplicationName' - The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
listDeployments ::
  ListDeployments
listDeployments =
  ListDeployments'
    { _ldNextToken = Nothing,
      _ldDeploymentGroupName = Nothing,
      _ldCreateTimeRange = Nothing,
      _ldIncludeOnlyStatuses = Nothing,
      _ldExternalId = Nothing,
      _ldApplicationName = Nothing
    }

-- | An identifier returned from the previous list deployments call. It can be used to return the next set of deployments in the list.
ldNextToken :: Lens' ListDeployments (Maybe Text)
ldNextToken = lens _ldNextToken (\s a -> s {_ldNextToken = a})

-- | The name of a deployment group for the specified application.
ldDeploymentGroupName :: Lens' ListDeployments (Maybe Text)
ldDeploymentGroupName = lens _ldDeploymentGroupName (\s a -> s {_ldDeploymentGroupName = a})

-- | A time range (start and end) for returning a subset of the list of deployments.
ldCreateTimeRange :: Lens' ListDeployments (Maybe TimeRange)
ldCreateTimeRange = lens _ldCreateTimeRange (\s a -> s {_ldCreateTimeRange = a})

-- | A subset of deployments to list by status:     * @Created@ : Include created deployments in the resulting list.     * @Queued@ : Include queued deployments in the resulting list.     * @In Progress@ : Include in-progress deployments in the resulting list.     * @Succeeded@ : Include successful deployments in the resulting list.     * @Failed@ : Include failed deployments in the resulting list.     * @Stopped@ : Include stopped deployments in the resulting list.
ldIncludeOnlyStatuses :: Lens' ListDeployments [DeploymentStatus]
ldIncludeOnlyStatuses = lens _ldIncludeOnlyStatuses (\s a -> s {_ldIncludeOnlyStatuses = a}) . _Default . _Coerce

-- | The unique ID of an external resource for returning deployments linked to the external resource.
ldExternalId :: Lens' ListDeployments (Maybe Text)
ldExternalId = lens _ldExternalId (\s a -> s {_ldExternalId = a})

-- | The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
ldApplicationName :: Lens' ListDeployments (Maybe Text)
ldApplicationName = lens _ldApplicationName (\s a -> s {_ldApplicationName = a})

instance AWSPager ListDeployments where
  page rq rs
    | stop (rs ^. ldrrsNextToken) = Nothing
    | stop (rs ^. ldrrsDeployments) = Nothing
    | otherwise =
      Just $ rq & ldNextToken .~ rs ^. ldrrsNextToken

instance AWSRequest ListDeployments where
  type Rs ListDeployments = ListDeploymentsResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          ListDeploymentsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "deployments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDeployments

instance NFData ListDeployments

instance ToHeaders ListDeployments where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.ListDeployments" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDeployments where
  toJSON ListDeployments' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ldNextToken,
            ("deploymentGroupName" .=)
              <$> _ldDeploymentGroupName,
            ("createTimeRange" .=) <$> _ldCreateTimeRange,
            ("includeOnlyStatuses" .=)
              <$> _ldIncludeOnlyStatuses,
            ("externalId" .=) <$> _ldExternalId,
            ("applicationName" .=) <$> _ldApplicationName
          ]
      )

instance ToPath ListDeployments where
  toPath = const "/"

instance ToQuery ListDeployments where
  toQuery = const mempty

-- | Represents the output of a @ListDeployments@ operation.
--
--
--
-- /See:/ 'listDeploymentsResponse' smart constructor.
data ListDeploymentsResponse = ListDeploymentsResponse'
  { _ldrrsNextToken ::
      !(Maybe Text),
    _ldrrsDeployments ::
      !(Maybe [Text]),
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
-- * 'ldrrsNextToken' - If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployments call to return the next set of deployments in the list.
--
-- * 'ldrrsDeployments' - A list of deployment IDs.
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

-- | If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployments call to return the next set of deployments in the list.
ldrrsNextToken :: Lens' ListDeploymentsResponse (Maybe Text)
ldrrsNextToken = lens _ldrrsNextToken (\s a -> s {_ldrrsNextToken = a})

-- | A list of deployment IDs.
ldrrsDeployments :: Lens' ListDeploymentsResponse [Text]
ldrrsDeployments = lens _ldrrsDeployments (\s a -> s {_ldrrsDeployments = a}) . _Default . _Coerce

-- | -- | The response status code.
ldrrsResponseStatus :: Lens' ListDeploymentsResponse Int
ldrrsResponseStatus = lens _ldrrsResponseStatus (\s a -> s {_ldrrsResponseStatus = a})

instance NFData ListDeploymentsResponse
