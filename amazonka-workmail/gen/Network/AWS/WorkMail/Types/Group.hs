{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.Group
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.Group where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkMail.Types.EntityState

-- | The representation of an Amazon WorkMail group.
--
--
--
-- /See:/ 'group'' smart constructor.
data Group = Group'
  { _gEnabledDate :: !(Maybe POSIX),
    _gId :: !(Maybe Text),
    _gState :: !(Maybe EntityState),
    _gName :: !(Maybe Text),
    _gEmail :: !(Maybe Text),
    _gDisabledDate :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gEnabledDate' - The date indicating when the group was enabled for Amazon WorkMail use.
--
-- * 'gId' - The identifier of the group.
--
-- * 'gState' - The state of the group, which can be ENABLED, DISABLED, or DELETED.
--
-- * 'gName' - The name of the group.
--
-- * 'gEmail' - The email of the group.
--
-- * 'gDisabledDate' - The date indicating when the group was disabled from Amazon WorkMail use.
group' ::
  Group
group' =
  Group'
    { _gEnabledDate = Nothing,
      _gId = Nothing,
      _gState = Nothing,
      _gName = Nothing,
      _gEmail = Nothing,
      _gDisabledDate = Nothing
    }

-- | The date indicating when the group was enabled for Amazon WorkMail use.
gEnabledDate :: Lens' Group (Maybe UTCTime)
gEnabledDate = lens _gEnabledDate (\s a -> s {_gEnabledDate = a}) . mapping _Time

-- | The identifier of the group.
gId :: Lens' Group (Maybe Text)
gId = lens _gId (\s a -> s {_gId = a})

-- | The state of the group, which can be ENABLED, DISABLED, or DELETED.
gState :: Lens' Group (Maybe EntityState)
gState = lens _gState (\s a -> s {_gState = a})

-- | The name of the group.
gName :: Lens' Group (Maybe Text)
gName = lens _gName (\s a -> s {_gName = a})

-- | The email of the group.
gEmail :: Lens' Group (Maybe Text)
gEmail = lens _gEmail (\s a -> s {_gEmail = a})

-- | The date indicating when the group was disabled from Amazon WorkMail use.
gDisabledDate :: Lens' Group (Maybe UTCTime)
gDisabledDate = lens _gDisabledDate (\s a -> s {_gDisabledDate = a}) . mapping _Time

instance FromJSON Group where
  parseJSON =
    withObject
      "Group"
      ( \x ->
          Group'
            <$> (x .:? "EnabledDate")
            <*> (x .:? "Id")
            <*> (x .:? "State")
            <*> (x .:? "Name")
            <*> (x .:? "Email")
            <*> (x .:? "DisabledDate")
      )

instance Hashable Group

instance NFData Group
