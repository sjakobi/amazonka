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
-- Module      : Network.AWS.IoT.Types.DynamicGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DynamicGroupStatus
  ( DynamicGroupStatus
      ( ..,
        DynamicGroupStatusACTIVE,
        DynamicGroupStatusBUILDING,
        DynamicGroupStatusREBUILDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DynamicGroupStatus = DynamicGroupStatus'
  { fromDynamicGroupStatus ::
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

pattern DynamicGroupStatusACTIVE :: DynamicGroupStatus
pattern DynamicGroupStatusACTIVE = DynamicGroupStatus' "ACTIVE"

pattern DynamicGroupStatusBUILDING :: DynamicGroupStatus
pattern DynamicGroupStatusBUILDING = DynamicGroupStatus' "BUILDING"

pattern DynamicGroupStatusREBUILDING :: DynamicGroupStatus
pattern DynamicGroupStatusREBUILDING = DynamicGroupStatus' "REBUILDING"

{-# COMPLETE
  DynamicGroupStatusACTIVE,
  DynamicGroupStatusBUILDING,
  DynamicGroupStatusREBUILDING,
  DynamicGroupStatus'
  #-}

instance Prelude.FromText DynamicGroupStatus where
  parser = DynamicGroupStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DynamicGroupStatus where
  toText (DynamicGroupStatus' x) = x

instance Prelude.Hashable DynamicGroupStatus

instance Prelude.NFData DynamicGroupStatus

instance Prelude.ToByteString DynamicGroupStatus

instance Prelude.ToQuery DynamicGroupStatus

instance Prelude.ToHeader DynamicGroupStatus

instance Prelude.FromJSON DynamicGroupStatus where
  parseJSON = Prelude.parseJSONText "DynamicGroupStatus"
