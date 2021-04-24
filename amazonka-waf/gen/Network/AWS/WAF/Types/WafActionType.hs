{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.Types.WafActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.WafActionType
  ( WafActionType
      ( ..,
        Allow,
        Block,
        Count
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WafActionType = WafActionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Allow :: WafActionType
pattern Allow = WafActionType' "ALLOW"

pattern Block :: WafActionType
pattern Block = WafActionType' "BLOCK"

pattern Count :: WafActionType
pattern Count = WafActionType' "COUNT"

{-# COMPLETE
  Allow,
  Block,
  Count,
  WafActionType'
  #-}

instance FromText WafActionType where
  parser = (WafActionType' . mk) <$> takeText

instance ToText WafActionType where
  toText (WafActionType' ci) = original ci

instance Hashable WafActionType

instance NFData WafActionType

instance ToByteString WafActionType

instance ToQuery WafActionType

instance ToHeader WafActionType

instance ToJSON WafActionType where
  toJSON = toJSONText

instance FromJSON WafActionType where
  parseJSON = parseJSONText "WafActionType"
