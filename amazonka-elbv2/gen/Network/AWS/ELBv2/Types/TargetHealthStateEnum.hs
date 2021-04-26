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
-- Module      : Network.AWS.ELBv2.Types.TargetHealthStateEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.TargetHealthStateEnum
  ( TargetHealthStateEnum
      ( ..,
        TargetHealthStateEnumDraining,
        TargetHealthStateEnumHealthy,
        TargetHealthStateEnumInitial,
        TargetHealthStateEnumUnavailable,
        TargetHealthStateEnumUnhealthy,
        TargetHealthStateEnumUnused
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetHealthStateEnum = TargetHealthStateEnum'
  { fromTargetHealthStateEnum ::
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

pattern TargetHealthStateEnumDraining :: TargetHealthStateEnum
pattern TargetHealthStateEnumDraining = TargetHealthStateEnum' "draining"

pattern TargetHealthStateEnumHealthy :: TargetHealthStateEnum
pattern TargetHealthStateEnumHealthy = TargetHealthStateEnum' "healthy"

pattern TargetHealthStateEnumInitial :: TargetHealthStateEnum
pattern TargetHealthStateEnumInitial = TargetHealthStateEnum' "initial"

pattern TargetHealthStateEnumUnavailable :: TargetHealthStateEnum
pattern TargetHealthStateEnumUnavailable = TargetHealthStateEnum' "unavailable"

pattern TargetHealthStateEnumUnhealthy :: TargetHealthStateEnum
pattern TargetHealthStateEnumUnhealthy = TargetHealthStateEnum' "unhealthy"

pattern TargetHealthStateEnumUnused :: TargetHealthStateEnum
pattern TargetHealthStateEnumUnused = TargetHealthStateEnum' "unused"

{-# COMPLETE
  TargetHealthStateEnumDraining,
  TargetHealthStateEnumHealthy,
  TargetHealthStateEnumInitial,
  TargetHealthStateEnumUnavailable,
  TargetHealthStateEnumUnhealthy,
  TargetHealthStateEnumUnused,
  TargetHealthStateEnum'
  #-}

instance Prelude.FromText TargetHealthStateEnum where
  parser = TargetHealthStateEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetHealthStateEnum where
  toText (TargetHealthStateEnum' x) = x

instance Prelude.Hashable TargetHealthStateEnum

instance Prelude.NFData TargetHealthStateEnum

instance Prelude.ToByteString TargetHealthStateEnum

instance Prelude.ToQuery TargetHealthStateEnum

instance Prelude.ToHeader TargetHealthStateEnum

instance Prelude.FromXML TargetHealthStateEnum where
  parseXML = Prelude.parseXMLText "TargetHealthStateEnum"
