{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.AccessControlRuleEffect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.AccessControlRuleEffect
  ( AccessControlRuleEffect
      ( ..,
        Allow,
        Deny
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccessControlRuleEffect
  = AccessControlRuleEffect'
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

pattern Allow :: AccessControlRuleEffect
pattern Allow = AccessControlRuleEffect' "ALLOW"

pattern Deny :: AccessControlRuleEffect
pattern Deny = AccessControlRuleEffect' "DENY"

{-# COMPLETE
  Allow,
  Deny,
  AccessControlRuleEffect'
  #-}

instance FromText AccessControlRuleEffect where
  parser = (AccessControlRuleEffect' . mk) <$> takeText

instance ToText AccessControlRuleEffect where
  toText (AccessControlRuleEffect' ci) = original ci

instance Hashable AccessControlRuleEffect

instance NFData AccessControlRuleEffect

instance ToByteString AccessControlRuleEffect

instance ToQuery AccessControlRuleEffect

instance ToHeader AccessControlRuleEffect

instance ToJSON AccessControlRuleEffect where
  toJSON = toJSONText

instance FromJSON AccessControlRuleEffect where
  parseJSON = parseJSONText "AccessControlRuleEffect"
