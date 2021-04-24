{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.TermInYears
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.TermInYears
  ( TermInYears
      ( ..,
        OneYear,
        ThreeYears
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TermInYears = TermInYears' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OneYear :: TermInYears
pattern OneYear = TermInYears' "ONE_YEAR"

pattern ThreeYears :: TermInYears
pattern ThreeYears = TermInYears' "THREE_YEARS"

{-# COMPLETE
  OneYear,
  ThreeYears,
  TermInYears'
  #-}

instance FromText TermInYears where
  parser = (TermInYears' . mk) <$> takeText

instance ToText TermInYears where
  toText (TermInYears' ci) = original ci

instance Hashable TermInYears

instance NFData TermInYears

instance ToByteString TermInYears

instance ToQuery TermInYears

instance ToHeader TermInYears

instance ToJSON TermInYears where
  toJSON = toJSONText

instance FromJSON TermInYears where
  parseJSON = parseJSONText "TermInYears"
