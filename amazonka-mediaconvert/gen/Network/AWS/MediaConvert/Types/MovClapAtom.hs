{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MovClapAtom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovClapAtom
  ( MovClapAtom
      ( ..,
        MovExclude,
        MovInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When enabled, include 'clap' atom if appropriate for the video output settings.
data MovClapAtom = MovClapAtom' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MovExclude :: MovClapAtom
pattern MovExclude = MovClapAtom' "EXCLUDE"

pattern MovInclude :: MovClapAtom
pattern MovInclude = MovClapAtom' "INCLUDE"

{-# COMPLETE
  MovExclude,
  MovInclude,
  MovClapAtom'
  #-}

instance FromText MovClapAtom where
  parser = (MovClapAtom' . mk) <$> takeText

instance ToText MovClapAtom where
  toText (MovClapAtom' ci) = original ci

instance Hashable MovClapAtom

instance NFData MovClapAtom

instance ToByteString MovClapAtom

instance ToQuery MovClapAtom

instance ToHeader MovClapAtom

instance ToJSON MovClapAtom where
  toJSON = toJSONText

instance FromJSON MovClapAtom where
  parseJSON = parseJSONText "MovClapAtom"
