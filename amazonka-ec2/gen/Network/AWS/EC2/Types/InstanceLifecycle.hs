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
-- Module      : Network.AWS.EC2.Types.InstanceLifecycle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceLifecycle
  ( InstanceLifecycle
      ( ..,
        InstanceLifecycleOnDemand,
        InstanceLifecycleSpot
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype InstanceLifecycle = InstanceLifecycle'
  { fromInstanceLifecycle ::
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

pattern InstanceLifecycleOnDemand :: InstanceLifecycle
pattern InstanceLifecycleOnDemand = InstanceLifecycle' "on-demand"

pattern InstanceLifecycleSpot :: InstanceLifecycle
pattern InstanceLifecycleSpot = InstanceLifecycle' "spot"

{-# COMPLETE
  InstanceLifecycleOnDemand,
  InstanceLifecycleSpot,
  InstanceLifecycle'
  #-}

instance Prelude.FromText InstanceLifecycle where
  parser = InstanceLifecycle' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceLifecycle where
  toText (InstanceLifecycle' x) = x

instance Prelude.Hashable InstanceLifecycle

instance Prelude.NFData InstanceLifecycle

instance Prelude.ToByteString InstanceLifecycle

instance Prelude.ToQuery InstanceLifecycle

instance Prelude.ToHeader InstanceLifecycle

instance Prelude.FromXML InstanceLifecycle where
  parseXML = Prelude.parseXMLText "InstanceLifecycle"
