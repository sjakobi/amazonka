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
-- Module      : Network.AWS.WorkMail.Types.AccessControlRuleEffect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.AccessControlRuleEffect
  ( AccessControlRuleEffect
      ( ..,
        AccessControlRuleEffectALLOW,
        AccessControlRuleEffectDENY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccessControlRuleEffect = AccessControlRuleEffect'
  { fromAccessControlRuleEffect ::
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

pattern AccessControlRuleEffectALLOW :: AccessControlRuleEffect
pattern AccessControlRuleEffectALLOW = AccessControlRuleEffect' "ALLOW"

pattern AccessControlRuleEffectDENY :: AccessControlRuleEffect
pattern AccessControlRuleEffectDENY = AccessControlRuleEffect' "DENY"

{-# COMPLETE
  AccessControlRuleEffectALLOW,
  AccessControlRuleEffectDENY,
  AccessControlRuleEffect'
  #-}

instance Prelude.FromText AccessControlRuleEffect where
  parser = AccessControlRuleEffect' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccessControlRuleEffect where
  toText (AccessControlRuleEffect' x) = x

instance Prelude.Hashable AccessControlRuleEffect

instance Prelude.NFData AccessControlRuleEffect

instance Prelude.ToByteString AccessControlRuleEffect

instance Prelude.ToQuery AccessControlRuleEffect

instance Prelude.ToHeader AccessControlRuleEffect

instance Prelude.ToJSON AccessControlRuleEffect where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AccessControlRuleEffect where
  parseJSON = Prelude.parseJSONText "AccessControlRuleEffect"
