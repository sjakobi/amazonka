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
-- Module      : Network.AWS.EC2.DeleteLaunchTemplateVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes one or more versions of a launch template. You cannot delete the default version of a launch template; you must first assign a different version as the default. If the default version is the only version for the launch template, you must delete the entire launch template using 'DeleteLaunchTemplate' .
module Network.AWS.EC2.DeleteLaunchTemplateVersions
  ( -- * Creating a Request
    deleteLaunchTemplateVersions,
    DeleteLaunchTemplateVersions,

    -- * Request Lenses
    dltvsDryRun,
    dltvsLaunchTemplateId,
    dltvsLaunchTemplateName,
    dltvsVersions,

    -- * Destructuring the Response
    deleteLaunchTemplateVersionsResponse,
    DeleteLaunchTemplateVersionsResponse,

    -- * Response Lenses
    dltvrrsUnsuccessfullyDeletedLaunchTemplateVersions,
    dltvrrsSuccessfullyDeletedLaunchTemplateVersions,
    dltvrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteLaunchTemplateVersions' smart constructor.
data DeleteLaunchTemplateVersions = DeleteLaunchTemplateVersions'
  { _dltvsDryRun ::
      !(Maybe Bool),
    _dltvsLaunchTemplateId ::
      !(Maybe Text),
    _dltvsLaunchTemplateName ::
      !(Maybe Text),
    _dltvsVersions ::
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

-- | Creates a value of 'DeleteLaunchTemplateVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dltvsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dltvsLaunchTemplateId' - The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
--
-- * 'dltvsLaunchTemplateName' - The name of the launch template. You must specify either the launch template ID or launch template name in the request.
--
-- * 'dltvsVersions' - The version numbers of one or more launch template versions to delete.
deleteLaunchTemplateVersions ::
  DeleteLaunchTemplateVersions
deleteLaunchTemplateVersions =
  DeleteLaunchTemplateVersions'
    { _dltvsDryRun =
        Nothing,
      _dltvsLaunchTemplateId = Nothing,
      _dltvsLaunchTemplateName = Nothing,
      _dltvsVersions = mempty
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dltvsDryRun :: Lens' DeleteLaunchTemplateVersions (Maybe Bool)
dltvsDryRun = lens _dltvsDryRun (\s a -> s {_dltvsDryRun = a})

-- | The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
dltvsLaunchTemplateId :: Lens' DeleteLaunchTemplateVersions (Maybe Text)
dltvsLaunchTemplateId = lens _dltvsLaunchTemplateId (\s a -> s {_dltvsLaunchTemplateId = a})

-- | The name of the launch template. You must specify either the launch template ID or launch template name in the request.
dltvsLaunchTemplateName :: Lens' DeleteLaunchTemplateVersions (Maybe Text)
dltvsLaunchTemplateName = lens _dltvsLaunchTemplateName (\s a -> s {_dltvsLaunchTemplateName = a})

-- | The version numbers of one or more launch template versions to delete.
dltvsVersions :: Lens' DeleteLaunchTemplateVersions [Text]
dltvsVersions = lens _dltvsVersions (\s a -> s {_dltvsVersions = a}) . _Coerce

instance AWSRequest DeleteLaunchTemplateVersions where
  type
    Rs DeleteLaunchTemplateVersions =
      DeleteLaunchTemplateVersionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteLaunchTemplateVersionsResponse'
            <$> ( x
                    .@? "unsuccessfullyDeletedLaunchTemplateVersionSet"
                    .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> ( x .@? "successfullyDeletedLaunchTemplateVersionSet"
                    .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteLaunchTemplateVersions

instance NFData DeleteLaunchTemplateVersions

instance ToHeaders DeleteLaunchTemplateVersions where
  toHeaders = const mempty

instance ToPath DeleteLaunchTemplateVersions where
  toPath = const "/"

instance ToQuery DeleteLaunchTemplateVersions where
  toQuery DeleteLaunchTemplateVersions' {..} =
    mconcat
      [ "Action"
          =: ("DeleteLaunchTemplateVersions" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dltvsDryRun,
        "LaunchTemplateId" =: _dltvsLaunchTemplateId,
        "LaunchTemplateName" =: _dltvsLaunchTemplateName,
        toQueryList "LaunchTemplateVersion" _dltvsVersions
      ]

-- | /See:/ 'deleteLaunchTemplateVersionsResponse' smart constructor.
data DeleteLaunchTemplateVersionsResponse = DeleteLaunchTemplateVersionsResponse'
  { _dltvrrsUnsuccessfullyDeletedLaunchTemplateVersions ::
      !( Maybe
           [DeleteLaunchTemplateVersionsResponseErrorItem]
       ),
    _dltvrrsSuccessfullyDeletedLaunchTemplateVersions ::
      !( Maybe
           [DeleteLaunchTemplateVersionsResponseSuccessItem]
       ),
    _dltvrrsResponseStatus ::
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

-- | Creates a value of 'DeleteLaunchTemplateVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dltvrrsUnsuccessfullyDeletedLaunchTemplateVersions' - Information about the launch template versions that could not be deleted.
--
-- * 'dltvrrsSuccessfullyDeletedLaunchTemplateVersions' - Information about the launch template versions that were successfully deleted.
--
-- * 'dltvrrsResponseStatus' - -- | The response status code.
deleteLaunchTemplateVersionsResponse ::
  -- | 'dltvrrsResponseStatus'
  Int ->
  DeleteLaunchTemplateVersionsResponse
deleteLaunchTemplateVersionsResponse pResponseStatus_ =
  DeleteLaunchTemplateVersionsResponse'
    { _dltvrrsUnsuccessfullyDeletedLaunchTemplateVersions =
        Nothing,
      _dltvrrsSuccessfullyDeletedLaunchTemplateVersions =
        Nothing,
      _dltvrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the launch template versions that could not be deleted.
dltvrrsUnsuccessfullyDeletedLaunchTemplateVersions :: Lens' DeleteLaunchTemplateVersionsResponse [DeleteLaunchTemplateVersionsResponseErrorItem]
dltvrrsUnsuccessfullyDeletedLaunchTemplateVersions = lens _dltvrrsUnsuccessfullyDeletedLaunchTemplateVersions (\s a -> s {_dltvrrsUnsuccessfullyDeletedLaunchTemplateVersions = a}) . _Default . _Coerce

-- | Information about the launch template versions that were successfully deleted.
dltvrrsSuccessfullyDeletedLaunchTemplateVersions :: Lens' DeleteLaunchTemplateVersionsResponse [DeleteLaunchTemplateVersionsResponseSuccessItem]
dltvrrsSuccessfullyDeletedLaunchTemplateVersions = lens _dltvrrsSuccessfullyDeletedLaunchTemplateVersions (\s a -> s {_dltvrrsSuccessfullyDeletedLaunchTemplateVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
dltvrrsResponseStatus :: Lens' DeleteLaunchTemplateVersionsResponse Int
dltvrrsResponseStatus = lens _dltvrrsResponseStatus (\s a -> s {_dltvrrsResponseStatus = a})

instance NFData DeleteLaunchTemplateVersionsResponse
