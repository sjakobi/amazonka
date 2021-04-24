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
-- Module      : Network.AWS.EC2.ModifyLaunchTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a launch template. You can specify which version of the launch template to set as the default version. When launching an instance, the default version applies when a launch template version is not specified.
module Network.AWS.EC2.ModifyLaunchTemplate
  ( -- * Creating a Request
    modifyLaunchTemplate,
    ModifyLaunchTemplate,

    -- * Request Lenses
    mltDefaultVersion,
    mltDryRun,
    mltLaunchTemplateId,
    mltLaunchTemplateName,
    mltClientToken,

    -- * Destructuring the Response
    modifyLaunchTemplateResponse,
    ModifyLaunchTemplateResponse,

    -- * Response Lenses
    mltrrsLaunchTemplate,
    mltrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyLaunchTemplate' smart constructor.
data ModifyLaunchTemplate = ModifyLaunchTemplate'
  { _mltDefaultVersion ::
      !(Maybe Text),
    _mltDryRun :: !(Maybe Bool),
    _mltLaunchTemplateId ::
      !(Maybe Text),
    _mltLaunchTemplateName ::
      !(Maybe Text),
    _mltClientToken ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyLaunchTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mltDefaultVersion' - The version number of the launch template to set as the default version.
--
-- * 'mltDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mltLaunchTemplateId' - The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
--
-- * 'mltLaunchTemplateName' - The name of the launch template. You must specify either the launch template ID or launch template name in the request.
--
-- * 'mltClientToken' - Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> . Constraint: Maximum 128 ASCII characters.
modifyLaunchTemplate ::
  ModifyLaunchTemplate
modifyLaunchTemplate =
  ModifyLaunchTemplate'
    { _mltDefaultVersion = Nothing,
      _mltDryRun = Nothing,
      _mltLaunchTemplateId = Nothing,
      _mltLaunchTemplateName = Nothing,
      _mltClientToken = Nothing
    }

-- | The version number of the launch template to set as the default version.
mltDefaultVersion :: Lens' ModifyLaunchTemplate (Maybe Text)
mltDefaultVersion = lens _mltDefaultVersion (\s a -> s {_mltDefaultVersion = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mltDryRun :: Lens' ModifyLaunchTemplate (Maybe Bool)
mltDryRun = lens _mltDryRun (\s a -> s {_mltDryRun = a})

-- | The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
mltLaunchTemplateId :: Lens' ModifyLaunchTemplate (Maybe Text)
mltLaunchTemplateId = lens _mltLaunchTemplateId (\s a -> s {_mltLaunchTemplateId = a})

-- | The name of the launch template. You must specify either the launch template ID or launch template name in the request.
mltLaunchTemplateName :: Lens' ModifyLaunchTemplate (Maybe Text)
mltLaunchTemplateName = lens _mltLaunchTemplateName (\s a -> s {_mltLaunchTemplateName = a})

-- | Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> . Constraint: Maximum 128 ASCII characters.
mltClientToken :: Lens' ModifyLaunchTemplate (Maybe Text)
mltClientToken = lens _mltClientToken (\s a -> s {_mltClientToken = a})

instance AWSRequest ModifyLaunchTemplate where
  type
    Rs ModifyLaunchTemplate =
      ModifyLaunchTemplateResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyLaunchTemplateResponse'
            <$> (x .@? "launchTemplate") <*> (pure (fromEnum s))
      )

instance Hashable ModifyLaunchTemplate

instance NFData ModifyLaunchTemplate

instance ToHeaders ModifyLaunchTemplate where
  toHeaders = const mempty

instance ToPath ModifyLaunchTemplate where
  toPath = const "/"

instance ToQuery ModifyLaunchTemplate where
  toQuery ModifyLaunchTemplate' {..} =
    mconcat
      [ "Action" =: ("ModifyLaunchTemplate" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "SetDefaultVersion" =: _mltDefaultVersion,
        "DryRun" =: _mltDryRun,
        "LaunchTemplateId" =: _mltLaunchTemplateId,
        "LaunchTemplateName" =: _mltLaunchTemplateName,
        "ClientToken" =: _mltClientToken
      ]

-- | /See:/ 'modifyLaunchTemplateResponse' smart constructor.
data ModifyLaunchTemplateResponse = ModifyLaunchTemplateResponse'
  { _mltrrsLaunchTemplate ::
      !( Maybe
           LaunchTemplate
       ),
    _mltrrsResponseStatus ::
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

-- | Creates a value of 'ModifyLaunchTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mltrrsLaunchTemplate' - Information about the launch template.
--
-- * 'mltrrsResponseStatus' - -- | The response status code.
modifyLaunchTemplateResponse ::
  -- | 'mltrrsResponseStatus'
  Int ->
  ModifyLaunchTemplateResponse
modifyLaunchTemplateResponse pResponseStatus_ =
  ModifyLaunchTemplateResponse'
    { _mltrrsLaunchTemplate =
        Nothing,
      _mltrrsResponseStatus = pResponseStatus_
    }

-- | Information about the launch template.
mltrrsLaunchTemplate :: Lens' ModifyLaunchTemplateResponse (Maybe LaunchTemplate)
mltrrsLaunchTemplate = lens _mltrrsLaunchTemplate (\s a -> s {_mltrrsLaunchTemplate = a})

-- | -- | The response status code.
mltrrsResponseStatus :: Lens' ModifyLaunchTemplateResponse Int
mltrrsResponseStatus = lens _mltrrsResponseStatus (\s a -> s {_mltrrsResponseStatus = a})

instance NFData ModifyLaunchTemplateResponse
