{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        VANAutoEnableIO,
        VANProductCodes
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VolumeAttributeName
  = VolumeAttributeName'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VANAutoEnableIO :: VolumeAttributeName
pattern VANAutoEnableIO = VolumeAttributeName' "autoEnableIO"

pattern VANProductCodes :: VolumeAttributeName
pattern VANProductCodes = VolumeAttributeName' "productCodes"

{-# COMPLETE
  VANAutoEnableIO,
  VANProductCodes,
  VolumeAttributeName'
  #-}

instance FromText VolumeAttributeName where
  parser = (VolumeAttributeName' . mk) <$> takeText

instance ToText VolumeAttributeName where
  toText (VolumeAttributeName' ci) = original ci

instance Hashable VolumeAttributeName

instance NFData VolumeAttributeName

instance ToByteString VolumeAttributeName

instance ToQuery VolumeAttributeName

instance ToHeader VolumeAttributeName
