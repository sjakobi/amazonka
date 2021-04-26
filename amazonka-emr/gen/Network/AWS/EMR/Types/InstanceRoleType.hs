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
-- Module      : Network.AWS.EMR.Types.InstanceRoleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceRoleType
  ( InstanceRoleType
      ( ..,
        InstanceRoleTypeCORE,
        InstanceRoleTypeMASTER,
        InstanceRoleTypeTASK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceRoleType = InstanceRoleType'
  { fromInstanceRoleType ::
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

pattern InstanceRoleTypeCORE :: InstanceRoleType
pattern InstanceRoleTypeCORE = InstanceRoleType' "CORE"

pattern InstanceRoleTypeMASTER :: InstanceRoleType
pattern InstanceRoleTypeMASTER = InstanceRoleType' "MASTER"

pattern InstanceRoleTypeTASK :: InstanceRoleType
pattern InstanceRoleTypeTASK = InstanceRoleType' "TASK"

{-# COMPLETE
  InstanceRoleTypeCORE,
  InstanceRoleTypeMASTER,
  InstanceRoleTypeTASK,
  InstanceRoleType'
  #-}

instance Prelude.FromText InstanceRoleType where
  parser = InstanceRoleType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceRoleType where
  toText (InstanceRoleType' x) = x

instance Prelude.Hashable InstanceRoleType

instance Prelude.NFData InstanceRoleType

instance Prelude.ToByteString InstanceRoleType

instance Prelude.ToQuery InstanceRoleType

instance Prelude.ToHeader InstanceRoleType

instance Prelude.ToJSON InstanceRoleType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InstanceRoleType where
  parseJSON = Prelude.parseJSONText "InstanceRoleType"
