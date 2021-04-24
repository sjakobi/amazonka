{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Master
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.Master where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the administrator account and invitation.
--
--
--
-- /See:/ 'master' smart constructor.
data Master = Master'
  { _mAccountId :: !(Maybe Text),
    _mRelationshipStatus :: !(Maybe Text),
    _mInvitationId :: !(Maybe Text),
    _mInvitedAt :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Master' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mAccountId' - The ID of the account used as the administrator account.
--
-- * 'mRelationshipStatus' - The status of the relationship between the administrator and member accounts.
--
-- * 'mInvitationId' - The value used to validate the administrator account to the member account.
--
-- * 'mInvitedAt' - The timestamp when the invitation was sent.
master ::
  Master
master =
  Master'
    { _mAccountId = Nothing,
      _mRelationshipStatus = Nothing,
      _mInvitationId = Nothing,
      _mInvitedAt = Nothing
    }

-- | The ID of the account used as the administrator account.
mAccountId :: Lens' Master (Maybe Text)
mAccountId = lens _mAccountId (\s a -> s {_mAccountId = a})

-- | The status of the relationship between the administrator and member accounts.
mRelationshipStatus :: Lens' Master (Maybe Text)
mRelationshipStatus = lens _mRelationshipStatus (\s a -> s {_mRelationshipStatus = a})

-- | The value used to validate the administrator account to the member account.
mInvitationId :: Lens' Master (Maybe Text)
mInvitationId = lens _mInvitationId (\s a -> s {_mInvitationId = a})

-- | The timestamp when the invitation was sent.
mInvitedAt :: Lens' Master (Maybe Text)
mInvitedAt = lens _mInvitedAt (\s a -> s {_mInvitedAt = a})

instance FromJSON Master where
  parseJSON =
    withObject
      "Master"
      ( \x ->
          Master'
            <$> (x .:? "accountId")
            <*> (x .:? "relationshipStatus")
            <*> (x .:? "invitationId")
            <*> (x .:? "invitedAt")
      )

instance Hashable Master

instance NFData Master
