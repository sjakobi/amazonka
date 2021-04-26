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
-- Module      : Network.AWS.WAF.Types.WafOverrideActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.WafOverrideActionType
  ( WafOverrideActionType
      ( ..,
        WafOverrideActionTypeCOUNT,
        WafOverrideActionTypeNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WafOverrideActionType = WafOverrideActionType'
  { fromWafOverrideActionType ::
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

pattern WafOverrideActionTypeCOUNT :: WafOverrideActionType
pattern WafOverrideActionTypeCOUNT = WafOverrideActionType' "COUNT"

pattern WafOverrideActionTypeNONE :: WafOverrideActionType
pattern WafOverrideActionTypeNONE = WafOverrideActionType' "NONE"

{-# COMPLETE
  WafOverrideActionTypeCOUNT,
  WafOverrideActionTypeNONE,
  WafOverrideActionType'
  #-}

instance Prelude.FromText WafOverrideActionType where
  parser = WafOverrideActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText WafOverrideActionType where
  toText (WafOverrideActionType' x) = x

instance Prelude.Hashable WafOverrideActionType

instance Prelude.NFData WafOverrideActionType

instance Prelude.ToByteString WafOverrideActionType

instance Prelude.ToQuery WafOverrideActionType

instance Prelude.ToHeader WafOverrideActionType

instance Prelude.ToJSON WafOverrideActionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WafOverrideActionType where
  parseJSON = Prelude.parseJSONText "WafOverrideActionType"
