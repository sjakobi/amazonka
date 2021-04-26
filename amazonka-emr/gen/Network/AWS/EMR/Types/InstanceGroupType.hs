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
-- Module      : Network.AWS.EMR.Types.InstanceGroupType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceGroupType
  ( InstanceGroupType
      ( ..,
        InstanceGroupTypeCORE,
        InstanceGroupTypeMASTER,
        InstanceGroupTypeTASK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceGroupType = InstanceGroupType'
  { fromInstanceGroupType ::
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

pattern InstanceGroupTypeCORE :: InstanceGroupType
pattern InstanceGroupTypeCORE = InstanceGroupType' "CORE"

pattern InstanceGroupTypeMASTER :: InstanceGroupType
pattern InstanceGroupTypeMASTER = InstanceGroupType' "MASTER"

pattern InstanceGroupTypeTASK :: InstanceGroupType
pattern InstanceGroupTypeTASK = InstanceGroupType' "TASK"

{-# COMPLETE
  InstanceGroupTypeCORE,
  InstanceGroupTypeMASTER,
  InstanceGroupTypeTASK,
  InstanceGroupType'
  #-}

instance Prelude.FromText InstanceGroupType where
  parser = InstanceGroupType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceGroupType where
  toText (InstanceGroupType' x) = x

instance Prelude.Hashable InstanceGroupType

instance Prelude.NFData InstanceGroupType

instance Prelude.ToByteString InstanceGroupType

instance Prelude.ToQuery InstanceGroupType

instance Prelude.ToHeader InstanceGroupType

instance Prelude.ToJSON InstanceGroupType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InstanceGroupType where
  parseJSON = Prelude.parseJSONText "InstanceGroupType"
