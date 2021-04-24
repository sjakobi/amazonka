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
-- Module      : Network.AWS.Shield.DeleteProtectionGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified protection group.
module Network.AWS.Shield.DeleteProtectionGroup
  ( -- * Creating a Request
    deleteProtectionGroup,
    DeleteProtectionGroup,

    -- * Request Lenses
    dProtectionGroupId,

    -- * Destructuring the Response
    deleteProtectionGroupResponse,
    DeleteProtectionGroupResponse,

    -- * Response Lenses
    dpgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Shield.Types

-- | /See:/ 'deleteProtectionGroup' smart constructor.
newtype DeleteProtectionGroup = DeleteProtectionGroup'
  { _dProtectionGroupId ::
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

-- | Creates a value of 'DeleteProtectionGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dProtectionGroupId' - The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it.
deleteProtectionGroup ::
  -- | 'dProtectionGroupId'
  Text ->
  DeleteProtectionGroup
deleteProtectionGroup pProtectionGroupId_ =
  DeleteProtectionGroup'
    { _dProtectionGroupId =
        pProtectionGroupId_
    }

-- | The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it.
dProtectionGroupId :: Lens' DeleteProtectionGroup Text
dProtectionGroupId = lens _dProtectionGroupId (\s a -> s {_dProtectionGroupId = a})

instance AWSRequest DeleteProtectionGroup where
  type
    Rs DeleteProtectionGroup =
      DeleteProtectionGroupResponse
  request = postJSON shield
  response =
    receiveEmpty
      ( \s h x ->
          DeleteProtectionGroupResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteProtectionGroup

instance NFData DeleteProtectionGroup

instance ToHeaders DeleteProtectionGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShield_20160616.DeleteProtectionGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteProtectionGroup where
  toJSON DeleteProtectionGroup' {..} =
    object
      ( catMaybes
          [Just ("ProtectionGroupId" .= _dProtectionGroupId)]
      )

instance ToPath DeleteProtectionGroup where
  toPath = const "/"

instance ToQuery DeleteProtectionGroup where
  toQuery = const mempty

-- | /See:/ 'deleteProtectionGroupResponse' smart constructor.
newtype DeleteProtectionGroupResponse = DeleteProtectionGroupResponse'
  { _dpgrrsResponseStatus ::
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

-- | Creates a value of 'DeleteProtectionGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpgrrsResponseStatus' - -- | The response status code.
deleteProtectionGroupResponse ::
  -- | 'dpgrrsResponseStatus'
  Int ->
  DeleteProtectionGroupResponse
deleteProtectionGroupResponse pResponseStatus_ =
  DeleteProtectionGroupResponse'
    { _dpgrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dpgrrsResponseStatus :: Lens' DeleteProtectionGroupResponse Int
dpgrrsResponseStatus = lens _dpgrrsResponseStatus (\s a -> s {_dpgrrsResponseStatus = a})

instance NFData DeleteProtectionGroupResponse
