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
-- Module      : Network.AWS.WorkMail.DeleteGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a group from Amazon WorkMail.
module Network.AWS.WorkMail.DeleteGroup
  ( -- * Creating a Request
    deleteGroup,
    DeleteGroup,

    -- * Request Lenses
    dgOrganizationId,
    dgGroupId,

    -- * Destructuring the Response
    deleteGroupResponse,
    DeleteGroupResponse,

    -- * Response Lenses
    dgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'deleteGroup' smart constructor.
data DeleteGroup = DeleteGroup'
  { _dgOrganizationId ::
      !Text,
    _dgGroupId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgOrganizationId' - The organization that contains the group.
--
-- * 'dgGroupId' - The identifier of the group to be deleted.
deleteGroup ::
  -- | 'dgOrganizationId'
  Text ->
  -- | 'dgGroupId'
  Text ->
  DeleteGroup
deleteGroup pOrganizationId_ pGroupId_ =
  DeleteGroup'
    { _dgOrganizationId = pOrganizationId_,
      _dgGroupId = pGroupId_
    }

-- | The organization that contains the group.
dgOrganizationId :: Lens' DeleteGroup Text
dgOrganizationId = lens _dgOrganizationId (\s a -> s {_dgOrganizationId = a})

-- | The identifier of the group to be deleted.
dgGroupId :: Lens' DeleteGroup Text
dgGroupId = lens _dgGroupId (\s a -> s {_dgGroupId = a})

instance AWSRequest DeleteGroup where
  type Rs DeleteGroup = DeleteGroupResponse
  request = postJSON workMail
  response =
    receiveEmpty
      ( \s h x ->
          DeleteGroupResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteGroup

instance NFData DeleteGroup

instance ToHeaders DeleteGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.DeleteGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteGroup where
  toJSON DeleteGroup' {..} =
    object
      ( catMaybes
          [ Just ("OrganizationId" .= _dgOrganizationId),
            Just ("GroupId" .= _dgGroupId)
          ]
      )

instance ToPath DeleteGroup where
  toPath = const "/"

instance ToQuery DeleteGroup where
  toQuery = const mempty

-- | /See:/ 'deleteGroupResponse' smart constructor.
newtype DeleteGroupResponse = DeleteGroupResponse'
  { _dgrrsResponseStatus ::
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

-- | Creates a value of 'DeleteGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgrrsResponseStatus' - -- | The response status code.
deleteGroupResponse ::
  -- | 'dgrrsResponseStatus'
  Int ->
  DeleteGroupResponse
deleteGroupResponse pResponseStatus_ =
  DeleteGroupResponse'
    { _dgrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dgrrsResponseStatus :: Lens' DeleteGroupResponse Int
dgrrsResponseStatus = lens _dgrrsResponseStatus (\s a -> s {_dgrrsResponseStatus = a})

instance NFData DeleteGroupResponse
