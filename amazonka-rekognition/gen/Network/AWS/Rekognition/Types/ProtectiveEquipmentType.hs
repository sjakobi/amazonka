{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ProtectiveEquipmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ProtectiveEquipmentType
  ( ProtectiveEquipmentType
      ( ..,
        FaceCover,
        HandCover,
        HeadCover
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProtectiveEquipmentType
  = ProtectiveEquipmentType'
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

pattern FaceCover :: ProtectiveEquipmentType
pattern FaceCover = ProtectiveEquipmentType' "FACE_COVER"

pattern HandCover :: ProtectiveEquipmentType
pattern HandCover = ProtectiveEquipmentType' "HAND_COVER"

pattern HeadCover :: ProtectiveEquipmentType
pattern HeadCover = ProtectiveEquipmentType' "HEAD_COVER"

{-# COMPLETE
  FaceCover,
  HandCover,
  HeadCover,
  ProtectiveEquipmentType'
  #-}

instance FromText ProtectiveEquipmentType where
  parser = (ProtectiveEquipmentType' . mk) <$> takeText

instance ToText ProtectiveEquipmentType where
  toText (ProtectiveEquipmentType' ci) = original ci

instance Hashable ProtectiveEquipmentType

instance NFData ProtectiveEquipmentType

instance ToByteString ProtectiveEquipmentType

instance ToQuery ProtectiveEquipmentType

instance ToHeader ProtectiveEquipmentType

instance ToJSON ProtectiveEquipmentType where
  toJSON = toJSONText

instance FromJSON ProtectiveEquipmentType where
  parseJSON = parseJSONText "ProtectiveEquipmentType"
