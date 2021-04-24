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
-- Module      : Network.AWS.GuardDuty.DisassociateMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates GuardDuty member accounts (to the current GuardDuty administrator account) specified by the account IDs.
module Network.AWS.GuardDuty.DisassociateMembers
  ( -- * Creating a Request
    disassociateMembers,
    DisassociateMembers,

    -- * Request Lenses
    dmDetectorId,
    dmAccountIds,

    -- * Destructuring the Response
    disassociateMembersResponse,
    DisassociateMembersResponse,

    -- * Response Lenses
    disrsResponseStatus,
    disrsUnprocessedAccounts,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateMembers' smart constructor.
data DisassociateMembers = DisassociateMembers'
  { _dmDetectorId ::
      !Text,
    _dmAccountIds :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DisassociateMembers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmDetectorId' - The unique ID of the detector of the GuardDuty account whose members you want to disassociate from the administrator account.
--
-- * 'dmAccountIds' - A list of account IDs of the GuardDuty member accounts that you want to disassociate from the administrator account.
disassociateMembers ::
  -- | 'dmDetectorId'
  Text ->
  -- | 'dmAccountIds'
  NonEmpty Text ->
  DisassociateMembers
disassociateMembers pDetectorId_ pAccountIds_ =
  DisassociateMembers'
    { _dmDetectorId = pDetectorId_,
      _dmAccountIds = _List1 # pAccountIds_
    }

-- | The unique ID of the detector of the GuardDuty account whose members you want to disassociate from the administrator account.
dmDetectorId :: Lens' DisassociateMembers Text
dmDetectorId = lens _dmDetectorId (\s a -> s {_dmDetectorId = a})

-- | A list of account IDs of the GuardDuty member accounts that you want to disassociate from the administrator account.
dmAccountIds :: Lens' DisassociateMembers (NonEmpty Text)
dmAccountIds = lens _dmAccountIds (\s a -> s {_dmAccountIds = a}) . _List1

instance AWSRequest DisassociateMembers where
  type
    Rs DisassociateMembers =
      DisassociateMembersResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          DisassociateMembersResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "unprocessedAccounts" .!@ mempty)
      )

instance Hashable DisassociateMembers

instance NFData DisassociateMembers

instance ToHeaders DisassociateMembers where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisassociateMembers where
  toJSON DisassociateMembers' {..} =
    object
      (catMaybes [Just ("accountIds" .= _dmAccountIds)])

instance ToPath DisassociateMembers where
  toPath DisassociateMembers' {..} =
    mconcat
      [ "/detector/",
        toBS _dmDetectorId,
        "/member/disassociate"
      ]

instance ToQuery DisassociateMembers where
  toQuery = const mempty

-- | /See:/ 'disassociateMembersResponse' smart constructor.
data DisassociateMembersResponse = DisassociateMembersResponse'
  { _disrsResponseStatus ::
      !Int,
    _disrsUnprocessedAccounts ::
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

-- | Creates a value of 'DisassociateMembersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disrsResponseStatus' - -- | The response status code.
--
-- * 'disrsUnprocessedAccounts' - A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.
disassociateMembersResponse ::
  -- | 'disrsResponseStatus'
  Int ->
  DisassociateMembersResponse
disassociateMembersResponse pResponseStatus_ =
  DisassociateMembersResponse'
    { _disrsResponseStatus =
        pResponseStatus_,
      _disrsUnprocessedAccounts = mempty
    }

-- | -- | The response status code.
disrsResponseStatus :: Lens' DisassociateMembersResponse Int
disrsResponseStatus = lens _disrsResponseStatus (\s a -> s {_disrsResponseStatus = a})

-- | A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.
disrsUnprocessedAccounts :: Lens' DisassociateMembersResponse [UnprocessedAccount]
disrsUnprocessedAccounts = lens _disrsUnprocessedAccounts (\s a -> s {_disrsUnprocessedAccounts = a}) . _Coerce

instance NFData DisassociateMembersResponse
