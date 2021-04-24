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
-- Module      : Network.AWS.CodeDeploy.GetDeploymentGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a deployment group.
module Network.AWS.CodeDeploy.GetDeploymentGroup
  ( -- * Creating a Request
    getDeploymentGroup,
    GetDeploymentGroup,

    -- * Request Lenses
    gdgApplicationName,
    gdgDeploymentGroupName,

    -- * Destructuring the Response
    getDeploymentGroupResponse,
    GetDeploymentGroupResponse,

    -- * Response Lenses
    gdgrrsDeploymentGroupInfo,
    gdgrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @GetDeploymentGroup@ operation.
--
--
--
-- /See:/ 'getDeploymentGroup' smart constructor.
data GetDeploymentGroup = GetDeploymentGroup'
  { _gdgApplicationName ::
      !Text,
    _gdgDeploymentGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDeploymentGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdgApplicationName' - The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
--
-- * 'gdgDeploymentGroupName' - The name of a deployment group for the specified application.
getDeploymentGroup ::
  -- | 'gdgApplicationName'
  Text ->
  -- | 'gdgDeploymentGroupName'
  Text ->
  GetDeploymentGroup
getDeploymentGroup
  pApplicationName_
  pDeploymentGroupName_ =
    GetDeploymentGroup'
      { _gdgApplicationName =
          pApplicationName_,
        _gdgDeploymentGroupName = pDeploymentGroupName_
      }

-- | The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
gdgApplicationName :: Lens' GetDeploymentGroup Text
gdgApplicationName = lens _gdgApplicationName (\s a -> s {_gdgApplicationName = a})

-- | The name of a deployment group for the specified application.
gdgDeploymentGroupName :: Lens' GetDeploymentGroup Text
gdgDeploymentGroupName = lens _gdgDeploymentGroupName (\s a -> s {_gdgDeploymentGroupName = a})

instance AWSRequest GetDeploymentGroup where
  type
    Rs GetDeploymentGroup =
      GetDeploymentGroupResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          GetDeploymentGroupResponse'
            <$> (x .?> "deploymentGroupInfo")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDeploymentGroup

instance NFData GetDeploymentGroup

instance ToHeaders GetDeploymentGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.GetDeploymentGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDeploymentGroup where
  toJSON GetDeploymentGroup' {..} =
    object
      ( catMaybes
          [ Just ("applicationName" .= _gdgApplicationName),
            Just
              ("deploymentGroupName" .= _gdgDeploymentGroupName)
          ]
      )

instance ToPath GetDeploymentGroup where
  toPath = const "/"

instance ToQuery GetDeploymentGroup where
  toQuery = const mempty

-- | Represents the output of a @GetDeploymentGroup@ operation.
--
--
--
-- /See:/ 'getDeploymentGroupResponse' smart constructor.
data GetDeploymentGroupResponse = GetDeploymentGroupResponse'
  { _gdgrrsDeploymentGroupInfo ::
      !( Maybe
           DeploymentGroupInfo
       ),
    _gdgrrsResponseStatus ::
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

-- | Creates a value of 'GetDeploymentGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdgrrsDeploymentGroupInfo' - Information about the deployment group.
--
-- * 'gdgrrsResponseStatus' - -- | The response status code.
getDeploymentGroupResponse ::
  -- | 'gdgrrsResponseStatus'
  Int ->
  GetDeploymentGroupResponse
getDeploymentGroupResponse pResponseStatus_ =
  GetDeploymentGroupResponse'
    { _gdgrrsDeploymentGroupInfo =
        Nothing,
      _gdgrrsResponseStatus = pResponseStatus_
    }

-- | Information about the deployment group.
gdgrrsDeploymentGroupInfo :: Lens' GetDeploymentGroupResponse (Maybe DeploymentGroupInfo)
gdgrrsDeploymentGroupInfo = lens _gdgrrsDeploymentGroupInfo (\s a -> s {_gdgrrsDeploymentGroupInfo = a})

-- | -- | The response status code.
gdgrrsResponseStatus :: Lens' GetDeploymentGroupResponse Int
gdgrrsResponseStatus = lens _gdgrrsResponseStatus (\s a -> s {_gdgrrsResponseStatus = a})

instance NFData GetDeploymentGroupResponse
