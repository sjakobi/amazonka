{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.IAMUserAccessToBilling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.IAMUserAccessToBilling
  ( IAMUserAccessToBilling
      ( ..,
        Allow,
        Deny
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IAMUserAccessToBilling
  = IAMUserAccessToBilling'
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

pattern Allow :: IAMUserAccessToBilling
pattern Allow = IAMUserAccessToBilling' "ALLOW"

pattern Deny :: IAMUserAccessToBilling
pattern Deny = IAMUserAccessToBilling' "DENY"

{-# COMPLETE
  Allow,
  Deny,
  IAMUserAccessToBilling'
  #-}

instance FromText IAMUserAccessToBilling where
  parser = (IAMUserAccessToBilling' . mk) <$> takeText

instance ToText IAMUserAccessToBilling where
  toText (IAMUserAccessToBilling' ci) = original ci

instance Hashable IAMUserAccessToBilling

instance NFData IAMUserAccessToBilling

instance ToByteString IAMUserAccessToBilling

instance ToQuery IAMUserAccessToBilling

instance ToHeader IAMUserAccessToBilling

instance ToJSON IAMUserAccessToBilling where
  toJSON = toJSONText
