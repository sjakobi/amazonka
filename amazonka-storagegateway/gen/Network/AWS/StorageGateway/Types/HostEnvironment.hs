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
-- Module      : Network.AWS.StorageGateway.Types.HostEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.HostEnvironment
  ( HostEnvironment
      ( ..,
        HostEnvironmentEC2,
        HostEnvironmentHYPERV,
        HostEnvironmentKVM,
        HostEnvironmentOTHER,
        HostEnvironmentVMWARE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HostEnvironment = HostEnvironment'
  { fromHostEnvironment ::
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

pattern HostEnvironmentEC2 :: HostEnvironment
pattern HostEnvironmentEC2 = HostEnvironment' "EC2"

pattern HostEnvironmentHYPERV :: HostEnvironment
pattern HostEnvironmentHYPERV = HostEnvironment' "HYPER-V"

pattern HostEnvironmentKVM :: HostEnvironment
pattern HostEnvironmentKVM = HostEnvironment' "KVM"

pattern HostEnvironmentOTHER :: HostEnvironment
pattern HostEnvironmentOTHER = HostEnvironment' "OTHER"

pattern HostEnvironmentVMWARE :: HostEnvironment
pattern HostEnvironmentVMWARE = HostEnvironment' "VMWARE"

{-# COMPLETE
  HostEnvironmentEC2,
  HostEnvironmentHYPERV,
  HostEnvironmentKVM,
  HostEnvironmentOTHER,
  HostEnvironmentVMWARE,
  HostEnvironment'
  #-}

instance Prelude.FromText HostEnvironment where
  parser = HostEnvironment' Prelude.<$> Prelude.takeText

instance Prelude.ToText HostEnvironment where
  toText (HostEnvironment' x) = x

instance Prelude.Hashable HostEnvironment

instance Prelude.NFData HostEnvironment

instance Prelude.ToByteString HostEnvironment

instance Prelude.ToQuery HostEnvironment

instance Prelude.ToHeader HostEnvironment

instance Prelude.FromJSON HostEnvironment where
  parseJSON = Prelude.parseJSONText "HostEnvironment"
