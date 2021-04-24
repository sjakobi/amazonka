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
-- Module      : Network.AWS.EC2.CreateLaunchTemplateVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version for a launch template. You can specify an existing version of launch template from which to base the new version.
--
--
-- Launch template versions are numbered in the order in which they are created. You cannot specify, change, or replace the numbering of launch template versions.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#manage-launch-template-versions Managing launch template versions> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.CreateLaunchTemplateVersion
  ( -- * Creating a Request
    createLaunchTemplateVersion,
    CreateLaunchTemplateVersion,

    -- * Request Lenses
    cltvSourceVersion,
    cltvDryRun,
    cltvLaunchTemplateId,
    cltvLaunchTemplateName,
    cltvVersionDescription,
    cltvClientToken,
    cltvLaunchTemplateData,

    -- * Destructuring the Response
    createLaunchTemplateVersionResponse,
    CreateLaunchTemplateVersionResponse,

    -- * Response Lenses
    cltvrrsLaunchTemplateVersion,
    cltvrrsWarning,
    cltvrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createLaunchTemplateVersion' smart constructor.
data CreateLaunchTemplateVersion = CreateLaunchTemplateVersion'
  { _cltvSourceVersion ::
      !(Maybe Text),
    _cltvDryRun ::
      !(Maybe Bool),
    _cltvLaunchTemplateId ::
      !(Maybe Text),
    _cltvLaunchTemplateName ::
      !(Maybe Text),
    _cltvVersionDescription ::
      !(Maybe Text),
    _cltvClientToken ::
      !(Maybe Text),
    _cltvLaunchTemplateData ::
      !RequestLaunchTemplateData
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateLaunchTemplateVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cltvSourceVersion' - The version number of the launch template version on which to base the new version. The new version inherits the same launch parameters as the source version, except for parameters that you specify in @LaunchTemplateData@ . Snapshots applied to the block device mapping are ignored when creating a new version unless they are explicitly included.
--
-- * 'cltvDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cltvLaunchTemplateId' - The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
--
-- * 'cltvLaunchTemplateName' - The name of the launch template. You must specify either the launch template ID or launch template name in the request.
--
-- * 'cltvVersionDescription' - A description for the version of the launch template.
--
-- * 'cltvClientToken' - Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> . Constraint: Maximum 128 ASCII characters.
--
-- * 'cltvLaunchTemplateData' - The information for the launch template.
createLaunchTemplateVersion ::
  -- | 'cltvLaunchTemplateData'
  RequestLaunchTemplateData ->
  CreateLaunchTemplateVersion
createLaunchTemplateVersion pLaunchTemplateData_ =
  CreateLaunchTemplateVersion'
    { _cltvSourceVersion =
        Nothing,
      _cltvDryRun = Nothing,
      _cltvLaunchTemplateId = Nothing,
      _cltvLaunchTemplateName = Nothing,
      _cltvVersionDescription = Nothing,
      _cltvClientToken = Nothing,
      _cltvLaunchTemplateData = pLaunchTemplateData_
    }

-- | The version number of the launch template version on which to base the new version. The new version inherits the same launch parameters as the source version, except for parameters that you specify in @LaunchTemplateData@ . Snapshots applied to the block device mapping are ignored when creating a new version unless they are explicitly included.
cltvSourceVersion :: Lens' CreateLaunchTemplateVersion (Maybe Text)
cltvSourceVersion = lens _cltvSourceVersion (\s a -> s {_cltvSourceVersion = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cltvDryRun :: Lens' CreateLaunchTemplateVersion (Maybe Bool)
cltvDryRun = lens _cltvDryRun (\s a -> s {_cltvDryRun = a})

-- | The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
cltvLaunchTemplateId :: Lens' CreateLaunchTemplateVersion (Maybe Text)
cltvLaunchTemplateId = lens _cltvLaunchTemplateId (\s a -> s {_cltvLaunchTemplateId = a})

-- | The name of the launch template. You must specify either the launch template ID or launch template name in the request.
cltvLaunchTemplateName :: Lens' CreateLaunchTemplateVersion (Maybe Text)
cltvLaunchTemplateName = lens _cltvLaunchTemplateName (\s a -> s {_cltvLaunchTemplateName = a})

-- | A description for the version of the launch template.
cltvVersionDescription :: Lens' CreateLaunchTemplateVersion (Maybe Text)
cltvVersionDescription = lens _cltvVersionDescription (\s a -> s {_cltvVersionDescription = a})

-- | Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> . Constraint: Maximum 128 ASCII characters.
cltvClientToken :: Lens' CreateLaunchTemplateVersion (Maybe Text)
cltvClientToken = lens _cltvClientToken (\s a -> s {_cltvClientToken = a})

-- | The information for the launch template.
cltvLaunchTemplateData :: Lens' CreateLaunchTemplateVersion RequestLaunchTemplateData
cltvLaunchTemplateData = lens _cltvLaunchTemplateData (\s a -> s {_cltvLaunchTemplateData = a})

instance AWSRequest CreateLaunchTemplateVersion where
  type
    Rs CreateLaunchTemplateVersion =
      CreateLaunchTemplateVersionResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateLaunchTemplateVersionResponse'
            <$> (x .@? "launchTemplateVersion")
            <*> (x .@? "warning")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateLaunchTemplateVersion

instance NFData CreateLaunchTemplateVersion

instance ToHeaders CreateLaunchTemplateVersion where
  toHeaders = const mempty

instance ToPath CreateLaunchTemplateVersion where
  toPath = const "/"

instance ToQuery CreateLaunchTemplateVersion where
  toQuery CreateLaunchTemplateVersion' {..} =
    mconcat
      [ "Action"
          =: ("CreateLaunchTemplateVersion" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "SourceVersion" =: _cltvSourceVersion,
        "DryRun" =: _cltvDryRun,
        "LaunchTemplateId" =: _cltvLaunchTemplateId,
        "LaunchTemplateName" =: _cltvLaunchTemplateName,
        "VersionDescription" =: _cltvVersionDescription,
        "ClientToken" =: _cltvClientToken,
        "LaunchTemplateData" =: _cltvLaunchTemplateData
      ]

-- | /See:/ 'createLaunchTemplateVersionResponse' smart constructor.
data CreateLaunchTemplateVersionResponse = CreateLaunchTemplateVersionResponse'
  { _cltvrrsLaunchTemplateVersion ::
      !( Maybe
           LaunchTemplateVersion
       ),
    _cltvrrsWarning ::
      !( Maybe
           ValidationWarning
       ),
    _cltvrrsResponseStatus ::
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

-- | Creates a value of 'CreateLaunchTemplateVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cltvrrsLaunchTemplateVersion' - Information about the launch template version.
--
-- * 'cltvrrsWarning' - If the new version of the launch template contains parameters or parameter combinations that are not valid, an error code and an error message are returned for each issue that's found.
--
-- * 'cltvrrsResponseStatus' - -- | The response status code.
createLaunchTemplateVersionResponse ::
  -- | 'cltvrrsResponseStatus'
  Int ->
  CreateLaunchTemplateVersionResponse
createLaunchTemplateVersionResponse pResponseStatus_ =
  CreateLaunchTemplateVersionResponse'
    { _cltvrrsLaunchTemplateVersion =
        Nothing,
      _cltvrrsWarning = Nothing,
      _cltvrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the launch template version.
cltvrrsLaunchTemplateVersion :: Lens' CreateLaunchTemplateVersionResponse (Maybe LaunchTemplateVersion)
cltvrrsLaunchTemplateVersion = lens _cltvrrsLaunchTemplateVersion (\s a -> s {_cltvrrsLaunchTemplateVersion = a})

-- | If the new version of the launch template contains parameters or parameter combinations that are not valid, an error code and an error message are returned for each issue that's found.
cltvrrsWarning :: Lens' CreateLaunchTemplateVersionResponse (Maybe ValidationWarning)
cltvrrsWarning = lens _cltvrrsWarning (\s a -> s {_cltvrrsWarning = a})

-- | -- | The response status code.
cltvrrsResponseStatus :: Lens' CreateLaunchTemplateVersionResponse Int
cltvrrsResponseStatus = lens _cltvrrsResponseStatus (\s a -> s {_cltvrrsResponseStatus = a})

instance NFData CreateLaunchTemplateVersionResponse
