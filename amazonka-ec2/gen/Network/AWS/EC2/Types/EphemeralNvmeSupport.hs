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
-- Module      : Network.AWS.EC2.Types.EphemeralNvmeSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EphemeralNvmeSupport
  ( EphemeralNvmeSupport
      ( ..,
        EphemeralNvmeSupportRequired,
        EphemeralNvmeSupportSupported,
        EphemeralNvmeSupportUnsupported
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype EphemeralNvmeSupport = EphemeralNvmeSupport'
  { fromEphemeralNvmeSupport ::
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

pattern EphemeralNvmeSupportRequired :: EphemeralNvmeSupport
pattern EphemeralNvmeSupportRequired = EphemeralNvmeSupport' "required"

pattern EphemeralNvmeSupportSupported :: EphemeralNvmeSupport
pattern EphemeralNvmeSupportSupported = EphemeralNvmeSupport' "supported"

pattern EphemeralNvmeSupportUnsupported :: EphemeralNvmeSupport
pattern EphemeralNvmeSupportUnsupported = EphemeralNvmeSupport' "unsupported"

{-# COMPLETE
  EphemeralNvmeSupportRequired,
  EphemeralNvmeSupportSupported,
  EphemeralNvmeSupportUnsupported,
  EphemeralNvmeSupport'
  #-}

instance Prelude.FromText EphemeralNvmeSupport where
  parser = EphemeralNvmeSupport' Prelude.<$> Prelude.takeText

instance Prelude.ToText EphemeralNvmeSupport where
  toText (EphemeralNvmeSupport' x) = x

instance Prelude.Hashable EphemeralNvmeSupport

instance Prelude.NFData EphemeralNvmeSupport

instance Prelude.ToByteString EphemeralNvmeSupport

instance Prelude.ToQuery EphemeralNvmeSupport

instance Prelude.ToHeader EphemeralNvmeSupport

instance Prelude.FromXML EphemeralNvmeSupport where
  parseXML = Prelude.parseXMLText "EphemeralNvmeSupport"
