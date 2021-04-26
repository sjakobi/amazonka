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
-- Module      : Network.AWS.EC2.Types.DiskType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DiskType
  ( DiskType
      ( ..,
        DiskTypeHdd,
        DiskTypeSsd
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DiskType = DiskType'
  { fromDiskType ::
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

pattern DiskTypeHdd :: DiskType
pattern DiskTypeHdd = DiskType' "hdd"

pattern DiskTypeSsd :: DiskType
pattern DiskTypeSsd = DiskType' "ssd"

{-# COMPLETE
  DiskTypeHdd,
  DiskTypeSsd,
  DiskType'
  #-}

instance Prelude.FromText DiskType where
  parser = DiskType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DiskType where
  toText (DiskType' x) = x

instance Prelude.Hashable DiskType

instance Prelude.NFData DiskType

instance Prelude.ToByteString DiskType

instance Prelude.ToQuery DiskType

instance Prelude.ToHeader DiskType

instance Prelude.FromXML DiskType where
  parseXML = Prelude.parseXMLText "DiskType"
