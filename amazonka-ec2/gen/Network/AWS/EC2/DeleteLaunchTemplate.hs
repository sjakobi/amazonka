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
-- Module      : Network.AWS.EC2.DeleteLaunchTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a launch template. Deleting a launch template deletes all of its versions.
module Network.AWS.EC2.DeleteLaunchTemplate
  ( -- * Creating a Request
    deleteLaunchTemplate,
    DeleteLaunchTemplate,

    -- * Request Lenses
    dltDryRun,
    dltLaunchTemplateId,
    dltLaunchTemplateName,

    -- * Destructuring the Response
    deleteLaunchTemplateResponse,
    DeleteLaunchTemplateResponse,

    -- * Response Lenses
    dltrrsLaunchTemplate,
    dltrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteLaunchTemplate' smart constructor.
data DeleteLaunchTemplate = DeleteLaunchTemplate'
  { _dltDryRun ::
      !(Maybe Bool),
    _dltLaunchTemplateId ::
      !(Maybe Text),
    _dltLaunchTemplateName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteLaunchTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dltDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dltLaunchTemplateId' - The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
--
-- * 'dltLaunchTemplateName' - The name of the launch template. You must specify either the launch template ID or launch template name in the request.
deleteLaunchTemplate ::
  DeleteLaunchTemplate
deleteLaunchTemplate =
  DeleteLaunchTemplate'
    { _dltDryRun = Nothing,
      _dltLaunchTemplateId = Nothing,
      _dltLaunchTemplateName = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dltDryRun :: Lens' DeleteLaunchTemplate (Maybe Bool)
dltDryRun = lens _dltDryRun (\s a -> s {_dltDryRun = a})

-- | The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
dltLaunchTemplateId :: Lens' DeleteLaunchTemplate (Maybe Text)
dltLaunchTemplateId = lens _dltLaunchTemplateId (\s a -> s {_dltLaunchTemplateId = a})

-- | The name of the launch template. You must specify either the launch template ID or launch template name in the request.
dltLaunchTemplateName :: Lens' DeleteLaunchTemplate (Maybe Text)
dltLaunchTemplateName = lens _dltLaunchTemplateName (\s a -> s {_dltLaunchTemplateName = a})

instance AWSRequest DeleteLaunchTemplate where
  type
    Rs DeleteLaunchTemplate =
      DeleteLaunchTemplateResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteLaunchTemplateResponse'
            <$> (x .@? "launchTemplate") <*> (pure (fromEnum s))
      )

instance Hashable DeleteLaunchTemplate

instance NFData DeleteLaunchTemplate

instance ToHeaders DeleteLaunchTemplate where
  toHeaders = const mempty

instance ToPath DeleteLaunchTemplate where
  toPath = const "/"

instance ToQuery DeleteLaunchTemplate where
  toQuery DeleteLaunchTemplate' {..} =
    mconcat
      [ "Action" =: ("DeleteLaunchTemplate" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dltDryRun,
        "LaunchTemplateId" =: _dltLaunchTemplateId,
        "LaunchTemplateName" =: _dltLaunchTemplateName
      ]

-- | /See:/ 'deleteLaunchTemplateResponse' smart constructor.
data DeleteLaunchTemplateResponse = DeleteLaunchTemplateResponse'
  { _dltrrsLaunchTemplate ::
      !( Maybe
           LaunchTemplate
       ),
    _dltrrsResponseStatus ::
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

-- | Creates a value of 'DeleteLaunchTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dltrrsLaunchTemplate' - Information about the launch template.
--
-- * 'dltrrsResponseStatus' - -- | The response status code.
deleteLaunchTemplateResponse ::
  -- | 'dltrrsResponseStatus'
  Int ->
  DeleteLaunchTemplateResponse
deleteLaunchTemplateResponse pResponseStatus_ =
  DeleteLaunchTemplateResponse'
    { _dltrrsLaunchTemplate =
        Nothing,
      _dltrrsResponseStatus = pResponseStatus_
    }

-- | Information about the launch template.
dltrrsLaunchTemplate :: Lens' DeleteLaunchTemplateResponse (Maybe LaunchTemplate)
dltrrsLaunchTemplate = lens _dltrrsLaunchTemplate (\s a -> s {_dltrrsLaunchTemplate = a})

-- | -- | The response status code.
dltrrsResponseStatus :: Lens' DeleteLaunchTemplateResponse Int
dltrrsResponseStatus = lens _dltrrsResponseStatus (\s a -> s {_dltrrsResponseStatus = a})

instance NFData DeleteLaunchTemplateResponse
