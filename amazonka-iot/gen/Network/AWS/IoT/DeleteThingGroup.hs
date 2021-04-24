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
-- Module      : Network.AWS.IoT.DeleteThingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a thing group.
module Network.AWS.IoT.DeleteThingGroup
  ( -- * Creating a Request
    deleteThingGroup,
    DeleteThingGroup,

    -- * Request Lenses
    delExpectedVersion,
    delThingGroupName,

    -- * Destructuring the Response
    deleteThingGroupResponse,
    DeleteThingGroupResponse,

    -- * Response Lenses
    dtgrtrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteThingGroup' smart constructor.
data DeleteThingGroup = DeleteThingGroup'
  { _delExpectedVersion ::
      !(Maybe Integer),
    _delThingGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteThingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delExpectedVersion' - The expected version of the thing group to delete.
--
-- * 'delThingGroupName' - The name of the thing group to delete.
deleteThingGroup ::
  -- | 'delThingGroupName'
  Text ->
  DeleteThingGroup
deleteThingGroup pThingGroupName_ =
  DeleteThingGroup'
    { _delExpectedVersion = Nothing,
      _delThingGroupName = pThingGroupName_
    }

-- | The expected version of the thing group to delete.
delExpectedVersion :: Lens' DeleteThingGroup (Maybe Integer)
delExpectedVersion = lens _delExpectedVersion (\s a -> s {_delExpectedVersion = a})

-- | The name of the thing group to delete.
delThingGroupName :: Lens' DeleteThingGroup Text
delThingGroupName = lens _delThingGroupName (\s a -> s {_delThingGroupName = a})

instance AWSRequest DeleteThingGroup where
  type Rs DeleteThingGroup = DeleteThingGroupResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteThingGroupResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteThingGroup

instance NFData DeleteThingGroup

instance ToHeaders DeleteThingGroup where
  toHeaders = const mempty

instance ToPath DeleteThingGroup where
  toPath DeleteThingGroup' {..} =
    mconcat ["/thing-groups/", toBS _delThingGroupName]

instance ToQuery DeleteThingGroup where
  toQuery DeleteThingGroup' {..} =
    mconcat ["expectedVersion" =: _delExpectedVersion]

-- | /See:/ 'deleteThingGroupResponse' smart constructor.
newtype DeleteThingGroupResponse = DeleteThingGroupResponse'
  { _dtgrtrsResponseStatus ::
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

-- | Creates a value of 'DeleteThingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgrtrsResponseStatus' - -- | The response status code.
deleteThingGroupResponse ::
  -- | 'dtgrtrsResponseStatus'
  Int ->
  DeleteThingGroupResponse
deleteThingGroupResponse pResponseStatus_ =
  DeleteThingGroupResponse'
    { _dtgrtrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dtgrtrsResponseStatus :: Lens' DeleteThingGroupResponse Int
dtgrtrsResponseStatus = lens _dtgrtrsResponseStatus (\s a -> s {_dtgrtrsResponseStatus = a})

instance NFData DeleteThingGroupResponse
