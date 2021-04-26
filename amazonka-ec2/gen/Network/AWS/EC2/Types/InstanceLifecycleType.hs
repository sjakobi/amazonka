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
-- Module      : Network.AWS.EC2.Types.InstanceLifecycleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceLifecycleType
  ( InstanceLifecycleType
      ( ..,
        InstanceLifecycleTypeScheduled,
        InstanceLifecycleTypeSpot
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype InstanceLifecycleType = InstanceLifecycleType'
  { fromInstanceLifecycleType ::
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

pattern InstanceLifecycleTypeScheduled :: InstanceLifecycleType
pattern InstanceLifecycleTypeScheduled = InstanceLifecycleType' "scheduled"

pattern InstanceLifecycleTypeSpot :: InstanceLifecycleType
pattern InstanceLifecycleTypeSpot = InstanceLifecycleType' "spot"

{-# COMPLETE
  InstanceLifecycleTypeScheduled,
  InstanceLifecycleTypeSpot,
  InstanceLifecycleType'
  #-}

instance Prelude.FromText InstanceLifecycleType where
  parser = InstanceLifecycleType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceLifecycleType where
  toText (InstanceLifecycleType' x) = x

instance Prelude.Hashable InstanceLifecycleType

instance Prelude.NFData InstanceLifecycleType

instance Prelude.ToByteString InstanceLifecycleType

instance Prelude.ToQuery InstanceLifecycleType

instance Prelude.ToHeader InstanceLifecycleType

instance Prelude.FromXML InstanceLifecycleType where
  parseXML = Prelude.parseXMLText "InstanceLifecycleType"
