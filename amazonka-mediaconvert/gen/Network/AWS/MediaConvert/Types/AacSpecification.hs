{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AacSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AacSpecification
  ( AacSpecification
      ( ..,
        MPEG2,
        MPEG4
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
data AacSpecification = AacSpecification' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MPEG2 :: AacSpecification
pattern MPEG2 = AacSpecification' "MPEG2"

pattern MPEG4 :: AacSpecification
pattern MPEG4 = AacSpecification' "MPEG4"

{-# COMPLETE
  MPEG2,
  MPEG4,
  AacSpecification'
  #-}

instance FromText AacSpecification where
  parser = (AacSpecification' . mk) <$> takeText

instance ToText AacSpecification where
  toText (AacSpecification' ci) = original ci

instance Hashable AacSpecification

instance NFData AacSpecification

instance ToByteString AacSpecification

instance ToQuery AacSpecification

instance ToHeader AacSpecification

instance ToJSON AacSpecification where
  toJSON = toJSONText

instance FromJSON AacSpecification where
  parseJSON = parseJSONText "AacSpecification"
