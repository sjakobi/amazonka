{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CaptionSourceType
  ( CaptionSourceType
      ( ..,
        CSTAncillary,
        CSTDvbSub,
        CSTEmbedded,
        CSTImsc,
        CSTNullSource,
        CSTSCTE20,
        CSTScc,
        CSTSmi,
        CSTSmpteTt,
        CSTSrt,
        CSTStl,
        CSTTeletext,
        CSTTtml
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format.
data CaptionSourceType = CaptionSourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSTAncillary :: CaptionSourceType
pattern CSTAncillary = CaptionSourceType' "ANCILLARY"

pattern CSTDvbSub :: CaptionSourceType
pattern CSTDvbSub = CaptionSourceType' "DVB_SUB"

pattern CSTEmbedded :: CaptionSourceType
pattern CSTEmbedded = CaptionSourceType' "EMBEDDED"

pattern CSTImsc :: CaptionSourceType
pattern CSTImsc = CaptionSourceType' "IMSC"

pattern CSTNullSource :: CaptionSourceType
pattern CSTNullSource = CaptionSourceType' "NULL_SOURCE"

pattern CSTSCTE20 :: CaptionSourceType
pattern CSTSCTE20 = CaptionSourceType' "SCTE20"

pattern CSTScc :: CaptionSourceType
pattern CSTScc = CaptionSourceType' "SCC"

pattern CSTSmi :: CaptionSourceType
pattern CSTSmi = CaptionSourceType' "SMI"

pattern CSTSmpteTt :: CaptionSourceType
pattern CSTSmpteTt = CaptionSourceType' "SMPTE_TT"

pattern CSTSrt :: CaptionSourceType
pattern CSTSrt = CaptionSourceType' "SRT"

pattern CSTStl :: CaptionSourceType
pattern CSTStl = CaptionSourceType' "STL"

pattern CSTTeletext :: CaptionSourceType
pattern CSTTeletext = CaptionSourceType' "TELETEXT"

pattern CSTTtml :: CaptionSourceType
pattern CSTTtml = CaptionSourceType' "TTML"

{-# COMPLETE
  CSTAncillary,
  CSTDvbSub,
  CSTEmbedded,
  CSTImsc,
  CSTNullSource,
  CSTSCTE20,
  CSTScc,
  CSTSmi,
  CSTSmpteTt,
  CSTSrt,
  CSTStl,
  CSTTeletext,
  CSTTtml,
  CaptionSourceType'
  #-}

instance FromText CaptionSourceType where
  parser = (CaptionSourceType' . mk) <$> takeText

instance ToText CaptionSourceType where
  toText (CaptionSourceType' ci) = original ci

instance Hashable CaptionSourceType

instance NFData CaptionSourceType

instance ToByteString CaptionSourceType

instance ToQuery CaptionSourceType

instance ToHeader CaptionSourceType

instance ToJSON CaptionSourceType where
  toJSON = toJSONText

instance FromJSON CaptionSourceType where
  parseJSON = parseJSONText "CaptionSourceType"
