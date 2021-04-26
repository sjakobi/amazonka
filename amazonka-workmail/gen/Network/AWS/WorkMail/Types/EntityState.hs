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
-- Module      : Network.AWS.WorkMail.Types.EntityState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.EntityState
  ( EntityState
      ( ..,
        EntityStateDELETED,
        EntityStateDISABLED,
        EntityStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EntityState = EntityState'
  { fromEntityState ::
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

pattern EntityStateDELETED :: EntityState
pattern EntityStateDELETED = EntityState' "DELETED"

pattern EntityStateDISABLED :: EntityState
pattern EntityStateDISABLED = EntityState' "DISABLED"

pattern EntityStateENABLED :: EntityState
pattern EntityStateENABLED = EntityState' "ENABLED"

{-# COMPLETE
  EntityStateDELETED,
  EntityStateDISABLED,
  EntityStateENABLED,
  EntityState'
  #-}

instance Prelude.FromText EntityState where
  parser = EntityState' Prelude.<$> Prelude.takeText

instance Prelude.ToText EntityState where
  toText (EntityState' x) = x

instance Prelude.Hashable EntityState

instance Prelude.NFData EntityState

instance Prelude.ToByteString EntityState

instance Prelude.ToQuery EntityState

instance Prelude.ToHeader EntityState

instance Prelude.FromJSON EntityState where
  parseJSON = Prelude.parseJSONText "EntityState"
