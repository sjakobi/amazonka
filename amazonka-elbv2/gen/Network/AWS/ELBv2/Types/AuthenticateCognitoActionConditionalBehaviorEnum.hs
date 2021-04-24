{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum
  ( AuthenticateCognitoActionConditionalBehaviorEnum
      ( ..,
        ACACBEAllow,
        ACACBEAuthenticate,
        ACACBEDeny
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthenticateCognitoActionConditionalBehaviorEnum
  = AuthenticateCognitoActionConditionalBehaviorEnum'
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

pattern ACACBEAllow :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern ACACBEAllow = AuthenticateCognitoActionConditionalBehaviorEnum' "allow"

pattern ACACBEAuthenticate :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern ACACBEAuthenticate = AuthenticateCognitoActionConditionalBehaviorEnum' "authenticate"

pattern ACACBEDeny :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern ACACBEDeny = AuthenticateCognitoActionConditionalBehaviorEnum' "deny"

{-# COMPLETE
  ACACBEAllow,
  ACACBEAuthenticate,
  ACACBEDeny,
  AuthenticateCognitoActionConditionalBehaviorEnum'
  #-}

instance FromText AuthenticateCognitoActionConditionalBehaviorEnum where
  parser = (AuthenticateCognitoActionConditionalBehaviorEnum' . mk) <$> takeText

instance ToText AuthenticateCognitoActionConditionalBehaviorEnum where
  toText (AuthenticateCognitoActionConditionalBehaviorEnum' ci) = original ci

instance Hashable AuthenticateCognitoActionConditionalBehaviorEnum

instance NFData AuthenticateCognitoActionConditionalBehaviorEnum

instance ToByteString AuthenticateCognitoActionConditionalBehaviorEnum

instance ToQuery AuthenticateCognitoActionConditionalBehaviorEnum

instance ToHeader AuthenticateCognitoActionConditionalBehaviorEnum

instance FromXML AuthenticateCognitoActionConditionalBehaviorEnum where
  parseXML = parseXMLText "AuthenticateCognitoActionConditionalBehaviorEnum"
