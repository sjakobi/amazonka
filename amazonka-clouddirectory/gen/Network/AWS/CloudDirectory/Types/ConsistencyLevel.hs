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
-- Module      : Network.AWS.CloudDirectory.Types.ConsistencyLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.ConsistencyLevel
  ( ConsistencyLevel
      ( ..,
        ConsistencyLevelEVENTUAL,
        ConsistencyLevelSERIALIZABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConsistencyLevel = ConsistencyLevel'
  { fromConsistencyLevel ::
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

pattern ConsistencyLevelEVENTUAL :: ConsistencyLevel
pattern ConsistencyLevelEVENTUAL = ConsistencyLevel' "EVENTUAL"

pattern ConsistencyLevelSERIALIZABLE :: ConsistencyLevel
pattern ConsistencyLevelSERIALIZABLE = ConsistencyLevel' "SERIALIZABLE"

{-# COMPLETE
  ConsistencyLevelEVENTUAL,
  ConsistencyLevelSERIALIZABLE,
  ConsistencyLevel'
  #-}

instance Prelude.FromText ConsistencyLevel where
  parser = ConsistencyLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConsistencyLevel where
  toText (ConsistencyLevel' x) = x

instance Prelude.Hashable ConsistencyLevel

instance Prelude.NFData ConsistencyLevel

instance Prelude.ToByteString ConsistencyLevel

instance Prelude.ToQuery ConsistencyLevel

instance Prelude.ToHeader ConsistencyLevel

instance Prelude.ToJSON ConsistencyLevel where
  toJSON = Prelude.toJSONText
