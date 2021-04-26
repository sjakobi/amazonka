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
-- Module      : Network.AWS.EC2.Types.DiskImageFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DiskImageFormat
  ( DiskImageFormat
      ( ..,
        DiskImageFormatRAW,
        DiskImageFormatVHD,
        DiskImageFormatVMDK
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DiskImageFormat = DiskImageFormat'
  { fromDiskImageFormat ::
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

pattern DiskImageFormatRAW :: DiskImageFormat
pattern DiskImageFormatRAW = DiskImageFormat' "RAW"

pattern DiskImageFormatVHD :: DiskImageFormat
pattern DiskImageFormatVHD = DiskImageFormat' "VHD"

pattern DiskImageFormatVMDK :: DiskImageFormat
pattern DiskImageFormatVMDK = DiskImageFormat' "VMDK"

{-# COMPLETE
  DiskImageFormatRAW,
  DiskImageFormatVHD,
  DiskImageFormatVMDK,
  DiskImageFormat'
  #-}

instance Prelude.FromText DiskImageFormat where
  parser = DiskImageFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText DiskImageFormat where
  toText (DiskImageFormat' x) = x

instance Prelude.Hashable DiskImageFormat

instance Prelude.NFData DiskImageFormat

instance Prelude.ToByteString DiskImageFormat

instance Prelude.ToQuery DiskImageFormat

instance Prelude.ToHeader DiskImageFormat

instance Prelude.FromXML DiskImageFormat where
  parseXML = Prelude.parseXMLText "DiskImageFormat"
