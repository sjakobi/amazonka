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
-- Module      : Network.AWS.CodeDeploy.ListDeploymentConfigs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the deployment configurations with the IAM user or AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeDeploy.ListDeploymentConfigs
  ( -- * Creating a Request
    listDeploymentConfigs,
    ListDeploymentConfigs,

    -- * Request Lenses
    ldcNextToken,

    -- * Destructuring the Response
    listDeploymentConfigsResponse,
    ListDeploymentConfigsResponse,

    -- * Response Lenses
    ldcrrsNextToken,
    ldcrrsDeploymentConfigsList,
    ldcrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @ListDeploymentConfigs@ operation.
--
--
--
-- /See:/ 'listDeploymentConfigs' smart constructor.
newtype ListDeploymentConfigs = ListDeploymentConfigs'
  { _ldcNextToken ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListDeploymentConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcNextToken' - An identifier returned from the previous @ListDeploymentConfigs@ call. It can be used to return the next set of deployment configurations in the list.
listDeploymentConfigs ::
  ListDeploymentConfigs
listDeploymentConfigs =
  ListDeploymentConfigs' {_ldcNextToken = Nothing}

-- | An identifier returned from the previous @ListDeploymentConfigs@ call. It can be used to return the next set of deployment configurations in the list.
ldcNextToken :: Lens' ListDeploymentConfigs (Maybe Text)
ldcNextToken = lens _ldcNextToken (\s a -> s {_ldcNextToken = a})

instance AWSPager ListDeploymentConfigs where
  page rq rs
    | stop (rs ^. ldcrrsNextToken) = Nothing
    | stop (rs ^. ldcrrsDeploymentConfigsList) = Nothing
    | otherwise =
      Just $ rq & ldcNextToken .~ rs ^. ldcrrsNextToken

instance AWSRequest ListDeploymentConfigs where
  type
    Rs ListDeploymentConfigs =
      ListDeploymentConfigsResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          ListDeploymentConfigsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "deploymentConfigsList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDeploymentConfigs

instance NFData ListDeploymentConfigs

instance ToHeaders ListDeploymentConfigs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.ListDeploymentConfigs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDeploymentConfigs where
  toJSON ListDeploymentConfigs' {..} =
    object
      (catMaybes [("nextToken" .=) <$> _ldcNextToken])

instance ToPath ListDeploymentConfigs where
  toPath = const "/"

instance ToQuery ListDeploymentConfigs where
  toQuery = const mempty

-- | Represents the output of a @ListDeploymentConfigs@ operation.
--
--
--
-- /See:/ 'listDeploymentConfigsResponse' smart constructor.
data ListDeploymentConfigsResponse = ListDeploymentConfigsResponse'
  { _ldcrrsNextToken ::
      !( Maybe
           Text
       ),
    _ldcrrsDeploymentConfigsList ::
      !( Maybe
           [Text]
       ),
    _ldcrrsResponseStatus ::
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

-- | Creates a value of 'ListDeploymentConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcrrsNextToken' - If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment configurations call to return the next set of deployment configurations in the list.
--
-- * 'ldcrrsDeploymentConfigsList' - A list of deployment configurations, including built-in configurations such as @CodeDeployDefault.OneAtATime@ .
--
-- * 'ldcrrsResponseStatus' - -- | The response status code.
listDeploymentConfigsResponse ::
  -- | 'ldcrrsResponseStatus'
  Int ->
  ListDeploymentConfigsResponse
listDeploymentConfigsResponse pResponseStatus_ =
  ListDeploymentConfigsResponse'
    { _ldcrrsNextToken =
        Nothing,
      _ldcrrsDeploymentConfigsList = Nothing,
      _ldcrrsResponseStatus = pResponseStatus_
    }

-- | If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment configurations call to return the next set of deployment configurations in the list.
ldcrrsNextToken :: Lens' ListDeploymentConfigsResponse (Maybe Text)
ldcrrsNextToken = lens _ldcrrsNextToken (\s a -> s {_ldcrrsNextToken = a})

-- | A list of deployment configurations, including built-in configurations such as @CodeDeployDefault.OneAtATime@ .
ldcrrsDeploymentConfigsList :: Lens' ListDeploymentConfigsResponse [Text]
ldcrrsDeploymentConfigsList = lens _ldcrrsDeploymentConfigsList (\s a -> s {_ldcrrsDeploymentConfigsList = a}) . _Default . _Coerce

-- | -- | The response status code.
ldcrrsResponseStatus :: Lens' ListDeploymentConfigsResponse Int
ldcrrsResponseStatus = lens _ldcrrsResponseStatus (\s a -> s {_ldcrrsResponseStatus = a})

instance NFData ListDeploymentConfigsResponse
