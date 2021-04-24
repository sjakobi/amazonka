{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.BodyPart
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.BodyPart
  ( BodyPart
      ( ..,
        Face,
        Head,
        LeftHand,
        RightHand
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BodyPart = BodyPart' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Face :: BodyPart
pattern Face = BodyPart' "FACE"

pattern Head :: BodyPart
pattern Head = BodyPart' "HEAD"

pattern LeftHand :: BodyPart
pattern LeftHand = BodyPart' "LEFT_HAND"

pattern RightHand :: BodyPart
pattern RightHand = BodyPart' "RIGHT_HAND"

{-# COMPLETE
  Face,
  Head,
  LeftHand,
  RightHand,
  BodyPart'
  #-}

instance FromText BodyPart where
  parser = (BodyPart' . mk) <$> takeText

instance ToText BodyPart where
  toText (BodyPart' ci) = original ci

instance Hashable BodyPart

instance NFData BodyPart

instance ToByteString BodyPart

instance ToQuery BodyPart

instance ToHeader BodyPart

instance FromJSON BodyPart where
  parseJSON = parseJSONText "BodyPart"
