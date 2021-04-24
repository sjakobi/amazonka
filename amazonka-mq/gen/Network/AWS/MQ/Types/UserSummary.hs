{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.UserSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.UserSummary where

import Network.AWS.Lens
import Network.AWS.MQ.Types.ChangeType
import Network.AWS.Prelude

-- | Returns a list of all broker users.
--
-- /See:/ 'userSummary' smart constructor.
data UserSummary = UserSummary'
  { _usPendingChange ::
      !(Maybe ChangeType),
    _usUsername :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usPendingChange' - The type of change pending for the broker user.
--
-- * 'usUsername' - Required. The username of the broker user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
userSummary ::
  UserSummary
userSummary =
  UserSummary'
    { _usPendingChange = Nothing,
      _usUsername = Nothing
    }

-- | The type of change pending for the broker user.
usPendingChange :: Lens' UserSummary (Maybe ChangeType)
usPendingChange = lens _usPendingChange (\s a -> s {_usPendingChange = a})

-- | Required. The username of the broker user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
usUsername :: Lens' UserSummary (Maybe Text)
usUsername = lens _usUsername (\s a -> s {_usUsername = a})

instance FromJSON UserSummary where
  parseJSON =
    withObject
      "UserSummary"
      ( \x ->
          UserSummary'
            <$> (x .:? "pendingChange") <*> (x .:? "username")
      )

instance Hashable UserSummary

instance NFData UserSummary
