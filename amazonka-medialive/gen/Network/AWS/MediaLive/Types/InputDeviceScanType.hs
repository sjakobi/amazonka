{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceScanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceScanType
  ( InputDeviceScanType
      ( ..,
        IDSTInterlaced,
        IDSTProgressive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The scan type of the video source.
data InputDeviceScanType
  = InputDeviceScanType'
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

pattern IDSTInterlaced :: InputDeviceScanType
pattern IDSTInterlaced = InputDeviceScanType' "INTERLACED"

pattern IDSTProgressive :: InputDeviceScanType
pattern IDSTProgressive = InputDeviceScanType' "PROGRESSIVE"

{-# COMPLETE
  IDSTInterlaced,
  IDSTProgressive,
  InputDeviceScanType'
  #-}

instance FromText InputDeviceScanType where
  parser = (InputDeviceScanType' . mk) <$> takeText

instance ToText InputDeviceScanType where
  toText (InputDeviceScanType' ci) = original ci

instance Hashable InputDeviceScanType

instance NFData InputDeviceScanType

instance ToByteString InputDeviceScanType

instance ToQuery InputDeviceScanType

instance ToHeader InputDeviceScanType

instance FromJSON InputDeviceScanType where
  parseJSON = parseJSONText "InputDeviceScanType"
