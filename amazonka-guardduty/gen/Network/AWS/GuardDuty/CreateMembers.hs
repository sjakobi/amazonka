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
-- Module      : Network.AWS.GuardDuty.CreateMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates member accounts of the current AWS account by specifying a list of AWS account IDs. This step is a prerequisite for managing the associated member accounts either by invitation or through an organization.
--
--
-- When using @Create Members@ as an organizations delegated administrator this action will enable GuardDuty in the added member accounts, with the exception of the organization delegated administrator account, which must enable GuardDuty prior to being added as a member.
--
-- If you are adding accounts by invitation use this action after GuardDuty has been enabled in potential member accounts and before using <https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html @Invite Members@ > .
module Network.AWS.GuardDuty.CreateMembers
  ( -- * Creating a Request
    createMembers,
    CreateMembers,

    -- * Request Lenses
    cmDetectorId,
    cmAccountDetails,

    -- * Destructuring the Response
    createMembersResponse,
    CreateMembersResponse,

    -- * Response Lenses
    cmrrsResponseStatus,
    cmrrsUnprocessedAccounts,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createMembers' smart constructor.
data CreateMembers = CreateMembers'
  { _cmDetectorId ::
      !Text,
    _cmAccountDetails :: !(List1 AccountDetail)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateMembers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmDetectorId' - The unique ID of the detector of the GuardDuty account that you want to associate member accounts with.
--
-- * 'cmAccountDetails' - A list of account ID and email address pairs of the accounts that you want to associate with the GuardDuty administrator account.
createMembers ::
  -- | 'cmDetectorId'
  Text ->
  -- | 'cmAccountDetails'
  NonEmpty AccountDetail ->
  CreateMembers
createMembers pDetectorId_ pAccountDetails_ =
  CreateMembers'
    { _cmDetectorId = pDetectorId_,
      _cmAccountDetails = _List1 # pAccountDetails_
    }

-- | The unique ID of the detector of the GuardDuty account that you want to associate member accounts with.
cmDetectorId :: Lens' CreateMembers Text
cmDetectorId = lens _cmDetectorId (\s a -> s {_cmDetectorId = a})

-- | A list of account ID and email address pairs of the accounts that you want to associate with the GuardDuty administrator account.
cmAccountDetails :: Lens' CreateMembers (NonEmpty AccountDetail)
cmAccountDetails = lens _cmAccountDetails (\s a -> s {_cmAccountDetails = a}) . _List1

instance AWSRequest CreateMembers where
  type Rs CreateMembers = CreateMembersResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          CreateMembersResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "unprocessedAccounts" .!@ mempty)
      )

instance Hashable CreateMembers

instance NFData CreateMembers

instance ToHeaders CreateMembers where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateMembers where
  toJSON CreateMembers' {..} =
    object
      ( catMaybes
          [Just ("accountDetails" .= _cmAccountDetails)]
      )

instance ToPath CreateMembers where
  toPath CreateMembers' {..} =
    mconcat
      ["/detector/", toBS _cmDetectorId, "/member"]

instance ToQuery CreateMembers where
  toQuery = const mempty

-- | /See:/ 'createMembersResponse' smart constructor.
data CreateMembersResponse = CreateMembersResponse'
  { _cmrrsResponseStatus ::
      !Int,
    _cmrrsUnprocessedAccounts ::
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

-- | Creates a value of 'CreateMembersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmrrsResponseStatus' - -- | The response status code.
--
-- * 'cmrrsUnprocessedAccounts' - A list of objects that include the @accountIds@ of the unprocessed accounts and a result string that explains why each was unprocessed.
createMembersResponse ::
  -- | 'cmrrsResponseStatus'
  Int ->
  CreateMembersResponse
createMembersResponse pResponseStatus_ =
  CreateMembersResponse'
    { _cmrrsResponseStatus =
        pResponseStatus_,
      _cmrrsUnprocessedAccounts = mempty
    }

-- | -- | The response status code.
cmrrsResponseStatus :: Lens' CreateMembersResponse Int
cmrrsResponseStatus = lens _cmrrsResponseStatus (\s a -> s {_cmrrsResponseStatus = a})

-- | A list of objects that include the @accountIds@ of the unprocessed accounts and a result string that explains why each was unprocessed.
cmrrsUnprocessedAccounts :: Lens' CreateMembersResponse [UnprocessedAccount]
cmrrsUnprocessedAccounts = lens _cmrrsUnprocessedAccounts (\s a -> s {_cmrrsUnprocessedAccounts = a}) . _Coerce

instance NFData CreateMembersResponse
