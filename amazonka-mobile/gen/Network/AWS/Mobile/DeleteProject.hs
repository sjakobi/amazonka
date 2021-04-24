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
-- Module      : Network.AWS.Mobile.DeleteProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delets a project in AWS Mobile Hub.
module Network.AWS.Mobile.DeleteProject
  ( -- * Creating a Request
    deleteProject,
    DeleteProject,

    -- * Request Lenses
    dpProjectId,

    -- * Destructuring the Response
    deleteProjectResponse,
    DeleteProjectResponse,

    -- * Response Lenses
    dprrsDeletedResources,
    dprrsOrphanedResources,
    dprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Mobile.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request structure used to request a project be deleted.
--
--
--
-- /See:/ 'deleteProject' smart constructor.
newtype DeleteProject = DeleteProject'
  { _dpProjectId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpProjectId' - Unique project identifier.
deleteProject ::
  -- | 'dpProjectId'
  Text ->
  DeleteProject
deleteProject pProjectId_ =
  DeleteProject' {_dpProjectId = pProjectId_}

-- | Unique project identifier.
dpProjectId :: Lens' DeleteProject Text
dpProjectId = lens _dpProjectId (\s a -> s {_dpProjectId = a})

instance AWSRequest DeleteProject where
  type Rs DeleteProject = DeleteProjectResponse
  request = delete mobile
  response =
    receiveJSON
      ( \s h x ->
          DeleteProjectResponse'
            <$> (x .?> "deletedResources" .!@ mempty)
            <*> (x .?> "orphanedResources" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteProject

instance NFData DeleteProject

instance ToHeaders DeleteProject where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteProject where
  toPath DeleteProject' {..} =
    mconcat ["/projects/", toBS _dpProjectId]

instance ToQuery DeleteProject where
  toQuery = const mempty

-- | Result structure used in response to request to delete a project.
--
--
--
-- /See:/ 'deleteProjectResponse' smart constructor.
data DeleteProjectResponse = DeleteProjectResponse'
  { _dprrsDeletedResources ::
      !(Maybe [Resource]),
    _dprrsOrphanedResources ::
      !(Maybe [Resource]),
    _dprrsResponseStatus ::
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

-- | Creates a value of 'DeleteProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprrsDeletedResources' - Resources which were deleted.
--
-- * 'dprrsOrphanedResources' - Resources which were not deleted, due to a risk of losing potentially important data or files.
--
-- * 'dprrsResponseStatus' - -- | The response status code.
deleteProjectResponse ::
  -- | 'dprrsResponseStatus'
  Int ->
  DeleteProjectResponse
deleteProjectResponse pResponseStatus_ =
  DeleteProjectResponse'
    { _dprrsDeletedResources =
        Nothing,
      _dprrsOrphanedResources = Nothing,
      _dprrsResponseStatus = pResponseStatus_
    }

-- | Resources which were deleted.
dprrsDeletedResources :: Lens' DeleteProjectResponse [Resource]
dprrsDeletedResources = lens _dprrsDeletedResources (\s a -> s {_dprrsDeletedResources = a}) . _Default . _Coerce

-- | Resources which were not deleted, due to a risk of losing potentially important data or files.
dprrsOrphanedResources :: Lens' DeleteProjectResponse [Resource]
dprrsOrphanedResources = lens _dprrsOrphanedResources (\s a -> s {_dprrsOrphanedResources = a}) . _Default . _Coerce

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DeleteProjectResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DeleteProjectResponse
