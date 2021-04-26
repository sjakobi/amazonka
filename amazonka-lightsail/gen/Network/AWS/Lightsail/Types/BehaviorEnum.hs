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
-- Module      : Network.AWS.Lightsail.Types.BehaviorEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.BehaviorEnum
  ( BehaviorEnum
      ( ..,
        BehaviorEnumCache,
        BehaviorEnumDontCache
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BehaviorEnum = BehaviorEnum'
  { fromBehaviorEnum ::
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

pattern BehaviorEnumCache :: BehaviorEnum
pattern BehaviorEnumCache = BehaviorEnum' "cache"

pattern BehaviorEnumDontCache :: BehaviorEnum
pattern BehaviorEnumDontCache = BehaviorEnum' "dont-cache"

{-# COMPLETE
  BehaviorEnumCache,
  BehaviorEnumDontCache,
  BehaviorEnum'
  #-}

instance Prelude.FromText BehaviorEnum where
  parser = BehaviorEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText BehaviorEnum where
  toText (BehaviorEnum' x) = x

instance Prelude.Hashable BehaviorEnum

instance Prelude.NFData BehaviorEnum

instance Prelude.ToByteString BehaviorEnum

instance Prelude.ToQuery BehaviorEnum

instance Prelude.ToHeader BehaviorEnum

instance Prelude.ToJSON BehaviorEnum where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BehaviorEnum where
  parseJSON = Prelude.parseJSONText "BehaviorEnum"
