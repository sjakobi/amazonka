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
-- Module      : Network.AWS.EC2.Types.EbsOptimizedSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EbsOptimizedSupport
  ( EbsOptimizedSupport
      ( ..,
        EbsOptimizedSupportDefault,
        EbsOptimizedSupportSupported,
        EbsOptimizedSupportUnsupported
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype EbsOptimizedSupport = EbsOptimizedSupport'
  { fromEbsOptimizedSupport ::
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

pattern EbsOptimizedSupportDefault :: EbsOptimizedSupport
pattern EbsOptimizedSupportDefault = EbsOptimizedSupport' "default"

pattern EbsOptimizedSupportSupported :: EbsOptimizedSupport
pattern EbsOptimizedSupportSupported = EbsOptimizedSupport' "supported"

pattern EbsOptimizedSupportUnsupported :: EbsOptimizedSupport
pattern EbsOptimizedSupportUnsupported = EbsOptimizedSupport' "unsupported"

{-# COMPLETE
  EbsOptimizedSupportDefault,
  EbsOptimizedSupportSupported,
  EbsOptimizedSupportUnsupported,
  EbsOptimizedSupport'
  #-}

instance Prelude.FromText EbsOptimizedSupport where
  parser = EbsOptimizedSupport' Prelude.<$> Prelude.takeText

instance Prelude.ToText EbsOptimizedSupport where
  toText (EbsOptimizedSupport' x) = x

instance Prelude.Hashable EbsOptimizedSupport

instance Prelude.NFData EbsOptimizedSupport

instance Prelude.ToByteString EbsOptimizedSupport

instance Prelude.ToQuery EbsOptimizedSupport

instance Prelude.ToHeader EbsOptimizedSupport

instance Prelude.FromXML EbsOptimizedSupport where
  parseXML = Prelude.parseXMLText "EbsOptimizedSupport"
