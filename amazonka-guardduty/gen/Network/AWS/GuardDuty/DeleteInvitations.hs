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
-- Module      : Network.AWS.GuardDuty.DeleteInvitations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.
module Network.AWS.GuardDuty.DeleteInvitations
  ( -- * Creating a Request
    deleteInvitations,
    DeleteInvitations,

    -- * Request Lenses
    dAccountIds,

    -- * Destructuring the Response
    deleteInvitationsResponse,
    DeleteInvitationsResponse,

    -- * Response Lenses
    delrsResponseStatus,
    delrsUnprocessedAccounts,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteInvitations' smart constructor.
newtype DeleteInvitations = DeleteInvitations'
  { _dAccountIds ::
      List1 Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteInvitations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAccountIds' - A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to delete invitations from.
deleteInvitations ::
  -- | 'dAccountIds'
  NonEmpty Text ->
  DeleteInvitations
deleteInvitations pAccountIds_ =
  DeleteInvitations'
    { _dAccountIds =
        _List1 # pAccountIds_
    }

-- | A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to delete invitations from.
dAccountIds :: Lens' DeleteInvitations (NonEmpty Text)
dAccountIds = lens _dAccountIds (\s a -> s {_dAccountIds = a}) . _List1

instance AWSRequest DeleteInvitations where
  type Rs DeleteInvitations = DeleteInvitationsResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          DeleteInvitationsResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "unprocessedAccounts" .!@ mempty)
      )

instance Hashable DeleteInvitations

instance NFData DeleteInvitations

instance ToHeaders DeleteInvitations where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteInvitations where
  toJSON DeleteInvitations' {..} =
    object
      (catMaybes [Just ("accountIds" .= _dAccountIds)])

instance ToPath DeleteInvitations where
  toPath = const "/invitation/delete"

instance ToQuery DeleteInvitations where
  toQuery = const mempty

-- | /See:/ 'deleteInvitationsResponse' smart constructor.
data DeleteInvitationsResponse = DeleteInvitationsResponse'
  { _delrsResponseStatus ::
      !Int,
    _delrsUnprocessedAccounts ::
      ![UnprocessedAccount]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteInvitationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsResponseStatus' - -- | The response status code.
--
-- * 'delrsUnprocessedAccounts' - A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.
deleteInvitationsResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteInvitationsResponse
deleteInvitationsResponse pResponseStatus_ =
  DeleteInvitationsResponse'
    { _delrsResponseStatus =
        pResponseStatus_,
      _delrsUnprocessedAccounts = mempty
    }

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteInvitationsResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

-- | A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.
delrsUnprocessedAccounts :: Lens' DeleteInvitationsResponse [UnprocessedAccount]
delrsUnprocessedAccounts = lens _delrsUnprocessedAccounts (\s a -> s {_delrsUnprocessedAccounts = a}) . _Coerce

instance NFData DeleteInvitationsResponse
