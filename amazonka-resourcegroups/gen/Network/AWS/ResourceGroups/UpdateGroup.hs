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
-- Module      : Network.AWS.ResourceGroups.UpdateGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the description for an existing group. You cannot update the name of a resource group.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:UpdateGroup@
module Network.AWS.ResourceGroups.UpdateGroup
  ( -- * Creating a Request
    updateGroup,
    UpdateGroup,

    -- * Request Lenses
    ugGroupName,
    ugGroup,
    ugDescription,

    -- * Destructuring the Response
    updateGroupResponse,
    UpdateGroupResponse,

    -- * Response Lenses
    ugrrsGroup,
    ugrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'updateGroup' smart constructor.
data UpdateGroup = UpdateGroup'
  { _ugGroupName ::
      !(Maybe Text),
    _ugGroup :: !(Maybe Text),
    _ugDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugGroupName' - Don't use this parameter. Use @Group@ instead.
--
-- * 'ugGroup' - The name or the ARN of the resource group to modify.
--
-- * 'ugDescription' - The new description that you want to update the resource group with. Descriptions can contain letters, numbers, hyphens, underscores, periods, and spaces.
updateGroup ::
  UpdateGroup
updateGroup =
  UpdateGroup'
    { _ugGroupName = Nothing,
      _ugGroup = Nothing,
      _ugDescription = Nothing
    }

-- | Don't use this parameter. Use @Group@ instead.
ugGroupName :: Lens' UpdateGroup (Maybe Text)
ugGroupName = lens _ugGroupName (\s a -> s {_ugGroupName = a})

-- | The name or the ARN of the resource group to modify.
ugGroup :: Lens' UpdateGroup (Maybe Text)
ugGroup = lens _ugGroup (\s a -> s {_ugGroup = a})

-- | The new description that you want to update the resource group with. Descriptions can contain letters, numbers, hyphens, underscores, periods, and spaces.
ugDescription :: Lens' UpdateGroup (Maybe Text)
ugDescription = lens _ugDescription (\s a -> s {_ugDescription = a})

instance AWSRequest UpdateGroup where
  type Rs UpdateGroup = UpdateGroupResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          UpdateGroupResponse'
            <$> (x .?> "Group") <*> (pure (fromEnum s))
      )

instance Hashable UpdateGroup

instance NFData UpdateGroup

instance ToHeaders UpdateGroup where
  toHeaders = const mempty

instance ToJSON UpdateGroup where
  toJSON UpdateGroup' {..} =
    object
      ( catMaybes
          [ ("GroupName" .=) <$> _ugGroupName,
            ("Group" .=) <$> _ugGroup,
            ("Description" .=) <$> _ugDescription
          ]
      )

instance ToPath UpdateGroup where
  toPath = const "/update-group"

instance ToQuery UpdateGroup where
  toQuery = const mempty

-- | /See:/ 'updateGroupResponse' smart constructor.
data UpdateGroupResponse = UpdateGroupResponse'
  { _ugrrsGroup ::
      !(Maybe Group),
    _ugrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugrrsGroup' - The update description of the resource group.
--
-- * 'ugrrsResponseStatus' - -- | The response status code.
updateGroupResponse ::
  -- | 'ugrrsResponseStatus'
  Int ->
  UpdateGroupResponse
updateGroupResponse pResponseStatus_ =
  UpdateGroupResponse'
    { _ugrrsGroup = Nothing,
      _ugrrsResponseStatus = pResponseStatus_
    }

-- | The update description of the resource group.
ugrrsGroup :: Lens' UpdateGroupResponse (Maybe Group)
ugrrsGroup = lens _ugrrsGroup (\s a -> s {_ugrrsGroup = a})

-- | -- | The response status code.
ugrrsResponseStatus :: Lens' UpdateGroupResponse Int
ugrrsResponseStatus = lens _ugrrsResponseStatus (\s a -> s {_ugrrsResponseStatus = a})

instance NFData UpdateGroupResponse
