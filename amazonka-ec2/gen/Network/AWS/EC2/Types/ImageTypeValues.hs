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
-- Module      : Network.AWS.EC2.Types.ImageTypeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImageTypeValues
  ( ImageTypeValues
      ( ..,
        ImageTypeValuesKernel,
        ImageTypeValuesMachine,
        ImageTypeValuesRamdisk
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ImageTypeValues = ImageTypeValues'
  { fromImageTypeValues ::
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

pattern ImageTypeValuesKernel :: ImageTypeValues
pattern ImageTypeValuesKernel = ImageTypeValues' "kernel"

pattern ImageTypeValuesMachine :: ImageTypeValues
pattern ImageTypeValuesMachine = ImageTypeValues' "machine"

pattern ImageTypeValuesRamdisk :: ImageTypeValues
pattern ImageTypeValuesRamdisk = ImageTypeValues' "ramdisk"

{-# COMPLETE
  ImageTypeValuesKernel,
  ImageTypeValuesMachine,
  ImageTypeValuesRamdisk,
  ImageTypeValues'
  #-}

instance Prelude.FromText ImageTypeValues where
  parser = ImageTypeValues' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageTypeValues where
  toText (ImageTypeValues' x) = x

instance Prelude.Hashable ImageTypeValues

instance Prelude.NFData ImageTypeValues

instance Prelude.ToByteString ImageTypeValues

instance Prelude.ToQuery ImageTypeValues

instance Prelude.ToHeader ImageTypeValues

instance Prelude.FromXML ImageTypeValues where
  parseXML = Prelude.parseXMLText "ImageTypeValues"
