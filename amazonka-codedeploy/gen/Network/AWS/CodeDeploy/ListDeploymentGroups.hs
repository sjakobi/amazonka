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
-- Module      : Network.AWS.CodeDeploy.ListDeploymentGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the deployment groups for an application registered with the IAM user or AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeDeploy.ListDeploymentGroups
  ( -- * Creating a Request
    listDeploymentGroups,
    ListDeploymentGroups,

    -- * Request Lenses
    ldgNextToken,
    ldgApplicationName,

    -- * Destructuring the Response
    listDeploymentGroupsResponse,
    ListDeploymentGroupsResponse,

    -- * Response Lenses
    ldgrrsNextToken,
    ldgrrsDeploymentGroups,
    ldgrrsApplicationName,
    ldgrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @ListDeploymentGroups@ operation.
--
--
--
-- /See:/ 'listDeploymentGroups' smart constructor.
data ListDeploymentGroups = ListDeploymentGroups'
  { _ldgNextToken ::
      !(Maybe Text),
    _ldgApplicationName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDeploymentGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldgNextToken' - An identifier returned from the previous list deployment groups call. It can be used to return the next set of deployment groups in the list.
--
-- * 'ldgApplicationName' - The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
listDeploymentGroups ::
  -- | 'ldgApplicationName'
  Text ->
  ListDeploymentGroups
listDeploymentGroups pApplicationName_ =
  ListDeploymentGroups'
    { _ldgNextToken = Nothing,
      _ldgApplicationName = pApplicationName_
    }

-- | An identifier returned from the previous list deployment groups call. It can be used to return the next set of deployment groups in the list.
ldgNextToken :: Lens' ListDeploymentGroups (Maybe Text)
ldgNextToken = lens _ldgNextToken (\s a -> s {_ldgNextToken = a})

-- | The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
ldgApplicationName :: Lens' ListDeploymentGroups Text
ldgApplicationName = lens _ldgApplicationName (\s a -> s {_ldgApplicationName = a})

instance AWSPager ListDeploymentGroups where
  page rq rs
    | stop (rs ^. ldgrrsNextToken) = Nothing
    | stop (rs ^. ldgrrsDeploymentGroups) = Nothing
    | otherwise =
      Just $ rq & ldgNextToken .~ rs ^. ldgrrsNextToken

instance AWSRequest ListDeploymentGroups where
  type
    Rs ListDeploymentGroups =
      ListDeploymentGroupsResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          ListDeploymentGroupsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "deploymentGroups" .!@ mempty)
            <*> (x .?> "applicationName")
            <*> (pure (fromEnum s))
      )

instance Hashable ListDeploymentGroups

instance NFData ListDeploymentGroups

instance ToHeaders ListDeploymentGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.ListDeploymentGroups" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDeploymentGroups where
  toJSON ListDeploymentGroups' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ldgNextToken,
            Just ("applicationName" .= _ldgApplicationName)
          ]
      )

instance ToPath ListDeploymentGroups where
  toPath = const "/"

instance ToQuery ListDeploymentGroups where
  toQuery = const mempty

-- | Represents the output of a @ListDeploymentGroups@ operation.
--
--
--
-- /See:/ 'listDeploymentGroupsResponse' smart constructor.
data ListDeploymentGroupsResponse = ListDeploymentGroupsResponse'
  { _ldgrrsNextToken ::
      !(Maybe Text),
    _ldgrrsDeploymentGroups ::
      !( Maybe
           [Text]
       ),
    _ldgrrsApplicationName ::
      !(Maybe Text),
    _ldgrrsResponseStatus ::
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

-- | Creates a value of 'ListDeploymentGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldgrrsNextToken' - If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment groups call to return the next set of deployment groups in the list.
--
-- * 'ldgrrsDeploymentGroups' - A list of deployment group names.
--
-- * 'ldgrrsApplicationName' - The application name.
--
-- * 'ldgrrsResponseStatus' - -- | The response status code.
listDeploymentGroupsResponse ::
  -- | 'ldgrrsResponseStatus'
  Int ->
  ListDeploymentGroupsResponse
listDeploymentGroupsResponse pResponseStatus_ =
  ListDeploymentGroupsResponse'
    { _ldgrrsNextToken =
        Nothing,
      _ldgrrsDeploymentGroups = Nothing,
      _ldgrrsApplicationName = Nothing,
      _ldgrrsResponseStatus = pResponseStatus_
    }

-- | If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment groups call to return the next set of deployment groups in the list.
ldgrrsNextToken :: Lens' ListDeploymentGroupsResponse (Maybe Text)
ldgrrsNextToken = lens _ldgrrsNextToken (\s a -> s {_ldgrrsNextToken = a})

-- | A list of deployment group names.
ldgrrsDeploymentGroups :: Lens' ListDeploymentGroupsResponse [Text]
ldgrrsDeploymentGroups = lens _ldgrrsDeploymentGroups (\s a -> s {_ldgrrsDeploymentGroups = a}) . _Default . _Coerce

-- | The application name.
ldgrrsApplicationName :: Lens' ListDeploymentGroupsResponse (Maybe Text)
ldgrrsApplicationName = lens _ldgrrsApplicationName (\s a -> s {_ldgrrsApplicationName = a})

-- | -- | The response status code.
ldgrrsResponseStatus :: Lens' ListDeploymentGroupsResponse Int
ldgrrsResponseStatus = lens _ldgrrsResponseStatus (\s a -> s {_ldgrrsResponseStatus = a})

instance NFData ListDeploymentGroupsResponse
