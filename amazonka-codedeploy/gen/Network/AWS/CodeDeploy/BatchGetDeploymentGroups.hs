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
-- Module      : Network.AWS.CodeDeploy.BatchGetDeploymentGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about one or more deployment groups.
module Network.AWS.CodeDeploy.BatchGetDeploymentGroups
  ( -- * Creating a Request
    batchGetDeploymentGroups,
    BatchGetDeploymentGroups,

    -- * Request Lenses
    bgdgApplicationName,
    bgdgDeploymentGroupNames,

    -- * Destructuring the Response
    batchGetDeploymentGroupsResponse,
    BatchGetDeploymentGroupsResponse,

    -- * Response Lenses
    bgdgrrsDeploymentGroupsInfo,
    bgdgrrsErrorMessage,
    bgdgrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @BatchGetDeploymentGroups@ operation.
--
--
--
-- /See:/ 'batchGetDeploymentGroups' smart constructor.
data BatchGetDeploymentGroups = BatchGetDeploymentGroups'
  { _bgdgApplicationName ::
      !Text,
    _bgdgDeploymentGroupNames ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchGetDeploymentGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgdgApplicationName' - The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
--
-- * 'bgdgDeploymentGroupNames' - The names of the deployment groups.
batchGetDeploymentGroups ::
  -- | 'bgdgApplicationName'
  Text ->
  BatchGetDeploymentGroups
batchGetDeploymentGroups pApplicationName_ =
  BatchGetDeploymentGroups'
    { _bgdgApplicationName =
        pApplicationName_,
      _bgdgDeploymentGroupNames = mempty
    }

-- | The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.
bgdgApplicationName :: Lens' BatchGetDeploymentGroups Text
bgdgApplicationName = lens _bgdgApplicationName (\s a -> s {_bgdgApplicationName = a})

-- | The names of the deployment groups.
bgdgDeploymentGroupNames :: Lens' BatchGetDeploymentGroups [Text]
bgdgDeploymentGroupNames = lens _bgdgDeploymentGroupNames (\s a -> s {_bgdgDeploymentGroupNames = a}) . _Coerce

instance AWSRequest BatchGetDeploymentGroups where
  type
    Rs BatchGetDeploymentGroups =
      BatchGetDeploymentGroupsResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          BatchGetDeploymentGroupsResponse'
            <$> (x .?> "deploymentGroupsInfo" .!@ mempty)
            <*> (x .?> "errorMessage")
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetDeploymentGroups

instance NFData BatchGetDeploymentGroups

instance ToHeaders BatchGetDeploymentGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.BatchGetDeploymentGroups" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetDeploymentGroups where
  toJSON BatchGetDeploymentGroups' {..} =
    object
      ( catMaybes
          [ Just ("applicationName" .= _bgdgApplicationName),
            Just
              ( "deploymentGroupNames"
                  .= _bgdgDeploymentGroupNames
              )
          ]
      )

instance ToPath BatchGetDeploymentGroups where
  toPath = const "/"

instance ToQuery BatchGetDeploymentGroups where
  toQuery = const mempty

-- | Represents the output of a @BatchGetDeploymentGroups@ operation.
--
--
--
-- /See:/ 'batchGetDeploymentGroupsResponse' smart constructor.
data BatchGetDeploymentGroupsResponse = BatchGetDeploymentGroupsResponse'
  { _bgdgrrsDeploymentGroupsInfo ::
      !( Maybe
           [DeploymentGroupInfo]
       ),
    _bgdgrrsErrorMessage ::
      !( Maybe
           Text
       ),
    _bgdgrrsResponseStatus ::
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

-- | Creates a value of 'BatchGetDeploymentGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgdgrrsDeploymentGroupsInfo' - Information about the deployment groups.
--
-- * 'bgdgrrsErrorMessage' - Information about errors that might have occurred during the API call.
--
-- * 'bgdgrrsResponseStatus' - -- | The response status code.
batchGetDeploymentGroupsResponse ::
  -- | 'bgdgrrsResponseStatus'
  Int ->
  BatchGetDeploymentGroupsResponse
batchGetDeploymentGroupsResponse pResponseStatus_ =
  BatchGetDeploymentGroupsResponse'
    { _bgdgrrsDeploymentGroupsInfo =
        Nothing,
      _bgdgrrsErrorMessage = Nothing,
      _bgdgrrsResponseStatus = pResponseStatus_
    }

-- | Information about the deployment groups.
bgdgrrsDeploymentGroupsInfo :: Lens' BatchGetDeploymentGroupsResponse [DeploymentGroupInfo]
bgdgrrsDeploymentGroupsInfo = lens _bgdgrrsDeploymentGroupsInfo (\s a -> s {_bgdgrrsDeploymentGroupsInfo = a}) . _Default . _Coerce

-- | Information about errors that might have occurred during the API call.
bgdgrrsErrorMessage :: Lens' BatchGetDeploymentGroupsResponse (Maybe Text)
bgdgrrsErrorMessage = lens _bgdgrrsErrorMessage (\s a -> s {_bgdgrrsErrorMessage = a})

-- | -- | The response status code.
bgdgrrsResponseStatus :: Lens' BatchGetDeploymentGroupsResponse Int
bgdgrrsResponseStatus = lens _bgdgrrsResponseStatus (\s a -> s {_bgdgrrsResponseStatus = a})

instance NFData BatchGetDeploymentGroupsResponse
