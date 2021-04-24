{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.TeletextPageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.TeletextPageType
  ( TeletextPageType
      ( ..,
        PageTypeAddlInfo,
        PageTypeHearingImpairedSubtitle,
        PageTypeInitial,
        PageTypeProgramSchedule,
        PageTypeSubtitle
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | A page type as defined in the standard ETSI EN 300 468, Table 94
data TeletextPageType = TeletextPageType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PageTypeAddlInfo :: TeletextPageType
pattern PageTypeAddlInfo = TeletextPageType' "PAGE_TYPE_ADDL_INFO"

pattern PageTypeHearingImpairedSubtitle :: TeletextPageType
pattern PageTypeHearingImpairedSubtitle = TeletextPageType' "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE"

pattern PageTypeInitial :: TeletextPageType
pattern PageTypeInitial = TeletextPageType' "PAGE_TYPE_INITIAL"

pattern PageTypeProgramSchedule :: TeletextPageType
pattern PageTypeProgramSchedule = TeletextPageType' "PAGE_TYPE_PROGRAM_SCHEDULE"

pattern PageTypeSubtitle :: TeletextPageType
pattern PageTypeSubtitle = TeletextPageType' "PAGE_TYPE_SUBTITLE"

{-# COMPLETE
  PageTypeAddlInfo,
  PageTypeHearingImpairedSubtitle,
  PageTypeInitial,
  PageTypeProgramSchedule,
  PageTypeSubtitle,
  TeletextPageType'
  #-}

instance FromText TeletextPageType where
  parser = (TeletextPageType' . mk) <$> takeText

instance ToText TeletextPageType where
  toText (TeletextPageType' ci) = original ci

instance Hashable TeletextPageType

instance NFData TeletextPageType

instance ToByteString TeletextPageType

instance ToQuery TeletextPageType

instance ToHeader TeletextPageType

instance ToJSON TeletextPageType where
  toJSON = toJSONText

instance FromJSON TeletextPageType where
  parseJSON = parseJSONText "TeletextPageType"
