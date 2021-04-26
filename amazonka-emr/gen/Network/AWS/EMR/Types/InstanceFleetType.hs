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
-- Module      : Network.AWS.EMR.Types.InstanceFleetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceFleetType
  ( InstanceFleetType
      ( ..,
        InstanceFleetTypeCORE,
        InstanceFleetTypeMASTER,
        InstanceFleetTypeTASK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceFleetType = InstanceFleetType'
  { fromInstanceFleetType ::
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

pattern InstanceFleetTypeCORE :: InstanceFleetType
pattern InstanceFleetTypeCORE = InstanceFleetType' "CORE"

pattern InstanceFleetTypeMASTER :: InstanceFleetType
pattern InstanceFleetTypeMASTER = InstanceFleetType' "MASTER"

pattern InstanceFleetTypeTASK :: InstanceFleetType
pattern InstanceFleetTypeTASK = InstanceFleetType' "TASK"

{-# COMPLETE
  InstanceFleetTypeCORE,
  InstanceFleetTypeMASTER,
  InstanceFleetTypeTASK,
  InstanceFleetType'
  #-}

instance Prelude.FromText InstanceFleetType where
  parser = InstanceFleetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceFleetType where
  toText (InstanceFleetType' x) = x

instance Prelude.Hashable InstanceFleetType

instance Prelude.NFData InstanceFleetType

instance Prelude.ToByteString InstanceFleetType

instance Prelude.ToQuery InstanceFleetType

instance Prelude.ToHeader InstanceFleetType

instance Prelude.ToJSON InstanceFleetType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InstanceFleetType where
  parseJSON = Prelude.parseJSONText "InstanceFleetType"
