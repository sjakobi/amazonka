{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mp4CslgAtom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mp4CslgAtom
  ( Mp4CslgAtom
      ( ..,
        MCAExclude,
        MCAInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
data Mp4CslgAtom = Mp4CslgAtom' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MCAExclude :: Mp4CslgAtom
pattern MCAExclude = Mp4CslgAtom' "EXCLUDE"

pattern MCAInclude :: Mp4CslgAtom
pattern MCAInclude = Mp4CslgAtom' "INCLUDE"

{-# COMPLETE
  MCAExclude,
  MCAInclude,
  Mp4CslgAtom'
  #-}

instance FromText Mp4CslgAtom where
  parser = (Mp4CslgAtom' . mk) <$> takeText

instance ToText Mp4CslgAtom where
  toText (Mp4CslgAtom' ci) = original ci

instance Hashable Mp4CslgAtom

instance NFData Mp4CslgAtom

instance ToByteString Mp4CslgAtom

instance ToQuery Mp4CslgAtom

instance ToHeader Mp4CslgAtom

instance ToJSON Mp4CslgAtom where
  toJSON = toJSONText

instance FromJSON Mp4CslgAtom where
  parseJSON = parseJSONText "Mp4CslgAtom"
