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
-- Module      : Network.AWS.Greengrass.DisassociateRoleFromGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the role from a group.
module Network.AWS.Greengrass.DisassociateRoleFromGroup
  ( -- * Creating a Request
    disassociateRoleFromGroup,
    DisassociateRoleFromGroup,

    -- * Request Lenses
    drfgGroupId,

    -- * Destructuring the Response
    disassociateRoleFromGroupResponse,
    DisassociateRoleFromGroupResponse,

    -- * Response Lenses
    drfgrrsDisassociatedAt,
    drfgrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateRoleFromGroup' smart constructor.
newtype DisassociateRoleFromGroup = DisassociateRoleFromGroup'
  { _drfgGroupId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateRoleFromGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drfgGroupId' - The ID of the Greengrass group.
disassociateRoleFromGroup ::
  -- | 'drfgGroupId'
  Text ->
  DisassociateRoleFromGroup
disassociateRoleFromGroup pGroupId_ =
  DisassociateRoleFromGroup'
    { _drfgGroupId =
        pGroupId_
    }

-- | The ID of the Greengrass group.
drfgGroupId :: Lens' DisassociateRoleFromGroup Text
drfgGroupId = lens _drfgGroupId (\s a -> s {_drfgGroupId = a})

instance AWSRequest DisassociateRoleFromGroup where
  type
    Rs DisassociateRoleFromGroup =
      DisassociateRoleFromGroupResponse
  request = delete greengrass
  response =
    receiveJSON
      ( \s h x ->
          DisassociateRoleFromGroupResponse'
            <$> (x .?> "DisassociatedAt") <*> (pure (fromEnum s))
      )

instance Hashable DisassociateRoleFromGroup

instance NFData DisassociateRoleFromGroup

instance ToHeaders DisassociateRoleFromGroup where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DisassociateRoleFromGroup where
  toPath DisassociateRoleFromGroup' {..} =
    mconcat
      ["/greengrass/groups/", toBS _drfgGroupId, "/role"]

instance ToQuery DisassociateRoleFromGroup where
  toQuery = const mempty

-- | /See:/ 'disassociateRoleFromGroupResponse' smart constructor.
data DisassociateRoleFromGroupResponse = DisassociateRoleFromGroupResponse'
  { _drfgrrsDisassociatedAt ::
      !( Maybe
           Text
       ),
    _drfgrrsResponseStatus ::
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

-- | Creates a value of 'DisassociateRoleFromGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drfgrrsDisassociatedAt' - The time, in milliseconds since the epoch, when the role was disassociated from the group.
--
-- * 'drfgrrsResponseStatus' - -- | The response status code.
disassociateRoleFromGroupResponse ::
  -- | 'drfgrrsResponseStatus'
  Int ->
  DisassociateRoleFromGroupResponse
disassociateRoleFromGroupResponse pResponseStatus_ =
  DisassociateRoleFromGroupResponse'
    { _drfgrrsDisassociatedAt =
        Nothing,
      _drfgrrsResponseStatus =
        pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the role was disassociated from the group.
drfgrrsDisassociatedAt :: Lens' DisassociateRoleFromGroupResponse (Maybe Text)
drfgrrsDisassociatedAt = lens _drfgrrsDisassociatedAt (\s a -> s {_drfgrrsDisassociatedAt = a})

-- | -- | The response status code.
drfgrrsResponseStatus :: Lens' DisassociateRoleFromGroupResponse Int
drfgrrsResponseStatus = lens _drfgrrsResponseStatus (\s a -> s {_drfgrrsResponseStatus = a})

instance NFData DisassociateRoleFromGroupResponse
