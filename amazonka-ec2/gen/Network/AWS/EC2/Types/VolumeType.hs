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
-- Module      : Network.AWS.EC2.Types.VolumeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeType
  ( VolumeType
      ( ..,
        VolumeTypeGP2,
        VolumeTypeGP3,
        VolumeTypeIO1,
        VolumeTypeIO2,
        VolumeTypeSC1,
        VolumeTypeST1,
        VolumeTypeStandard
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VolumeType = VolumeType'
  { fromVolumeType ::
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

pattern VolumeTypeGP2 :: VolumeType
pattern VolumeTypeGP2 = VolumeType' "gp2"

pattern VolumeTypeGP3 :: VolumeType
pattern VolumeTypeGP3 = VolumeType' "gp3"

pattern VolumeTypeIO1 :: VolumeType
pattern VolumeTypeIO1 = VolumeType' "io1"

pattern VolumeTypeIO2 :: VolumeType
pattern VolumeTypeIO2 = VolumeType' "io2"

pattern VolumeTypeSC1 :: VolumeType
pattern VolumeTypeSC1 = VolumeType' "sc1"

pattern VolumeTypeST1 :: VolumeType
pattern VolumeTypeST1 = VolumeType' "st1"

pattern VolumeTypeStandard :: VolumeType
pattern VolumeTypeStandard = VolumeType' "standard"

{-# COMPLETE
  VolumeTypeGP2,
  VolumeTypeGP3,
  VolumeTypeIO1,
  VolumeTypeIO2,
  VolumeTypeSC1,
  VolumeTypeST1,
  VolumeTypeStandard,
  VolumeType'
  #-}

instance Prelude.FromText VolumeType where
  parser = VolumeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText VolumeType where
  toText (VolumeType' x) = x

instance Prelude.Hashable VolumeType

instance Prelude.NFData VolumeType

instance Prelude.ToByteString VolumeType

instance Prelude.ToQuery VolumeType

instance Prelude.ToHeader VolumeType

instance Prelude.FromXML VolumeType where
  parseXML = Prelude.parseXMLText "VolumeType"
