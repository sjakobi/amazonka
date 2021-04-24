{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Member
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.Member where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the member account.
--
--
--
-- /See:/ 'member' smart constructor.
data Member = Member'
  { _memDetectorId ::
      !(Maybe Text),
    _memInvitedAt :: !(Maybe Text),
    _memAccountId :: !Text,
    _memMasterId :: !Text,
    _memEmail :: !Text,
    _memRelationshipStatus :: !Text,
    _memUpdatedAt :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Member' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'memDetectorId' - The detector ID of the member account.
--
-- * 'memInvitedAt' - The timestamp when the invitation was sent.
--
-- * 'memAccountId' - The ID of the member account.
--
-- * 'memMasterId' - The administrator account ID.
--
-- * 'memEmail' - The email address of the member account.
--
-- * 'memRelationshipStatus' - The status of the relationship between the member and the administrator.
--
-- * 'memUpdatedAt' - The last-updated timestamp of the member.
member ::
  -- | 'memAccountId'
  Text ->
  -- | 'memMasterId'
  Text ->
  -- | 'memEmail'
  Text ->
  -- | 'memRelationshipStatus'
  Text ->
  -- | 'memUpdatedAt'
  Text ->
  Member
member
  pAccountId_
  pMasterId_
  pEmail_
  pRelationshipStatus_
  pUpdatedAt_ =
    Member'
      { _memDetectorId = Nothing,
        _memInvitedAt = Nothing,
        _memAccountId = pAccountId_,
        _memMasterId = pMasterId_,
        _memEmail = pEmail_,
        _memRelationshipStatus = pRelationshipStatus_,
        _memUpdatedAt = pUpdatedAt_
      }

-- | The detector ID of the member account.
memDetectorId :: Lens' Member (Maybe Text)
memDetectorId = lens _memDetectorId (\s a -> s {_memDetectorId = a})

-- | The timestamp when the invitation was sent.
memInvitedAt :: Lens' Member (Maybe Text)
memInvitedAt = lens _memInvitedAt (\s a -> s {_memInvitedAt = a})

-- | The ID of the member account.
memAccountId :: Lens' Member Text
memAccountId = lens _memAccountId (\s a -> s {_memAccountId = a})

-- | The administrator account ID.
memMasterId :: Lens' Member Text
memMasterId = lens _memMasterId (\s a -> s {_memMasterId = a})

-- | The email address of the member account.
memEmail :: Lens' Member Text
memEmail = lens _memEmail (\s a -> s {_memEmail = a})

-- | The status of the relationship between the member and the administrator.
memRelationshipStatus :: Lens' Member Text
memRelationshipStatus = lens _memRelationshipStatus (\s a -> s {_memRelationshipStatus = a})

-- | The last-updated timestamp of the member.
memUpdatedAt :: Lens' Member Text
memUpdatedAt = lens _memUpdatedAt (\s a -> s {_memUpdatedAt = a})

instance FromJSON Member where
  parseJSON =
    withObject
      "Member"
      ( \x ->
          Member'
            <$> (x .:? "detectorId")
            <*> (x .:? "invitedAt")
            <*> (x .: "accountId")
            <*> (x .: "masterId")
            <*> (x .: "email")
            <*> (x .: "relationshipStatus")
            <*> (x .: "updatedAt")
      )

instance Hashable Member

instance NFData Member
