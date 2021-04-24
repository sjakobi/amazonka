{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Eac3StereoDownmix
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3StereoDownmix
  ( Eac3StereoDownmix
      ( ..,
        DPL2,
        LoRo,
        LtRt,
        NotIndicated
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Eac3 Stereo Downmix
data Eac3StereoDownmix = Eac3StereoDownmix' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DPL2 :: Eac3StereoDownmix
pattern DPL2 = Eac3StereoDownmix' "DPL2"

pattern LoRo :: Eac3StereoDownmix
pattern LoRo = Eac3StereoDownmix' "LO_RO"

pattern LtRt :: Eac3StereoDownmix
pattern LtRt = Eac3StereoDownmix' "LT_RT"

pattern NotIndicated :: Eac3StereoDownmix
pattern NotIndicated = Eac3StereoDownmix' "NOT_INDICATED"

{-# COMPLETE
  DPL2,
  LoRo,
  LtRt,
  NotIndicated,
  Eac3StereoDownmix'
  #-}

instance FromText Eac3StereoDownmix where
  parser = (Eac3StereoDownmix' . mk) <$> takeText

instance ToText Eac3StereoDownmix where
  toText (Eac3StereoDownmix' ci) = original ci

instance Hashable Eac3StereoDownmix

instance NFData Eac3StereoDownmix

instance ToByteString Eac3StereoDownmix

instance ToQuery Eac3StereoDownmix

instance ToHeader Eac3StereoDownmix

instance ToJSON Eac3StereoDownmix where
  toJSON = toJSONText

instance FromJSON Eac3StereoDownmix where
  parseJSON = parseJSONText "Eac3StereoDownmix"
