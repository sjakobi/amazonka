{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MovCslgAtom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovCslgAtom
  ( MovCslgAtom
      ( ..,
        MExclude,
        MInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
data MovCslgAtom = MovCslgAtom' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MExclude :: MovCslgAtom
pattern MExclude = MovCslgAtom' "EXCLUDE"

pattern MInclude :: MovCslgAtom
pattern MInclude = MovCslgAtom' "INCLUDE"

{-# COMPLETE
  MExclude,
  MInclude,
  MovCslgAtom'
  #-}

instance FromText MovCslgAtom where
  parser = (MovCslgAtom' . mk) <$> takeText

instance ToText MovCslgAtom where
  toText (MovCslgAtom' ci) = original ci

instance Hashable MovCslgAtom

instance NFData MovCslgAtom

instance ToByteString MovCslgAtom

instance ToQuery MovCslgAtom

instance ToHeader MovCslgAtom

instance ToJSON MovCslgAtom where
  toJSON = toJSONText

instance FromJSON MovCslgAtom where
  parseJSON = parseJSONText "MovCslgAtom"
