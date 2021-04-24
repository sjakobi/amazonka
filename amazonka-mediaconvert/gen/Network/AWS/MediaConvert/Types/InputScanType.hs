{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.InputScanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.InputScanType
  ( InputScanType
      ( ..,
        ISTAuto,
        ISTPsf
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When you have a progressive segmented frame (PsF) input, use this setting to flag the input as PsF. MediaConvert doesn't automatically detect PsF. Therefore, flagging your input as PsF results in better preservation of video quality when you do deinterlacing and frame rate conversion. If you don't specify, the default value is Auto (AUTO). Auto is the correct setting for all inputs that are not PsF. Don't set this value to PsF when your input is interlaced. Doing so creates horizontal interlacing artifacts.
data InputScanType = InputScanType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISTAuto :: InputScanType
pattern ISTAuto = InputScanType' "AUTO"

pattern ISTPsf :: InputScanType
pattern ISTPsf = InputScanType' "PSF"

{-# COMPLETE
  ISTAuto,
  ISTPsf,
  InputScanType'
  #-}

instance FromText InputScanType where
  parser = (InputScanType' . mk) <$> takeText

instance ToText InputScanType where
  toText (InputScanType' ci) = original ci

instance Hashable InputScanType

instance NFData InputScanType

instance ToByteString InputScanType

instance ToQuery InputScanType

instance ToHeader InputScanType

instance ToJSON InputScanType where
  toJSON = toJSONText

instance FromJSON InputScanType where
  parseJSON = parseJSONText "InputScanType"
