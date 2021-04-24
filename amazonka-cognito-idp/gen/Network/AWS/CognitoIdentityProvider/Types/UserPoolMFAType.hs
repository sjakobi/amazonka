{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.UserPoolMFAType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.UserPoolMFAType
  ( UserPoolMFAType
      ( ..,
        ON,
        Off,
        Optional
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UserPoolMFAType = UserPoolMFAType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ON :: UserPoolMFAType
pattern ON = UserPoolMFAType' "ON"

pattern Off :: UserPoolMFAType
pattern Off = UserPoolMFAType' "OFF"

pattern Optional :: UserPoolMFAType
pattern Optional = UserPoolMFAType' "OPTIONAL"

{-# COMPLETE
  ON,
  Off,
  Optional,
  UserPoolMFAType'
  #-}

instance FromText UserPoolMFAType where
  parser = (UserPoolMFAType' . mk) <$> takeText

instance ToText UserPoolMFAType where
  toText (UserPoolMFAType' ci) = original ci

instance Hashable UserPoolMFAType

instance NFData UserPoolMFAType

instance ToByteString UserPoolMFAType

instance ToQuery UserPoolMFAType

instance ToHeader UserPoolMFAType

instance ToJSON UserPoolMFAType where
  toJSON = toJSONText

instance FromJSON UserPoolMFAType where
  parseJSON = parseJSONText "UserPoolMFAType"
