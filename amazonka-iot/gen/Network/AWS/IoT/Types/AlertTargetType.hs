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
-- Module      : Network.AWS.IoT.Types.AlertTargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AlertTargetType
  ( AlertTargetType
      ( ..,
        AlertTargetTypeSNS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of alert target: one of \"SNS\".
newtype AlertTargetType = AlertTargetType'
  { fromAlertTargetType ::
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

pattern AlertTargetTypeSNS :: AlertTargetType
pattern AlertTargetTypeSNS = AlertTargetType' "SNS"

{-# COMPLETE
  AlertTargetTypeSNS,
  AlertTargetType'
  #-}

instance Prelude.FromText AlertTargetType where
  parser = AlertTargetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AlertTargetType where
  toText (AlertTargetType' x) = x

instance Prelude.Hashable AlertTargetType

instance Prelude.NFData AlertTargetType

instance Prelude.ToByteString AlertTargetType

instance Prelude.ToQuery AlertTargetType

instance Prelude.ToHeader AlertTargetType

instance Prelude.ToJSON AlertTargetType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AlertTargetType where
  parseJSON = Prelude.parseJSONText "AlertTargetType"
