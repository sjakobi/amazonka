{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.WafRuleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.WafRuleType
  ( WafRuleType
      ( ..,
        WafRuleTypeGROUP,
        WafRuleTypeRATEBASED,
        WafRuleTypeREGULAR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WafRuleType = WafRuleType'
  { fromWafRuleType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern WafRuleTypeGROUP :: WafRuleType
pattern WafRuleTypeGROUP = WafRuleType' "GROUP"

pattern WafRuleTypeRATEBASED :: WafRuleType
pattern WafRuleTypeRATEBASED = WafRuleType' "RATE_BASED"

pattern WafRuleTypeREGULAR :: WafRuleType
pattern WafRuleTypeREGULAR = WafRuleType' "REGULAR"

{-# COMPLETE
  WafRuleTypeGROUP,
  WafRuleTypeRATEBASED,
  WafRuleTypeREGULAR,
  WafRuleType'
  #-}

instance Prelude.FromText WafRuleType where
  parser = WafRuleType' Prelude.<$> Prelude.takeText

instance Prelude.ToText WafRuleType where
  toText (WafRuleType' x) = x

instance Prelude.Hashable WafRuleType

instance Prelude.NFData WafRuleType

instance Prelude.ToByteString WafRuleType

instance Prelude.ToQuery WafRuleType

instance Prelude.ToHeader WafRuleType

instance Prelude.ToJSON WafRuleType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WafRuleType where
  parseJSON = Prelude.parseJSONText "WafRuleType"
