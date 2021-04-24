{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3LfeFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3LfeFilter
  ( Eac3LfeFilter
      ( ..,
        ELFDisabled,
        ELFEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
data Eac3LfeFilter = Eac3LfeFilter' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ELFDisabled :: Eac3LfeFilter
pattern ELFDisabled = Eac3LfeFilter' "DISABLED"

pattern ELFEnabled :: Eac3LfeFilter
pattern ELFEnabled = Eac3LfeFilter' "ENABLED"

{-# COMPLETE
  ELFDisabled,
  ELFEnabled,
  Eac3LfeFilter'
  #-}

instance FromText Eac3LfeFilter where
  parser = (Eac3LfeFilter' . mk) <$> takeText

instance ToText Eac3LfeFilter where
  toText (Eac3LfeFilter' ci) = original ci

instance Hashable Eac3LfeFilter

instance NFData Eac3LfeFilter

instance ToByteString Eac3LfeFilter

instance ToQuery Eac3LfeFilter

instance ToHeader Eac3LfeFilter

instance ToJSON Eac3LfeFilter where
  toJSON = toJSONText

instance FromJSON Eac3LfeFilter where
  parseJSON = parseJSONText "Eac3LfeFilter"
