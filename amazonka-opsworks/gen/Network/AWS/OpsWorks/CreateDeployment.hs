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
-- Module      : Network.AWS.OpsWorks.CreateDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs deployment or stack commands. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html Deploying Apps> and <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html Run Stack Commands> .
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.CreateDeployment
  ( -- * Creating a Request
    createDeployment,
    CreateDeployment,

    -- * Request Lenses
    cdInstanceIds,
    cdAppId,
    cdComment,
    cdCustomJSON,
    cdLayerIds,
    cdStackId,
    cdCommand,

    -- * Destructuring the Response
    createDeploymentResponse,
    CreateDeploymentResponse,

    -- * Response Lenses
    cdrrsDeploymentId,
    cdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDeployment' smart constructor.
data CreateDeployment = CreateDeployment'
  { _cdInstanceIds ::
      !(Maybe [Text]),
    _cdAppId :: !(Maybe Text),
    _cdComment :: !(Maybe Text),
    _cdCustomJSON :: !(Maybe Text),
    _cdLayerIds :: !(Maybe [Text]),
    _cdStackId :: !Text,
    _cdCommand :: !DeploymentCommand
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDeployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdInstanceIds' - The instance IDs for the deployment targets.
--
-- * 'cdAppId' - The app ID. This parameter is required for app deployments, but not for other deployment commands.
--
-- * 'cdComment' - A user-defined comment.
--
-- * 'cdCustomJSON' - A string that contains user-defined, custom JSON. You can use this parameter to override some corresponding default stack configuration JSON values. The string should be in the following format: @"{\"key1\": \"value1\", \"key2\": \"value2\",...}"@  For more information about custom JSON, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes> and <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html Overriding Attributes With Custom JSON> .
--
-- * 'cdLayerIds' - The layer IDs for the deployment targets.
--
-- * 'cdStackId' - The stack ID.
--
-- * 'cdCommand' - A @DeploymentCommand@ object that specifies the deployment command and any associated arguments.
createDeployment ::
  -- | 'cdStackId'
  Text ->
  -- | 'cdCommand'
  DeploymentCommand ->
  CreateDeployment
createDeployment pStackId_ pCommand_ =
  CreateDeployment'
    { _cdInstanceIds = Nothing,
      _cdAppId = Nothing,
      _cdComment = Nothing,
      _cdCustomJSON = Nothing,
      _cdLayerIds = Nothing,
      _cdStackId = pStackId_,
      _cdCommand = pCommand_
    }

-- | The instance IDs for the deployment targets.
cdInstanceIds :: Lens' CreateDeployment [Text]
cdInstanceIds = lens _cdInstanceIds (\s a -> s {_cdInstanceIds = a}) . _Default . _Coerce

-- | The app ID. This parameter is required for app deployments, but not for other deployment commands.
cdAppId :: Lens' CreateDeployment (Maybe Text)
cdAppId = lens _cdAppId (\s a -> s {_cdAppId = a})

-- | A user-defined comment.
cdComment :: Lens' CreateDeployment (Maybe Text)
cdComment = lens _cdComment (\s a -> s {_cdComment = a})

-- | A string that contains user-defined, custom JSON. You can use this parameter to override some corresponding default stack configuration JSON values. The string should be in the following format: @"{\"key1\": \"value1\", \"key2\": \"value2\",...}"@  For more information about custom JSON, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes> and <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html Overriding Attributes With Custom JSON> .
cdCustomJSON :: Lens' CreateDeployment (Maybe Text)
cdCustomJSON = lens _cdCustomJSON (\s a -> s {_cdCustomJSON = a})

-- | The layer IDs for the deployment targets.
cdLayerIds :: Lens' CreateDeployment [Text]
cdLayerIds = lens _cdLayerIds (\s a -> s {_cdLayerIds = a}) . _Default . _Coerce

-- | The stack ID.
cdStackId :: Lens' CreateDeployment Text
cdStackId = lens _cdStackId (\s a -> s {_cdStackId = a})

-- | A @DeploymentCommand@ object that specifies the deployment command and any associated arguments.
cdCommand :: Lens' CreateDeployment DeploymentCommand
cdCommand = lens _cdCommand (\s a -> s {_cdCommand = a})

instance AWSRequest CreateDeployment where
  type Rs CreateDeployment = CreateDeploymentResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          CreateDeploymentResponse'
            <$> (x .?> "DeploymentId") <*> (pure (fromEnum s))
      )

instance Hashable CreateDeployment

instance NFData CreateDeployment

instance ToHeaders CreateDeployment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OpsWorks_20130218.CreateDeployment" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDeployment where
  toJSON CreateDeployment' {..} =
    object
      ( catMaybes
          [ ("InstanceIds" .=) <$> _cdInstanceIds,
            ("AppId" .=) <$> _cdAppId,
            ("Comment" .=) <$> _cdComment,
            ("CustomJson" .=) <$> _cdCustomJSON,
            ("LayerIds" .=) <$> _cdLayerIds,
            Just ("StackId" .= _cdStackId),
            Just ("Command" .= _cdCommand)
          ]
      )

instance ToPath CreateDeployment where
  toPath = const "/"

instance ToQuery CreateDeployment where
  toQuery = const mempty

-- | Contains the response to a @CreateDeployment@ request.
--
--
--
-- /See:/ 'createDeploymentResponse' smart constructor.
data CreateDeploymentResponse = CreateDeploymentResponse'
  { _cdrrsDeploymentId ::
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
-- * 'cdrrsDeploymentId' - The deployment ID, which can be used with other requests to identify the deployment.
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
      _cdrrsResponseStatus = pResponseStatus_
    }

-- | The deployment ID, which can be used with other requests to identify the deployment.
cdrrsDeploymentId :: Lens' CreateDeploymentResponse (Maybe Text)
cdrrsDeploymentId = lens _cdrrsDeploymentId (\s a -> s {_cdrrsDeploymentId = a})

-- | -- | The response status code.
cdrrsResponseStatus :: Lens' CreateDeploymentResponse Int
cdrrsResponseStatus = lens _cdrrsResponseStatus (\s a -> s {_cdrrsResponseStatus = a})

instance NFData CreateDeploymentResponse
