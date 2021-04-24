{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.UserStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.UserStatusType
  ( UserStatusType
      ( ..,
        Archived,
        Compromised,
        Confirmed,
        ForceChangePassword,
        ResetRequired,
        Unconfirmed,
        Unknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UserStatusType = UserStatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Archived :: UserStatusType
pattern Archived = UserStatusType' "ARCHIVED"

pattern Compromised :: UserStatusType
pattern Compromised = UserStatusType' "COMPROMISED"

pattern Confirmed :: UserStatusType
pattern Confirmed = UserStatusType' "CONFIRMED"

pattern ForceChangePassword :: UserStatusType
pattern ForceChangePassword = UserStatusType' "FORCE_CHANGE_PASSWORD"

pattern ResetRequired :: UserStatusType
pattern ResetRequired = UserStatusType' "RESET_REQUIRED"

pattern Unconfirmed :: UserStatusType
pattern Unconfirmed = UserStatusType' "UNCONFIRMED"

pattern Unknown :: UserStatusType
pattern Unknown = UserStatusType' "UNKNOWN"

{-# COMPLETE
  Archived,
  Compromised,
  Confirmed,
  ForceChangePassword,
  ResetRequired,
  Unconfirmed,
  Unknown,
  UserStatusType'
  #-}

instance FromText UserStatusType where
  parser = (UserStatusType' . mk) <$> takeText

instance ToText UserStatusType where
  toText (UserStatusType' ci) = original ci

instance Hashable UserStatusType

instance NFData UserStatusType

instance ToByteString UserStatusType

instance ToQuery UserStatusType

instance ToHeader UserStatusType

instance FromJSON UserStatusType where
  parseJSON = parseJSONText "UserStatusType"
