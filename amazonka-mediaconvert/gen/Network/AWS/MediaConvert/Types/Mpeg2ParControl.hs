{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2ParControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2ParControl
  ( Mpeg2ParControl
      ( ..,
        MPCInitializeFromSource,
        MPCSpecified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
data Mpeg2ParControl = Mpeg2ParControl' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MPCInitializeFromSource :: Mpeg2ParControl
pattern MPCInitializeFromSource = Mpeg2ParControl' "INITIALIZE_FROM_SOURCE"

pattern MPCSpecified :: Mpeg2ParControl
pattern MPCSpecified = Mpeg2ParControl' "SPECIFIED"

{-# COMPLETE
  MPCInitializeFromSource,
  MPCSpecified,
  Mpeg2ParControl'
  #-}

instance FromText Mpeg2ParControl where
  parser = (Mpeg2ParControl' . mk) <$> takeText

instance ToText Mpeg2ParControl where
  toText (Mpeg2ParControl' ci) = original ci

instance Hashable Mpeg2ParControl

instance NFData Mpeg2ParControl

instance ToByteString Mpeg2ParControl

instance ToQuery Mpeg2ParControl

instance ToHeader Mpeg2ParControl

instance ToJSON Mpeg2ParControl where
  toJSON = toJSONText

instance FromJSON Mpeg2ParControl where
  parseJSON = parseJSONText "Mpeg2ParControl"
