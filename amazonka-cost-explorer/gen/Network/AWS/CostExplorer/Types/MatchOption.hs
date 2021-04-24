{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.MatchOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.MatchOption
  ( MatchOption
      ( ..,
        Absent,
        CaseInsensitive,
        CaseSensitive,
        Contains,
        EndsWith,
        Equals,
        StartsWith
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MatchOption = MatchOption' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Absent :: MatchOption
pattern Absent = MatchOption' "ABSENT"

pattern CaseInsensitive :: MatchOption
pattern CaseInsensitive = MatchOption' "CASE_INSENSITIVE"

pattern CaseSensitive :: MatchOption
pattern CaseSensitive = MatchOption' "CASE_SENSITIVE"

pattern Contains :: MatchOption
pattern Contains = MatchOption' "CONTAINS"

pattern EndsWith :: MatchOption
pattern EndsWith = MatchOption' "ENDS_WITH"

pattern Equals :: MatchOption
pattern Equals = MatchOption' "EQUALS"

pattern StartsWith :: MatchOption
pattern StartsWith = MatchOption' "STARTS_WITH"

{-# COMPLETE
  Absent,
  CaseInsensitive,
  CaseSensitive,
  Contains,
  EndsWith,
  Equals,
  StartsWith,
  MatchOption'
  #-}

instance FromText MatchOption where
  parser = (MatchOption' . mk) <$> takeText

instance ToText MatchOption where
  toText (MatchOption' ci) = original ci

instance Hashable MatchOption

instance NFData MatchOption

instance ToByteString MatchOption

instance ToQuery MatchOption

instance ToHeader MatchOption

instance ToJSON MatchOption where
  toJSON = toJSONText

instance FromJSON MatchOption where
  parseJSON = parseJSONText "MatchOption"
