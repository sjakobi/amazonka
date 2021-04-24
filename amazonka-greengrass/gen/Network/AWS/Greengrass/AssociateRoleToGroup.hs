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
-- Module      : Network.AWS.Greengrass.AssociateRoleToGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a role with a group. Your Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.
module Network.AWS.Greengrass.AssociateRoleToGroup
  ( -- * Creating a Request
    associateRoleToGroup,
    AssociateRoleToGroup,

    -- * Request Lenses
    artgGroupId,
    artgRoleARN,

    -- * Destructuring the Response
    associateRoleToGroupResponse,
    AssociateRoleToGroupResponse,

    -- * Response Lenses
    artgrrsAssociatedAt,
    artgrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateRoleToGroup' smart constructor.
data AssociateRoleToGroup = AssociateRoleToGroup'
  { _artgGroupId ::
      !Text,
    _artgRoleARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssociateRoleToGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artgGroupId' - The ID of the Greengrass group.
--
-- * 'artgRoleARN' - The ARN of the role you wish to associate with this group. The existence of the role is not validated.
associateRoleToGroup ::
  -- | 'artgGroupId'
  Text ->
  -- | 'artgRoleARN'
  Text ->
  AssociateRoleToGroup
associateRoleToGroup pGroupId_ pRoleARN_ =
  AssociateRoleToGroup'
    { _artgGroupId = pGroupId_,
      _artgRoleARN = pRoleARN_
    }

-- | The ID of the Greengrass group.
artgGroupId :: Lens' AssociateRoleToGroup Text
artgGroupId = lens _artgGroupId (\s a -> s {_artgGroupId = a})

-- | The ARN of the role you wish to associate with this group. The existence of the role is not validated.
artgRoleARN :: Lens' AssociateRoleToGroup Text
artgRoleARN = lens _artgRoleARN (\s a -> s {_artgRoleARN = a})

instance AWSRequest AssociateRoleToGroup where
  type
    Rs AssociateRoleToGroup =
      AssociateRoleToGroupResponse
  request = putJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          AssociateRoleToGroupResponse'
            <$> (x .?> "AssociatedAt") <*> (pure (fromEnum s))
      )

instance Hashable AssociateRoleToGroup

instance NFData AssociateRoleToGroup

instance ToHeaders AssociateRoleToGroup where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AssociateRoleToGroup where
  toJSON AssociateRoleToGroup' {..} =
    object
      (catMaybes [Just ("RoleArn" .= _artgRoleARN)])

instance ToPath AssociateRoleToGroup where
  toPath AssociateRoleToGroup' {..} =
    mconcat
      ["/greengrass/groups/", toBS _artgGroupId, "/role"]

instance ToQuery AssociateRoleToGroup where
  toQuery = const mempty

-- | /See:/ 'associateRoleToGroupResponse' smart constructor.
data AssociateRoleToGroupResponse = AssociateRoleToGroupResponse'
  { _artgrrsAssociatedAt ::
      !(Maybe Text),
    _artgrrsResponseStatus ::
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

-- | Creates a value of 'AssociateRoleToGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artgrrsAssociatedAt' - The time, in milliseconds since the epoch, when the role ARN was associated with the group.
--
-- * 'artgrrsResponseStatus' - -- | The response status code.
associateRoleToGroupResponse ::
  -- | 'artgrrsResponseStatus'
  Int ->
  AssociateRoleToGroupResponse
associateRoleToGroupResponse pResponseStatus_ =
  AssociateRoleToGroupResponse'
    { _artgrrsAssociatedAt =
        Nothing,
      _artgrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the role ARN was associated with the group.
artgrrsAssociatedAt :: Lens' AssociateRoleToGroupResponse (Maybe Text)
artgrrsAssociatedAt = lens _artgrrsAssociatedAt (\s a -> s {_artgrrsAssociatedAt = a})

-- | -- | The response status code.
artgrrsResponseStatus :: Lens' AssociateRoleToGroupResponse Int
artgrrsResponseStatus = lens _artgrrsResponseStatus (\s a -> s {_artgrrsResponseStatus = a})

instance NFData AssociateRoleToGroupResponse
