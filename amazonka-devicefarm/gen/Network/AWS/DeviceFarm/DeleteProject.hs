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
-- Module      : Network.AWS.DeviceFarm.DeleteProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an AWS Device Farm project, given the project ARN.
--
--
-- Deleting this resource does not stop an in-progress run.
module Network.AWS.DeviceFarm.DeleteProject
  ( -- * Creating a Request
    deleteProject,
    DeleteProject,

    -- * Request Lenses
    delArn,

    -- * Destructuring the Response
    deleteProjectResponse,
    DeleteProjectResponse,

    -- * Response Lenses
    dprrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the delete project operation.
--
--
--
-- /See:/ 'deleteProject' smart constructor.
newtype DeleteProject = DeleteProject'
  { _delArn ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delArn' - Represents the Amazon Resource Name (ARN) of the Device Farm project to delete.
deleteProject ::
  -- | 'delArn'
  Text ->
  DeleteProject
deleteProject pArn_ = DeleteProject' {_delArn = pArn_}

-- | Represents the Amazon Resource Name (ARN) of the Device Farm project to delete.
delArn :: Lens' DeleteProject Text
delArn = lens _delArn (\s a -> s {_delArn = a})

instance AWSRequest DeleteProject where
  type Rs DeleteProject = DeleteProjectResponse
  request = postJSON deviceFarm
  response =
    receiveEmpty
      ( \s h x ->
          DeleteProjectResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteProject

instance NFData DeleteProject

instance ToHeaders DeleteProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.DeleteProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteProject where
  toJSON DeleteProject' {..} =
    object (catMaybes [Just ("arn" .= _delArn)])

instance ToPath DeleteProject where
  toPath = const "/"

instance ToQuery DeleteProject where
  toQuery = const mempty

-- | Represents the result of a delete project request.
--
--
--
-- /See:/ 'deleteProjectResponse' smart constructor.
newtype DeleteProjectResponse = DeleteProjectResponse'
  { _dprrsResponseStatus ::
      Int
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
-- * 'dprrsResponseStatus' - -- | The response status code.
deleteProjectResponse ::
  -- | 'dprrsResponseStatus'
  Int ->
  DeleteProjectResponse
deleteProjectResponse pResponseStatus_ =
  DeleteProjectResponse'
    { _dprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DeleteProjectResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DeleteProjectResponse
