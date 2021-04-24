{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.InputDenoiseFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.InputDenoiseFilter
  ( InputDenoiseFilter
      ( ..,
        IDFDisabled,
        IDFEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs.
data InputDenoiseFilter
  = InputDenoiseFilter'
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

pattern IDFDisabled :: InputDenoiseFilter
pattern IDFDisabled = InputDenoiseFilter' "DISABLED"

pattern IDFEnabled :: InputDenoiseFilter
pattern IDFEnabled = InputDenoiseFilter' "ENABLED"

{-# COMPLETE
  IDFDisabled,
  IDFEnabled,
  InputDenoiseFilter'
  #-}

instance FromText InputDenoiseFilter where
  parser = (InputDenoiseFilter' . mk) <$> takeText

instance ToText InputDenoiseFilter where
  toText (InputDenoiseFilter' ci) = original ci

instance Hashable InputDenoiseFilter

instance NFData InputDenoiseFilter

instance ToByteString InputDenoiseFilter

instance ToQuery InputDenoiseFilter

instance ToHeader InputDenoiseFilter

instance ToJSON InputDenoiseFilter where
  toJSON = toJSONText

instance FromJSON InputDenoiseFilter where
  parseJSON = parseJSONText "InputDenoiseFilter"
