{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Eac3AttenuationControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3AttenuationControl
  ( Eac3AttenuationControl
      ( ..,
        EACAttenuate3DB,
        EACNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Eac3 Attenuation Control
data Eac3AttenuationControl
  = Eac3AttenuationControl'
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

pattern EACAttenuate3DB :: Eac3AttenuationControl
pattern EACAttenuate3DB = Eac3AttenuationControl' "ATTENUATE_3_DB"

pattern EACNone :: Eac3AttenuationControl
pattern EACNone = Eac3AttenuationControl' "NONE"

{-# COMPLETE
  EACAttenuate3DB,
  EACNone,
  Eac3AttenuationControl'
  #-}

instance FromText Eac3AttenuationControl where
  parser = (Eac3AttenuationControl' . mk) <$> takeText

instance ToText Eac3AttenuationControl where
  toText (Eac3AttenuationControl' ci) = original ci

instance Hashable Eac3AttenuationControl

instance NFData Eac3AttenuationControl

instance ToByteString Eac3AttenuationControl

instance ToQuery Eac3AttenuationControl

instance ToHeader Eac3AttenuationControl

instance ToJSON Eac3AttenuationControl where
  toJSON = toJSONText

instance FromJSON Eac3AttenuationControl where
  parseJSON = parseJSONText "Eac3AttenuationControl"
