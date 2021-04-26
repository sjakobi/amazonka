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
-- Module      : Network.AWS.SMS.Types.VmManagerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.VmManagerType
  ( VmManagerType
      ( ..,
        VmManagerTypeHYPERVMANAGER,
        VmManagerTypeSCVMM,
        VmManagerTypeVSPHERE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VmManagerType = VmManagerType'
  { fromVmManagerType ::
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

pattern VmManagerTypeHYPERVMANAGER :: VmManagerType
pattern VmManagerTypeHYPERVMANAGER = VmManagerType' "HYPERV-MANAGER"

pattern VmManagerTypeSCVMM :: VmManagerType
pattern VmManagerTypeSCVMM = VmManagerType' "SCVMM"

pattern VmManagerTypeVSPHERE :: VmManagerType
pattern VmManagerTypeVSPHERE = VmManagerType' "VSPHERE"

{-# COMPLETE
  VmManagerTypeHYPERVMANAGER,
  VmManagerTypeSCVMM,
  VmManagerTypeVSPHERE,
  VmManagerType'
  #-}

instance Prelude.FromText VmManagerType where
  parser = VmManagerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText VmManagerType where
  toText (VmManagerType' x) = x

instance Prelude.Hashable VmManagerType

instance Prelude.NFData VmManagerType

instance Prelude.ToByteString VmManagerType

instance Prelude.ToQuery VmManagerType

instance Prelude.ToHeader VmManagerType

instance Prelude.ToJSON VmManagerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VmManagerType where
  parseJSON = Prelude.parseJSONText "VmManagerType"
