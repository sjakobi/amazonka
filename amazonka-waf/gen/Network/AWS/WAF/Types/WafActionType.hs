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
-- Module      : Network.AWS.WAF.Types.WafActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.WafActionType
  ( WafActionType
      ( ..,
        WafActionTypeALLOW,
        WafActionTypeBLOCK,
        WafActionTypeCOUNT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WafActionType = WafActionType'
  { fromWafActionType ::
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

pattern WafActionTypeALLOW :: WafActionType
pattern WafActionTypeALLOW = WafActionType' "ALLOW"

pattern WafActionTypeBLOCK :: WafActionType
pattern WafActionTypeBLOCK = WafActionType' "BLOCK"

pattern WafActionTypeCOUNT :: WafActionType
pattern WafActionTypeCOUNT = WafActionType' "COUNT"

{-# COMPLETE
  WafActionTypeALLOW,
  WafActionTypeBLOCK,
  WafActionTypeCOUNT,
  WafActionType'
  #-}

instance Prelude.FromText WafActionType where
  parser = WafActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText WafActionType where
  toText (WafActionType' x) = x

instance Prelude.Hashable WafActionType

instance Prelude.NFData WafActionType

instance Prelude.ToByteString WafActionType

instance Prelude.ToQuery WafActionType

instance Prelude.ToHeader WafActionType

instance Prelude.ToJSON WafActionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WafActionType where
  parseJSON = Prelude.parseJSONText "WafActionType"
