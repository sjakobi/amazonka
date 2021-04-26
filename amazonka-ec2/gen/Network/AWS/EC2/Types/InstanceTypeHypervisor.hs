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
-- Module      : Network.AWS.EC2.Types.InstanceTypeHypervisor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceTypeHypervisor
  ( InstanceTypeHypervisor
      ( ..,
        InstanceTypeHypervisorNitro,
        InstanceTypeHypervisorXen
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype InstanceTypeHypervisor = InstanceTypeHypervisor'
  { fromInstanceTypeHypervisor ::
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

pattern InstanceTypeHypervisorNitro :: InstanceTypeHypervisor
pattern InstanceTypeHypervisorNitro = InstanceTypeHypervisor' "nitro"

pattern InstanceTypeHypervisorXen :: InstanceTypeHypervisor
pattern InstanceTypeHypervisorXen = InstanceTypeHypervisor' "xen"

{-# COMPLETE
  InstanceTypeHypervisorNitro,
  InstanceTypeHypervisorXen,
  InstanceTypeHypervisor'
  #-}

instance Prelude.FromText InstanceTypeHypervisor where
  parser = InstanceTypeHypervisor' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceTypeHypervisor where
  toText (InstanceTypeHypervisor' x) = x

instance Prelude.Hashable InstanceTypeHypervisor

instance Prelude.NFData InstanceTypeHypervisor

instance Prelude.ToByteString InstanceTypeHypervisor

instance Prelude.ToQuery InstanceTypeHypervisor

instance Prelude.ToHeader InstanceTypeHypervisor

instance Prelude.FromXML InstanceTypeHypervisor where
  parseXML = Prelude.parseXMLText "InstanceTypeHypervisor"
