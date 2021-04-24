{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3DcFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3DcFilter
  ( Eac3DcFilter
      ( ..,
        EDFDisabled,
        EDFEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Activates a DC highpass filter for all input channels.
data Eac3DcFilter = Eac3DcFilter' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EDFDisabled :: Eac3DcFilter
pattern EDFDisabled = Eac3DcFilter' "DISABLED"

pattern EDFEnabled :: Eac3DcFilter
pattern EDFEnabled = Eac3DcFilter' "ENABLED"

{-# COMPLETE
  EDFDisabled,
  EDFEnabled,
  Eac3DcFilter'
  #-}

instance FromText Eac3DcFilter where
  parser = (Eac3DcFilter' . mk) <$> takeText

instance ToText Eac3DcFilter where
  toText (Eac3DcFilter' ci) = original ci

instance Hashable Eac3DcFilter

instance NFData Eac3DcFilter

instance ToByteString Eac3DcFilter

instance ToQuery Eac3DcFilter

instance ToHeader Eac3DcFilter

instance ToJSON Eac3DcFilter where
  toJSON = toJSONText

instance FromJSON Eac3DcFilter where
  parseJSON = parseJSONText "Eac3DcFilter"
