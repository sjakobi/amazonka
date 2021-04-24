{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.Member
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.Member where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkMail.Types.EntityState
import Network.AWS.WorkMail.Types.MemberType

-- | The representation of a user or group.
--
--
--
-- /See:/ 'member' smart constructor.
data Member = Member'
  { _mEnabledDate ::
      !(Maybe POSIX),
    _mId :: !(Maybe Text),
    _mState :: !(Maybe EntityState),
    _mName :: !(Maybe Text),
    _mDisabledDate :: !(Maybe POSIX),
    _mType :: !(Maybe MemberType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Member' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mEnabledDate' - The date indicating when the member was enabled for Amazon WorkMail use.
--
-- * 'mId' - The identifier of the member.
--
-- * 'mState' - The state of the member, which can be ENABLED, DISABLED, or DELETED.
--
-- * 'mName' - The name of the member.
--
-- * 'mDisabledDate' - The date indicating when the member was disabled from Amazon WorkMail use.
--
-- * 'mType' - A member can be a user or group.
member ::
  Member
member =
  Member'
    { _mEnabledDate = Nothing,
      _mId = Nothing,
      _mState = Nothing,
      _mName = Nothing,
      _mDisabledDate = Nothing,
      _mType = Nothing
    }

-- | The date indicating when the member was enabled for Amazon WorkMail use.
mEnabledDate :: Lens' Member (Maybe UTCTime)
mEnabledDate = lens _mEnabledDate (\s a -> s {_mEnabledDate = a}) . mapping _Time

-- | The identifier of the member.
mId :: Lens' Member (Maybe Text)
mId = lens _mId (\s a -> s {_mId = a})

-- | The state of the member, which can be ENABLED, DISABLED, or DELETED.
mState :: Lens' Member (Maybe EntityState)
mState = lens _mState (\s a -> s {_mState = a})

-- | The name of the member.
mName :: Lens' Member (Maybe Text)
mName = lens _mName (\s a -> s {_mName = a})

-- | The date indicating when the member was disabled from Amazon WorkMail use.
mDisabledDate :: Lens' Member (Maybe UTCTime)
mDisabledDate = lens _mDisabledDate (\s a -> s {_mDisabledDate = a}) . mapping _Time

-- | A member can be a user or group.
mType :: Lens' Member (Maybe MemberType)
mType = lens _mType (\s a -> s {_mType = a})

instance FromJSON Member where
  parseJSON =
    withObject
      "Member"
      ( \x ->
          Member'
            <$> (x .:? "EnabledDate")
            <*> (x .:? "Id")
            <*> (x .:? "State")
            <*> (x .:? "Name")
            <*> (x .:? "DisabledDate")
            <*> (x .:? "Type")
      )

instance Hashable Member

instance NFData Member
