{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresParControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresParControl
  ( ProresParControl
      ( ..,
        PPCInitializeFromSource,
        PPCSpecified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
data ProresParControl = ProresParControl' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PPCInitializeFromSource :: ProresParControl
pattern PPCInitializeFromSource = ProresParControl' "INITIALIZE_FROM_SOURCE"

pattern PPCSpecified :: ProresParControl
pattern PPCSpecified = ProresParControl' "SPECIFIED"

{-# COMPLETE
  PPCInitializeFromSource,
  PPCSpecified,
  ProresParControl'
  #-}

instance FromText ProresParControl where
  parser = (ProresParControl' . mk) <$> takeText

instance ToText ProresParControl where
  toText (ProresParControl' ci) = original ci

instance Hashable ProresParControl

instance NFData ProresParControl

instance ToByteString ProresParControl

instance ToQuery ProresParControl

instance ToHeader ProresParControl

instance ToJSON ProresParControl where
  toJSON = toJSONText

instance FromJSON ProresParControl where
  parseJSON = parseJSONText "ProresParControl"
