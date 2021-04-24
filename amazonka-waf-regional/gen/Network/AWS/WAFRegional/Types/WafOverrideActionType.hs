{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.WafOverrideActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.WafOverrideActionType
  ( WafOverrideActionType
      ( ..,
        WOATCount,
        WOATNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WafOverrideActionType
  = WafOverrideActionType'
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

pattern WOATCount :: WafOverrideActionType
pattern WOATCount = WafOverrideActionType' "COUNT"

pattern WOATNone :: WafOverrideActionType
pattern WOATNone = WafOverrideActionType' "NONE"

{-# COMPLETE
  WOATCount,
  WOATNone,
  WafOverrideActionType'
  #-}

instance FromText WafOverrideActionType where
  parser = (WafOverrideActionType' . mk) <$> takeText

instance ToText WafOverrideActionType where
  toText (WafOverrideActionType' ci) = original ci

instance Hashable WafOverrideActionType

instance NFData WafOverrideActionType

instance ToByteString WafOverrideActionType

instance ToQuery WafOverrideActionType

instance ToHeader WafOverrideActionType

instance ToJSON WafOverrideActionType where
  toJSON = toJSONText

instance FromJSON WafOverrideActionType where
  parseJSON = parseJSONText "WafOverrideActionType"
