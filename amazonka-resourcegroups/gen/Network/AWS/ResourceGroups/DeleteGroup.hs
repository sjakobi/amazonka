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
-- Module      : Network.AWS.ResourceGroups.DeleteGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified resource group. Deleting a resource group does not delete any resources that are members of the group; it only deletes the group structure.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:DeleteGroup@
module Network.AWS.ResourceGroups.DeleteGroup
  ( -- * Creating a Request
    deleteGroup,
    DeleteGroup,

    -- * Request Lenses
    dgGroupName,
    dgGroup,

    -- * Destructuring the Response
    deleteGroupResponse,
    DeleteGroupResponse,

    -- * Response Lenses
    dgrrsGroup,
    dgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'deleteGroup' smart constructor.
data DeleteGroup = DeleteGroup'
  { _dgGroupName ::
      !(Maybe Text),
    _dgGroup :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgGroupName' - Deprecated - don't use this parameter. Use @Group@ instead.
--
-- * 'dgGroup' - The name or the ARN of the resource group to delete.
deleteGroup ::
  DeleteGroup
deleteGroup =
  DeleteGroup'
    { _dgGroupName = Nothing,
      _dgGroup = Nothing
    }

-- | Deprecated - don't use this parameter. Use @Group@ instead.
dgGroupName :: Lens' DeleteGroup (Maybe Text)
dgGroupName = lens _dgGroupName (\s a -> s {_dgGroupName = a})

-- | The name or the ARN of the resource group to delete.
dgGroup :: Lens' DeleteGroup (Maybe Text)
dgGroup = lens _dgGroup (\s a -> s {_dgGroup = a})

instance AWSRequest DeleteGroup where
  type Rs DeleteGroup = DeleteGroupResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          DeleteGroupResponse'
            <$> (x .?> "Group") <*> (pure (fromEnum s))
      )

instance Hashable DeleteGroup

instance NFData DeleteGroup

instance ToHeaders DeleteGroup where
  toHeaders = const mempty

instance ToJSON DeleteGroup where
  toJSON DeleteGroup' {..} =
    object
      ( catMaybes
          [ ("GroupName" .=) <$> _dgGroupName,
            ("Group" .=) <$> _dgGroup
          ]
      )

instance ToPath DeleteGroup where
  toPath = const "/delete-group"

instance ToQuery DeleteGroup where
  toQuery = const mempty

-- | /See:/ 'deleteGroupResponse' smart constructor.
data DeleteGroupResponse = DeleteGroupResponse'
  { _dgrrsGroup ::
      !(Maybe Group),
    _dgrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgrrsGroup' - A full description of the deleted resource group.
--
-- * 'dgrrsResponseStatus' - -- | The response status code.
deleteGroupResponse ::
  -- | 'dgrrsResponseStatus'
  Int ->
  DeleteGroupResponse
deleteGroupResponse pResponseStatus_ =
  DeleteGroupResponse'
    { _dgrrsGroup = Nothing,
      _dgrrsResponseStatus = pResponseStatus_
    }

-- | A full description of the deleted resource group.
dgrrsGroup :: Lens' DeleteGroupResponse (Maybe Group)
dgrrsGroup = lens _dgrrsGroup (\s a -> s {_dgrrsGroup = a})

-- | -- | The response status code.
dgrrsResponseStatus :: Lens' DeleteGroupResponse Int
dgrrsResponseStatus = lens _dgrrsResponseStatus (\s a -> s {_dgrrsResponseStatus = a})

instance NFData DeleteGroupResponse
