{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AncillaryTerminateCaptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AncillaryTerminateCaptions
  ( AncillaryTerminateCaptions
      ( ..,
        Disabled,
        EndOfInput
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting.
data AncillaryTerminateCaptions
  = AncillaryTerminateCaptions'
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

pattern Disabled :: AncillaryTerminateCaptions
pattern Disabled = AncillaryTerminateCaptions' "DISABLED"

pattern EndOfInput :: AncillaryTerminateCaptions
pattern EndOfInput = AncillaryTerminateCaptions' "END_OF_INPUT"

{-# COMPLETE
  Disabled,
  EndOfInput,
  AncillaryTerminateCaptions'
  #-}

instance FromText AncillaryTerminateCaptions where
  parser = (AncillaryTerminateCaptions' . mk) <$> takeText

instance ToText AncillaryTerminateCaptions where
  toText (AncillaryTerminateCaptions' ci) = original ci

instance Hashable AncillaryTerminateCaptions

instance NFData AncillaryTerminateCaptions

instance ToByteString AncillaryTerminateCaptions

instance ToQuery AncillaryTerminateCaptions

instance ToHeader AncillaryTerminateCaptions

instance ToJSON AncillaryTerminateCaptions where
  toJSON = toJSONText

instance FromJSON AncillaryTerminateCaptions where
  parseJSON = parseJSONText "AncillaryTerminateCaptions"
