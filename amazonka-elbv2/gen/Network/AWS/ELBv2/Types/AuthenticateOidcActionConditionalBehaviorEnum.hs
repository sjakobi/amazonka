{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.AuthenticateOidcActionConditionalBehaviorEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.AuthenticateOidcActionConditionalBehaviorEnum
  ( AuthenticateOidcActionConditionalBehaviorEnum
      ( ..,
        Allow,
        Authenticate,
        Deny
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthenticateOidcActionConditionalBehaviorEnum
  = AuthenticateOidcActionConditionalBehaviorEnum'
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

pattern Allow :: AuthenticateOidcActionConditionalBehaviorEnum
pattern Allow = AuthenticateOidcActionConditionalBehaviorEnum' "allow"

pattern Authenticate :: AuthenticateOidcActionConditionalBehaviorEnum
pattern Authenticate = AuthenticateOidcActionConditionalBehaviorEnum' "authenticate"

pattern Deny :: AuthenticateOidcActionConditionalBehaviorEnum
pattern Deny = AuthenticateOidcActionConditionalBehaviorEnum' "deny"

{-# COMPLETE
  Allow,
  Authenticate,
  Deny,
  AuthenticateOidcActionConditionalBehaviorEnum'
  #-}

instance FromText AuthenticateOidcActionConditionalBehaviorEnum where
  parser = (AuthenticateOidcActionConditionalBehaviorEnum' . mk) <$> takeText

instance ToText AuthenticateOidcActionConditionalBehaviorEnum where
  toText (AuthenticateOidcActionConditionalBehaviorEnum' ci) = original ci

instance Hashable AuthenticateOidcActionConditionalBehaviorEnum

instance NFData AuthenticateOidcActionConditionalBehaviorEnum

instance ToByteString AuthenticateOidcActionConditionalBehaviorEnum

instance ToQuery AuthenticateOidcActionConditionalBehaviorEnum

instance ToHeader AuthenticateOidcActionConditionalBehaviorEnum

instance FromXML AuthenticateOidcActionConditionalBehaviorEnum where
  parseXML = parseXMLText "AuthenticateOidcActionConditionalBehaviorEnum"
