{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.AuthenticationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.AuthenticationStrategy
  ( AuthenticationStrategy
      ( ..,
        Ldap,
        Simple
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The authentication strategy used to secure the broker.
data AuthenticationStrategy
  = AuthenticationStrategy'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Ldap :: AuthenticationStrategy
pattern Ldap = AuthenticationStrategy' "LDAP"

pattern Simple :: AuthenticationStrategy
pattern Simple = AuthenticationStrategy' "SIMPLE"

{-# COMPLETE
  Ldap,
  Simple,
  AuthenticationStrategy'
  #-}

instance FromText AuthenticationStrategy where
  parser = (AuthenticationStrategy' . mk) <$> takeText

instance ToText AuthenticationStrategy where
  toText (AuthenticationStrategy' ci) = original ci

instance Hashable AuthenticationStrategy

instance NFData AuthenticationStrategy

instance ToByteString AuthenticationStrategy

instance ToQuery AuthenticationStrategy

instance ToHeader AuthenticationStrategy

instance ToJSON AuthenticationStrategy where
  toJSON = toJSONText

instance FromJSON AuthenticationStrategy where
  parseJSON = parseJSONText "AuthenticationStrategy"
