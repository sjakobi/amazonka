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
-- Module      : Network.AWS.GuardDuty.DeleteMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes GuardDuty member accounts (to the current GuardDuty administrator account) specified by the account IDs.
module Network.AWS.GuardDuty.DeleteMembers
  ( -- * Creating a Request
    deleteMembers,
    DeleteMembers,

    -- * Request Lenses
    dmsDetectorId,
    dmsAccountIds,

    -- * Destructuring the Response
    deleteMembersResponse,
    DeleteMembersResponse,

    -- * Response Lenses
    dmrrsResponseStatus,
    dmrrsUnprocessedAccounts,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteMembers' smart constructor.
data DeleteMembers = DeleteMembers'
  { _dmsDetectorId ::
      !Text,
    _dmsAccountIds :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteMembers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmsDetectorId' - The unique ID of the detector of the GuardDuty account whose members you want to delete.
--
-- * 'dmsAccountIds' - A list of account IDs of the GuardDuty member accounts that you want to delete.
deleteMembers ::
  -- | 'dmsDetectorId'
  Text ->
  -- | 'dmsAccountIds'
  NonEmpty Text ->
  DeleteMembers
deleteMembers pDetectorId_ pAccountIds_ =
  DeleteMembers'
    { _dmsDetectorId = pDetectorId_,
      _dmsAccountIds = _List1 # pAccountIds_
    }

-- | The unique ID of the detector of the GuardDuty account whose members you want to delete.
dmsDetectorId :: Lens' DeleteMembers Text
dmsDetectorId = lens _dmsDetectorId (\s a -> s {_dmsDetectorId = a})

-- | A list of account IDs of the GuardDuty member accounts that you want to delete.
dmsAccountIds :: Lens' DeleteMembers (NonEmpty Text)
dmsAccountIds = lens _dmsAccountIds (\s a -> s {_dmsAccountIds = a}) . _List1

instance AWSRequest DeleteMembers where
  type Rs DeleteMembers = DeleteMembersResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          DeleteMembersResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "unprocessedAccounts" .!@ mempty)
      )

instance Hashable DeleteMembers

instance NFData DeleteMembers

instance ToHeaders DeleteMembers where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteMembers where
  toJSON DeleteMembers' {..} =
    object
      (catMaybes [Just ("accountIds" .= _dmsAccountIds)])

instance ToPath DeleteMembers where
  toPath DeleteMembers' {..} =
    mconcat
      ["/detector/", toBS _dmsDetectorId, "/member/delete"]

instance ToQuery DeleteMembers where
  toQuery = const mempty

-- | /See:/ 'deleteMembersResponse' smart constructor.
data DeleteMembersResponse = DeleteMembersResponse'
  { _dmrrsResponseStatus ::
      !Int,
    _dmrrsUnprocessedAccounts ::
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

-- | Creates a value of 'DeleteMembersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmrrsResponseStatus' - -- | The response status code.
--
-- * 'dmrrsUnprocessedAccounts' - The accounts that could not be processed.
deleteMembersResponse ::
  -- | 'dmrrsResponseStatus'
  Int ->
  DeleteMembersResponse
deleteMembersResponse pResponseStatus_ =
  DeleteMembersResponse'
    { _dmrrsResponseStatus =
        pResponseStatus_,
      _dmrrsUnprocessedAccounts = mempty
    }

-- | -- | The response status code.
dmrrsResponseStatus :: Lens' DeleteMembersResponse Int
dmrrsResponseStatus = lens _dmrrsResponseStatus (\s a -> s {_dmrrsResponseStatus = a})

-- | The accounts that could not be processed.
dmrrsUnprocessedAccounts :: Lens' DeleteMembersResponse [UnprocessedAccount]
dmrrsUnprocessedAccounts = lens _dmrrsUnprocessedAccounts (\s a -> s {_dmrrsUnprocessedAccounts = a}) . _Coerce

instance NFData DeleteMembersResponse
