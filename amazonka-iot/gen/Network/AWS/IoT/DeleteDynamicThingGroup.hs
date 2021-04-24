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
-- Module      : Network.AWS.IoT.DeleteDynamicThingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a dynamic thing group.
module Network.AWS.IoT.DeleteDynamicThingGroup
  ( -- * Creating a Request
    deleteDynamicThingGroup,
    DeleteDynamicThingGroup,

    -- * Request Lenses
    ddtgExpectedVersion,
    ddtgThingGroupName,

    -- * Destructuring the Response
    deleteDynamicThingGroupResponse,
    DeleteDynamicThingGroupResponse,

    -- * Response Lenses
    ddtgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDynamicThingGroup' smart constructor.
data DeleteDynamicThingGroup = DeleteDynamicThingGroup'
  { _ddtgExpectedVersion ::
      !(Maybe Integer),
    _ddtgThingGroupName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteDynamicThingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddtgExpectedVersion' - The expected version of the dynamic thing group to delete.
--
-- * 'ddtgThingGroupName' - The name of the dynamic thing group to delete.
deleteDynamicThingGroup ::
  -- | 'ddtgThingGroupName'
  Text ->
  DeleteDynamicThingGroup
deleteDynamicThingGroup pThingGroupName_ =
  DeleteDynamicThingGroup'
    { _ddtgExpectedVersion =
        Nothing,
      _ddtgThingGroupName = pThingGroupName_
    }

-- | The expected version of the dynamic thing group to delete.
ddtgExpectedVersion :: Lens' DeleteDynamicThingGroup (Maybe Integer)
ddtgExpectedVersion = lens _ddtgExpectedVersion (\s a -> s {_ddtgExpectedVersion = a})

-- | The name of the dynamic thing group to delete.
ddtgThingGroupName :: Lens' DeleteDynamicThingGroup Text
ddtgThingGroupName = lens _ddtgThingGroupName (\s a -> s {_ddtgThingGroupName = a})

instance AWSRequest DeleteDynamicThingGroup where
  type
    Rs DeleteDynamicThingGroup =
      DeleteDynamicThingGroupResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteDynamicThingGroupResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteDynamicThingGroup

instance NFData DeleteDynamicThingGroup

instance ToHeaders DeleteDynamicThingGroup where
  toHeaders = const mempty

instance ToPath DeleteDynamicThingGroup where
  toPath DeleteDynamicThingGroup' {..} =
    mconcat
      ["/dynamic-thing-groups/", toBS _ddtgThingGroupName]

instance ToQuery DeleteDynamicThingGroup where
  toQuery DeleteDynamicThingGroup' {..} =
    mconcat ["expectedVersion" =: _ddtgExpectedVersion]

-- | /See:/ 'deleteDynamicThingGroupResponse' smart constructor.
newtype DeleteDynamicThingGroupResponse = DeleteDynamicThingGroupResponse'
  { _ddtgrrsResponseStatus ::
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

-- | Creates a value of 'DeleteDynamicThingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddtgrrsResponseStatus' - -- | The response status code.
deleteDynamicThingGroupResponse ::
  -- | 'ddtgrrsResponseStatus'
  Int ->
  DeleteDynamicThingGroupResponse
deleteDynamicThingGroupResponse pResponseStatus_ =
  DeleteDynamicThingGroupResponse'
    { _ddtgrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ddtgrrsResponseStatus :: Lens' DeleteDynamicThingGroupResponse Int
ddtgrrsResponseStatus = lens _ddtgrrsResponseStatus (\s a -> s {_ddtgrrsResponseStatus = a})

instance NFData DeleteDynamicThingGroupResponse
