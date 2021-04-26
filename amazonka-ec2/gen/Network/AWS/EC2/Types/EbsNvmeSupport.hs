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
-- Module      : Network.AWS.EC2.Types.EbsNvmeSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EbsNvmeSupport
  ( EbsNvmeSupport
      ( ..,
        EbsNvmeSupportRequired,
        EbsNvmeSupportSupported,
        EbsNvmeSupportUnsupported
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype EbsNvmeSupport = EbsNvmeSupport'
  { fromEbsNvmeSupport ::
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

pattern EbsNvmeSupportRequired :: EbsNvmeSupport
pattern EbsNvmeSupportRequired = EbsNvmeSupport' "required"

pattern EbsNvmeSupportSupported :: EbsNvmeSupport
pattern EbsNvmeSupportSupported = EbsNvmeSupport' "supported"

pattern EbsNvmeSupportUnsupported :: EbsNvmeSupport
pattern EbsNvmeSupportUnsupported = EbsNvmeSupport' "unsupported"

{-# COMPLETE
  EbsNvmeSupportRequired,
  EbsNvmeSupportSupported,
  EbsNvmeSupportUnsupported,
  EbsNvmeSupport'
  #-}

instance Prelude.FromText EbsNvmeSupport where
  parser = EbsNvmeSupport' Prelude.<$> Prelude.takeText

instance Prelude.ToText EbsNvmeSupport where
  toText (EbsNvmeSupport' x) = x

instance Prelude.Hashable EbsNvmeSupport

instance Prelude.NFData EbsNvmeSupport

instance Prelude.ToByteString EbsNvmeSupport

instance Prelude.ToQuery EbsNvmeSupport

instance Prelude.ToHeader EbsNvmeSupport

instance Prelude.FromXML EbsNvmeSupport where
  parseXML = Prelude.parseXMLText "EbsNvmeSupport"
