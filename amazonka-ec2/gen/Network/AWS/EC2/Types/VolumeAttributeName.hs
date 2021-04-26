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
-- Module      : Network.AWS.EC2.Types.VolumeAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeAttributeName
  ( VolumeAttributeName
      ( ..,
        VolumeAttributeNameAutoEnableIO,
        VolumeAttributeNameProductCodes
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VolumeAttributeName = VolumeAttributeName'
  { fromVolumeAttributeName ::
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

pattern VolumeAttributeNameAutoEnableIO :: VolumeAttributeName
pattern VolumeAttributeNameAutoEnableIO = VolumeAttributeName' "autoEnableIO"

pattern VolumeAttributeNameProductCodes :: VolumeAttributeName
pattern VolumeAttributeNameProductCodes = VolumeAttributeName' "productCodes"

{-# COMPLETE
  VolumeAttributeNameAutoEnableIO,
  VolumeAttributeNameProductCodes,
  VolumeAttributeName'
  #-}

instance Prelude.FromText VolumeAttributeName where
  parser = VolumeAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText VolumeAttributeName where
  toText (VolumeAttributeName' x) = x

instance Prelude.Hashable VolumeAttributeName

instance Prelude.NFData VolumeAttributeName

instance Prelude.ToByteString VolumeAttributeName

instance Prelude.ToQuery VolumeAttributeName

instance Prelude.ToHeader VolumeAttributeName
