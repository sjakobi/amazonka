{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265ParControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265ParControl
  ( H265ParControl
      ( ..,
        HInitializeFromSource,
        HSpecified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
data H265ParControl = H265ParControl' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HInitializeFromSource :: H265ParControl
pattern HInitializeFromSource = H265ParControl' "INITIALIZE_FROM_SOURCE"

pattern HSpecified :: H265ParControl
pattern HSpecified = H265ParControl' "SPECIFIED"

{-# COMPLETE
  HInitializeFromSource,
  HSpecified,
  H265ParControl'
  #-}

instance FromText H265ParControl where
  parser = (H265ParControl' . mk) <$> takeText

instance ToText H265ParControl where
  toText (H265ParControl' ci) = original ci

instance Hashable H265ParControl

instance NFData H265ParControl

instance ToByteString H265ParControl

instance ToQuery H265ParControl

instance ToHeader H265ParControl

instance ToJSON H265ParControl where
  toJSON = toJSONText

instance FromJSON H265ParControl where
  parseJSON = parseJSONText "H265ParControl"
