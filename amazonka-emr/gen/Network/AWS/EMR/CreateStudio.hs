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
-- Module      : Network.AWS.EMR.CreateStudio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Amazon EMR Studio.
module Network.AWS.EMR.CreateStudio
  ( -- * Creating a Request
    createStudio,
    CreateStudio,

    -- * Request Lenses
    cTags,
    cDescription,
    cName,
    cAuthMode,
    cVPCId,
    cSubnetIds,
    cServiceRole,
    cUserRole,
    cWorkspaceSecurityGroupId,
    cEngineSecurityGroupId,
    cDefaultS3Location,

    -- * Destructuring the Response
    createStudioResponse,
    CreateStudioResponse,

    -- * Response Lenses
    csrrsURL,
    csrrsStudioId,
    csrrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createStudio' smart constructor.
data CreateStudio = CreateStudio'
  { _cTags ::
      !(Maybe [Tag]),
    _cDescription :: !(Maybe Text),
    _cName :: !Text,
    _cAuthMode :: !AuthMode,
    _cVPCId :: !Text,
    _cSubnetIds :: ![Text],
    _cServiceRole :: !Text,
    _cUserRole :: !Text,
    _cWorkspaceSecurityGroupId :: !Text,
    _cEngineSecurityGroupId :: !Text,
    _cDefaultS3Location :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStudio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cTags' - A list of tags to associate with the Amazon EMR Studio. Tags are user-defined key-value pairs that consist of a required key string with a maximum of 128 characters, and an optional value string with a maximum of 256 characters.
--
-- * 'cDescription' - A detailed description of the Amazon EMR Studio.
--
-- * 'cName' - A descriptive name for the Amazon EMR Studio.
--
-- * 'cAuthMode' - Specifies whether the Studio authenticates users using single sign-on (SSO) or IAM. Amazon EMR Studio currently only supports SSO authentication.
--
-- * 'cVPCId' - The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
--
-- * 'cSubnetIds' - A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC specified by @VpcId@ . Studio users can create a Workspace in any of the specified subnets.
--
-- * 'cServiceRole' - The IAM role that will be assumed by the Amazon EMR Studio. The service role provides a way for Amazon EMR Studio to interoperate with other AWS services.
--
-- * 'cUserRole' - The IAM user role that will be assumed by users and groups logged in to an Amazon EMR Studio. The permissions attached to this IAM role can be scoped down for each user or group using session policies.
--
-- * 'cWorkspaceSecurityGroupId' - The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by @VpcId@ .
--
-- * 'cEngineSecurityGroupId' - The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by @VpcId@ .
--
-- * 'cDefaultS3Location' - The default Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files. A Studio user can select an alternative Amazon S3 location when creating a Workspace.
createStudio ::
  -- | 'cName'
  Text ->
  -- | 'cAuthMode'
  AuthMode ->
  -- | 'cVPCId'
  Text ->
  -- | 'cServiceRole'
  Text ->
  -- | 'cUserRole'
  Text ->
  -- | 'cWorkspaceSecurityGroupId'
  Text ->
  -- | 'cEngineSecurityGroupId'
  Text ->
  -- | 'cDefaultS3Location'
  Text ->
  CreateStudio
createStudio
  pName_
  pAuthMode_
  pVPCId_
  pServiceRole_
  pUserRole_
  pWorkspaceSecurityGroupId_
  pEngineSecurityGroupId_
  pDefaultS3Location_ =
    CreateStudio'
      { _cTags = Nothing,
        _cDescription = Nothing,
        _cName = pName_,
        _cAuthMode = pAuthMode_,
        _cVPCId = pVPCId_,
        _cSubnetIds = mempty,
        _cServiceRole = pServiceRole_,
        _cUserRole = pUserRole_,
        _cWorkspaceSecurityGroupId =
          pWorkspaceSecurityGroupId_,
        _cEngineSecurityGroupId = pEngineSecurityGroupId_,
        _cDefaultS3Location = pDefaultS3Location_
      }

-- | A list of tags to associate with the Amazon EMR Studio. Tags are user-defined key-value pairs that consist of a required key string with a maximum of 128 characters, and an optional value string with a maximum of 256 characters.
cTags :: Lens' CreateStudio [Tag]
cTags = lens _cTags (\s a -> s {_cTags = a}) . _Default . _Coerce

-- | A detailed description of the Amazon EMR Studio.
cDescription :: Lens' CreateStudio (Maybe Text)
cDescription = lens _cDescription (\s a -> s {_cDescription = a})

-- | A descriptive name for the Amazon EMR Studio.
cName :: Lens' CreateStudio Text
cName = lens _cName (\s a -> s {_cName = a})

-- | Specifies whether the Studio authenticates users using single sign-on (SSO) or IAM. Amazon EMR Studio currently only supports SSO authentication.
cAuthMode :: Lens' CreateStudio AuthMode
cAuthMode = lens _cAuthMode (\s a -> s {_cAuthMode = a})

-- | The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
cVPCId :: Lens' CreateStudio Text
cVPCId = lens _cVPCId (\s a -> s {_cVPCId = a})

-- | A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC specified by @VpcId@ . Studio users can create a Workspace in any of the specified subnets.
cSubnetIds :: Lens' CreateStudio [Text]
cSubnetIds = lens _cSubnetIds (\s a -> s {_cSubnetIds = a}) . _Coerce

-- | The IAM role that will be assumed by the Amazon EMR Studio. The service role provides a way for Amazon EMR Studio to interoperate with other AWS services.
cServiceRole :: Lens' CreateStudio Text
cServiceRole = lens _cServiceRole (\s a -> s {_cServiceRole = a})

-- | The IAM user role that will be assumed by users and groups logged in to an Amazon EMR Studio. The permissions attached to this IAM role can be scoped down for each user or group using session policies.
cUserRole :: Lens' CreateStudio Text
cUserRole = lens _cUserRole (\s a -> s {_cUserRole = a})

-- | The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by @VpcId@ .
cWorkspaceSecurityGroupId :: Lens' CreateStudio Text
cWorkspaceSecurityGroupId = lens _cWorkspaceSecurityGroupId (\s a -> s {_cWorkspaceSecurityGroupId = a})

-- | The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by @VpcId@ .
cEngineSecurityGroupId :: Lens' CreateStudio Text
cEngineSecurityGroupId = lens _cEngineSecurityGroupId (\s a -> s {_cEngineSecurityGroupId = a})

-- | The default Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files. A Studio user can select an alternative Amazon S3 location when creating a Workspace.
cDefaultS3Location :: Lens' CreateStudio Text
cDefaultS3Location = lens _cDefaultS3Location (\s a -> s {_cDefaultS3Location = a})

instance AWSRequest CreateStudio where
  type Rs CreateStudio = CreateStudioResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          CreateStudioResponse'
            <$> (x .?> "Url")
            <*> (x .?> "StudioId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateStudio

instance NFData CreateStudio

instance ToHeaders CreateStudio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ElasticMapReduce.CreateStudio" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateStudio where
  toJSON CreateStudio' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _cTags,
            ("Description" .=) <$> _cDescription,
            Just ("Name" .= _cName),
            Just ("AuthMode" .= _cAuthMode),
            Just ("VpcId" .= _cVPCId),
            Just ("SubnetIds" .= _cSubnetIds),
            Just ("ServiceRole" .= _cServiceRole),
            Just ("UserRole" .= _cUserRole),
            Just
              ( "WorkspaceSecurityGroupId"
                  .= _cWorkspaceSecurityGroupId
              ),
            Just
              ("EngineSecurityGroupId" .= _cEngineSecurityGroupId),
            Just ("DefaultS3Location" .= _cDefaultS3Location)
          ]
      )

instance ToPath CreateStudio where
  toPath = const "/"

instance ToQuery CreateStudio where
  toQuery = const mempty

-- | /See:/ 'createStudioResponse' smart constructor.
data CreateStudioResponse = CreateStudioResponse'
  { _csrrsURL ::
      !(Maybe Text),
    _csrrsStudioId ::
      !(Maybe Text),
    _csrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStudioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsURL' - The unique Studio access URL.
--
-- * 'csrrsStudioId' - The ID of the Amazon EMR Studio.
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createStudioResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateStudioResponse
createStudioResponse pResponseStatus_ =
  CreateStudioResponse'
    { _csrrsURL = Nothing,
      _csrrsStudioId = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | The unique Studio access URL.
csrrsURL :: Lens' CreateStudioResponse (Maybe Text)
csrrsURL = lens _csrrsURL (\s a -> s {_csrrsURL = a})

-- | The ID of the Amazon EMR Studio.
csrrsStudioId :: Lens' CreateStudioResponse (Maybe Text)
csrrsStudioId = lens _csrrsStudioId (\s a -> s {_csrrsStudioId = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateStudioResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateStudioResponse
