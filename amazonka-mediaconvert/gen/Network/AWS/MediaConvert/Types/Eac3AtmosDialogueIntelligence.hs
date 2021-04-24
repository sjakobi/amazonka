{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosDialogueIntelligence
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosDialogueIntelligence
  ( Eac3AtmosDialogueIntelligence
      ( ..,
        EADIDisabled,
        EADIEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue analysis.
data Eac3AtmosDialogueIntelligence
  = Eac3AtmosDialogueIntelligence'
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

pattern EADIDisabled :: Eac3AtmosDialogueIntelligence
pattern EADIDisabled = Eac3AtmosDialogueIntelligence' "DISABLED"

pattern EADIEnabled :: Eac3AtmosDialogueIntelligence
pattern EADIEnabled = Eac3AtmosDialogueIntelligence' "ENABLED"

{-# COMPLETE
  EADIDisabled,
  EADIEnabled,
  Eac3AtmosDialogueIntelligence'
  #-}

instance FromText Eac3AtmosDialogueIntelligence where
  parser = (Eac3AtmosDialogueIntelligence' . mk) <$> takeText

instance ToText Eac3AtmosDialogueIntelligence where
  toText (Eac3AtmosDialogueIntelligence' ci) = original ci

instance Hashable Eac3AtmosDialogueIntelligence

instance NFData Eac3AtmosDialogueIntelligence

instance ToByteString Eac3AtmosDialogueIntelligence

instance ToQuery Eac3AtmosDialogueIntelligence

instance ToHeader Eac3AtmosDialogueIntelligence

instance ToJSON Eac3AtmosDialogueIntelligence where
  toJSON = toJSONText

instance FromJSON Eac3AtmosDialogueIntelligence where
  parseJSON = parseJSONText "Eac3AtmosDialogueIntelligence"
