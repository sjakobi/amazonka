{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vp8ParControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp8ParControl
  ( Vp8ParControl
      ( ..,
        VPCInitializeFromSource,
        VPCSpecified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
data Vp8ParControl = Vp8ParControl' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VPCInitializeFromSource :: Vp8ParControl
pattern VPCInitializeFromSource = Vp8ParControl' "INITIALIZE_FROM_SOURCE"

pattern VPCSpecified :: Vp8ParControl
pattern VPCSpecified = Vp8ParControl' "SPECIFIED"

{-# COMPLETE
  VPCInitializeFromSource,
  VPCSpecified,
  Vp8ParControl'
  #-}

instance FromText Vp8ParControl where
  parser = (Vp8ParControl' . mk) <$> takeText

instance ToText Vp8ParControl where
  toText (Vp8ParControl' ci) = original ci

instance Hashable Vp8ParControl

instance NFData Vp8ParControl

instance ToByteString Vp8ParControl

instance ToQuery Vp8ParControl

instance ToHeader Vp8ParControl

instance ToJSON Vp8ParControl where
  toJSON = toJSONText

instance FromJSON Vp8ParControl where
  parseJSON = parseJSONText "Vp8ParControl"
