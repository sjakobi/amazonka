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
-- Module      : Network.AWS.SageMaker.DeleteProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the specified project.
module Network.AWS.SageMaker.DeleteProject
  ( -- * Creating a Request
    deleteProject,
    DeleteProject,

    -- * Request Lenses
    dpProjectName,

    -- * Destructuring the Response
    deleteProjectResponse,
    DeleteProjectResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteProject' smart constructor.
newtype DeleteProject = DeleteProject'
  { _dpProjectName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpProjectName' - The name of the project to delete.
deleteProject ::
  -- | 'dpProjectName'
  Text ->
  DeleteProject
deleteProject pProjectName_ =
  DeleteProject' {_dpProjectName = pProjectName_}

-- | The name of the project to delete.
dpProjectName :: Lens' DeleteProject Text
dpProjectName = lens _dpProjectName (\s a -> s {_dpProjectName = a})

instance AWSRequest DeleteProject where
  type Rs DeleteProject = DeleteProjectResponse
  request = postJSON sageMaker
  response = receiveNull DeleteProjectResponse'

instance Hashable DeleteProject

instance NFData DeleteProject

instance ToHeaders DeleteProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteProject where
  toJSON DeleteProject' {..} =
    object
      (catMaybes [Just ("ProjectName" .= _dpProjectName)])

instance ToPath DeleteProject where
  toPath = const "/"

instance ToQuery DeleteProject where
  toQuery = const mempty

-- | /See:/ 'deleteProjectResponse' smart constructor.
data DeleteProjectResponse = DeleteProjectResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteProjectResponse' with the minimum fields required to make a request.
deleteProjectResponse ::
  DeleteProjectResponse
deleteProjectResponse = DeleteProjectResponse'

instance NFData DeleteProjectResponse
