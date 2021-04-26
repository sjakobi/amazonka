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
-- Module      : Network.AWS.EC2.Types.VolumeStatusName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeStatusName
  ( VolumeStatusName
      ( ..,
        VolumeStatusNameIoEnabled,
        VolumeStatusNameIoPerformance
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VolumeStatusName = VolumeStatusName'
  { fromVolumeStatusName ::
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

pattern VolumeStatusNameIoEnabled :: VolumeStatusName
pattern VolumeStatusNameIoEnabled = VolumeStatusName' "io-enabled"

pattern VolumeStatusNameIoPerformance :: VolumeStatusName
pattern VolumeStatusNameIoPerformance = VolumeStatusName' "io-performance"

{-# COMPLETE
  VolumeStatusNameIoEnabled,
  VolumeStatusNameIoPerformance,
  VolumeStatusName'
  #-}

instance Prelude.FromText VolumeStatusName where
  parser = VolumeStatusName' Prelude.<$> Prelude.takeText

instance Prelude.ToText VolumeStatusName where
  toText (VolumeStatusName' x) = x

instance Prelude.Hashable VolumeStatusName

instance Prelude.NFData VolumeStatusName

instance Prelude.ToByteString VolumeStatusName

instance Prelude.ToQuery VolumeStatusName

instance Prelude.ToHeader VolumeStatusName

instance Prelude.FromXML VolumeStatusName where
  parseXML = Prelude.parseXMLText "VolumeStatusName"
