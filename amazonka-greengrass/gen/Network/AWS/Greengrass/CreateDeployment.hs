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
-- Module      : Network.AWS.Greengrass.CreateDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters.
module Network.AWS.Greengrass.CreateDeployment
  ( -- * Creating a Request
    createDeployment,
    CreateDeployment,

    -- * Request Lenses
    cdDeploymentId,
    cdGroupVersionId,
    cdAmznClientToken,
    cdGroupId,
    cdDeploymentType,

    -- * Destructuring the Response
    createDeploymentResponse,
    CreateDeploymentResponse,

    -- * Response Lenses
    cdrrsDeploymentId,
    cdrrsDeploymentARN,
    cdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDeployment' smart constructor.
data CreateDeployment = CreateDeployment'
  { _cdDeploymentId ::
      !(Maybe Text),
    _cdGroupVersionId :: !(Maybe Text),
    _cdAmznClientToken :: !(Maybe Text),
    _cdGroupId :: !Text,
    _cdDeploymentType :: !DeploymentType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDeployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdDeploymentId' - The ID of the deployment if you wish to redeploy a previous deployment.
--
-- * 'cdGroupVersionId' - The ID of the group version to be deployed.
--
-- * 'cdAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'cdGroupId' - The ID of the Greengrass group.
--
-- * 'cdDeploymentType' - The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.
createDeployment ::
  -- | 'cdGroupId'
  Text ->
  -- | 'cdDeploymentType'
  DeploymentType ->
  CreateDeployment
createDeployment pGroupId_ pDeploymentType_ =
  CreateDeployment'
    { _cdDeploymentId = Nothing,
      _cdGroupVersionId = Nothing,
      _cdAmznClientToken = Nothing,
      _cdGroupId = pGroupId_,
      _cdDeploymentType = pDeploymentType_
    }

-- | The ID of the deployment if you wish to redeploy a previous deployment.
cdDeploymentId :: Lens' CreateDeployment (Maybe Text)
cdDeploymentId = lens _cdDeploymentId (\s a -> s {_cdDeploymentId = a})

-- | The ID of the group version to be deployed.
cdGroupVersionId :: Lens' CreateDeployment (Maybe Text)
cdGroupVersionId = lens _cdGroupVersionId (\s a -> s {_cdGroupVersionId = a})

-- | A client token used to correlate requests and responses.
cdAmznClientToken :: Lens' CreateDeployment (Maybe Text)
cdAmznClientToken = lens _cdAmznClientToken (\s a -> s {_cdAmznClientToken = a})

-- | The ID of the Greengrass group.
cdGroupId :: Lens' CreateDeployment Text
cdGroupId = lens _cdGroupId (\s a -> s {_cdGroupId = a})

-- | The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.
cdDeploymentType :: Lens' CreateDeployment DeploymentType
cdDeploymentType = lens _cdDeploymentType (\s a -> s {_cdDeploymentType = a})

instance AWSRequest CreateDeployment where
  type Rs CreateDeployment = CreateDeploymentResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateDeploymentResponse'
            <$> (x .?> "DeploymentId")
            <*> (x .?> "DeploymentArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDeployment

instance NFData CreateDeployment

instance ToHeaders CreateDeployment where
  toHeaders CreateDeployment' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _cdAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateDeployment where
  toJSON CreateDeployment' {..} =
    object
      ( catMaybes
          [ ("DeploymentId" .=) <$> _cdDeploymentId,
            ("GroupVersionId" .=) <$> _cdGroupVersionId,
            Just ("DeploymentType" .= _cdDeploymentType)
          ]
      )

instance ToPath CreateDeployment where
  toPath CreateDeployment' {..} =
    mconcat
      [ "/greengrass/groups/",
        toBS _cdGroupId,
        "/deployments"
      ]

instance ToQuery CreateDeployment where
  toQuery = const mempty

-- | /See:/ 'createDeploymentResponse' smart constructor.
data CreateDeploymentResponse = CreateDeploymentResponse'
  { _cdrrsDeploymentId ::
      !(Maybe Text),
    _cdrrsDeploymentARN ::
      !(Maybe Text),
    _cdrrsResponseStatus ::
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

-- | Creates a value of 'CreateDeploymentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrrsDeploymentId' - The ID of the deployment.
--
-- * 'cdrrsDeploymentARN' - The ARN of the deployment.
--
-- * 'cdrrsResponseStatus' - -- | The response status code.
createDeploymentResponse ::
  -- | 'cdrrsResponseStatus'
  Int ->
  CreateDeploymentResponse
createDeploymentResponse pResponseStatus_ =
  CreateDeploymentResponse'
    { _cdrrsDeploymentId =
        Nothing,
      _cdrrsDeploymentARN = Nothing,
      _cdrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the deployment.
cdrrsDeploymentId :: Lens' CreateDeploymentResponse (Maybe Text)
cdrrsDeploymentId = lens _cdrrsDeploymentId (\s a -> s {_cdrrsDeploymentId = a})

-- | The ARN of the deployment.
cdrrsDeploymentARN :: Lens' CreateDeploymentResponse (Maybe Text)
cdrrsDeploymentARN = lens _cdrrsDeploymentARN (\s a -> s {_cdrrsDeploymentARN = a})

-- | -- | The response status code.
cdrrsResponseStatus :: Lens' CreateDeploymentResponse Int
cdrrsResponseStatus = lens _cdrrsResponseStatus (\s a -> s {_cdrrsResponseStatus = a})

instance NFData CreateDeploymentResponse
