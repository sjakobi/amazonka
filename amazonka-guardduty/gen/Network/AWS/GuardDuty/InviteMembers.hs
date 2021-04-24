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
-- Module      : Network.AWS.GuardDuty.InviteMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty, and allow the current AWS account to view and manage these accounts' findings on their behalf as the GuardDuty administrator account.
module Network.AWS.GuardDuty.InviteMembers
  ( -- * Creating a Request
    inviteMembers,
    InviteMembers,

    -- * Request Lenses
    imMessage,
    imDisableEmailNotification,
    imDetectorId,
    imAccountIds,

    -- * Destructuring the Response
    inviteMembersResponse,
    InviteMembersResponse,

    -- * Response Lenses
    imrrsResponseStatus,
    imrrsUnprocessedAccounts,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'inviteMembers' smart constructor.
data InviteMembers = InviteMembers'
  { _imMessage ::
      !(Maybe Text),
    _imDisableEmailNotification ::
      !(Maybe Bool),
    _imDetectorId :: !Text,
    _imAccountIds :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InviteMembers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imMessage' - The invitation message that you want to send to the accounts that you're inviting to GuardDuty as members.
--
-- * 'imDisableEmailNotification' - A Boolean value that specifies whether you want to disable email notification to the accounts that you are inviting to GuardDuty as members.
--
-- * 'imDetectorId' - The unique ID of the detector of the GuardDuty account that you want to invite members with.
--
-- * 'imAccountIds' - A list of account IDs of the accounts that you want to invite to GuardDuty as members.
inviteMembers ::
  -- | 'imDetectorId'
  Text ->
  -- | 'imAccountIds'
  NonEmpty Text ->
  InviteMembers
inviteMembers pDetectorId_ pAccountIds_ =
  InviteMembers'
    { _imMessage = Nothing,
      _imDisableEmailNotification = Nothing,
      _imDetectorId = pDetectorId_,
      _imAccountIds = _List1 # pAccountIds_
    }

-- | The invitation message that you want to send to the accounts that you're inviting to GuardDuty as members.
imMessage :: Lens' InviteMembers (Maybe Text)
imMessage = lens _imMessage (\s a -> s {_imMessage = a})

-- | A Boolean value that specifies whether you want to disable email notification to the accounts that you are inviting to GuardDuty as members.
imDisableEmailNotification :: Lens' InviteMembers (Maybe Bool)
imDisableEmailNotification = lens _imDisableEmailNotification (\s a -> s {_imDisableEmailNotification = a})

-- | The unique ID of the detector of the GuardDuty account that you want to invite members with.
imDetectorId :: Lens' InviteMembers Text
imDetectorId = lens _imDetectorId (\s a -> s {_imDetectorId = a})

-- | A list of account IDs of the accounts that you want to invite to GuardDuty as members.
imAccountIds :: Lens' InviteMembers (NonEmpty Text)
imAccountIds = lens _imAccountIds (\s a -> s {_imAccountIds = a}) . _List1

instance AWSRequest InviteMembers where
  type Rs InviteMembers = InviteMembersResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          InviteMembersResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "unprocessedAccounts" .!@ mempty)
      )

instance Hashable InviteMembers

instance NFData InviteMembers

instance ToHeaders InviteMembers where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON InviteMembers where
  toJSON InviteMembers' {..} =
    object
      ( catMaybes
          [ ("message" .=) <$> _imMessage,
            ("disableEmailNotification" .=)
              <$> _imDisableEmailNotification,
            Just ("accountIds" .= _imAccountIds)
          ]
      )

instance ToPath InviteMembers where
  toPath InviteMembers' {..} =
    mconcat
      ["/detector/", toBS _imDetectorId, "/member/invite"]

instance ToQuery InviteMembers where
  toQuery = const mempty

-- | /See:/ 'inviteMembersResponse' smart constructor.
data InviteMembersResponse = InviteMembersResponse'
  { _imrrsResponseStatus ::
      !Int,
    _imrrsUnprocessedAccounts ::
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

-- | Creates a value of 'InviteMembersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imrrsResponseStatus' - -- | The response status code.
--
-- * 'imrrsUnprocessedAccounts' - A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.
inviteMembersResponse ::
  -- | 'imrrsResponseStatus'
  Int ->
  InviteMembersResponse
inviteMembersResponse pResponseStatus_ =
  InviteMembersResponse'
    { _imrrsResponseStatus =
        pResponseStatus_,
      _imrrsUnprocessedAccounts = mempty
    }

-- | -- | The response status code.
imrrsResponseStatus :: Lens' InviteMembersResponse Int
imrrsResponseStatus = lens _imrrsResponseStatus (\s a -> s {_imrrsResponseStatus = a})

-- | A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.
imrrsUnprocessedAccounts :: Lens' InviteMembersResponse [UnprocessedAccount]
imrrsUnprocessedAccounts = lens _imrrsUnprocessedAccounts (\s a -> s {_imrrsUnprocessedAccounts = a}) . _Coerce

instance NFData InviteMembersResponse
