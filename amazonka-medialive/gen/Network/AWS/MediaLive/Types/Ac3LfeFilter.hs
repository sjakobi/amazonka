{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Ac3LfeFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Ac3LfeFilter
  ( Ac3LfeFilter
      ( ..,
        ALFDisabled,
        ALFEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ac3 Lfe Filter
data Ac3LfeFilter = Ac3LfeFilter' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ALFDisabled :: Ac3LfeFilter
pattern ALFDisabled = Ac3LfeFilter' "DISABLED"

pattern ALFEnabled :: Ac3LfeFilter
pattern ALFEnabled = Ac3LfeFilter' "ENABLED"

{-# COMPLETE
  ALFDisabled,
  ALFEnabled,
  Ac3LfeFilter'
  #-}

instance FromText Ac3LfeFilter where
  parser = (Ac3LfeFilter' . mk) <$> takeText

instance ToText Ac3LfeFilter where
  toText (Ac3LfeFilter' ci) = original ci

instance Hashable Ac3LfeFilter

instance NFData Ac3LfeFilter

instance ToByteString Ac3LfeFilter

instance ToQuery Ac3LfeFilter

instance ToHeader Ac3LfeFilter

instance ToJSON Ac3LfeFilter where
  toJSON = toJSONText

instance FromJSON Ac3LfeFilter where
  parseJSON = parseJSONText "Ac3LfeFilter"
