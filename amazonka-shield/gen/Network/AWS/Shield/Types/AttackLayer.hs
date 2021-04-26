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
-- Module      : Network.AWS.Shield.Types.AttackLayer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.AttackLayer
  ( AttackLayer
      ( ..,
        AttackLayerAPPLICATION,
        AttackLayerNETWORK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AttackLayer = AttackLayer'
  { fromAttackLayer ::
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

pattern AttackLayerAPPLICATION :: AttackLayer
pattern AttackLayerAPPLICATION = AttackLayer' "APPLICATION"

pattern AttackLayerNETWORK :: AttackLayer
pattern AttackLayerNETWORK = AttackLayer' "NETWORK"

{-# COMPLETE
  AttackLayerAPPLICATION,
  AttackLayerNETWORK,
  AttackLayer'
  #-}

instance Prelude.FromText AttackLayer where
  parser = AttackLayer' Prelude.<$> Prelude.takeText

instance Prelude.ToText AttackLayer where
  toText (AttackLayer' x) = x

instance Prelude.Hashable AttackLayer

instance Prelude.NFData AttackLayer

instance Prelude.ToByteString AttackLayer

instance Prelude.ToQuery AttackLayer

instance Prelude.ToHeader AttackLayer

instance Prelude.FromJSON AttackLayer where
  parseJSON = Prelude.parseJSONText "AttackLayer"
