{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.SuggesterFuzzyMatching
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.SuggesterFuzzyMatching
  ( SuggesterFuzzyMatching
      ( ..,
        SuggesterFuzzyMatchingHigh,
        SuggesterFuzzyMatchingLow,
        SuggesterFuzzyMatchingNone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SuggesterFuzzyMatching = SuggesterFuzzyMatching'
  { fromSuggesterFuzzyMatching ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SuggesterFuzzyMatchingHigh :: SuggesterFuzzyMatching
pattern SuggesterFuzzyMatchingHigh = SuggesterFuzzyMatching' "high"

pattern SuggesterFuzzyMatchingLow :: SuggesterFuzzyMatching
pattern SuggesterFuzzyMatchingLow = SuggesterFuzzyMatching' "low"

pattern SuggesterFuzzyMatchingNone :: SuggesterFuzzyMatching
pattern SuggesterFuzzyMatchingNone = SuggesterFuzzyMatching' "none"

{-# COMPLETE
  SuggesterFuzzyMatchingHigh,
  SuggesterFuzzyMatchingLow,
  SuggesterFuzzyMatchingNone,
  SuggesterFuzzyMatching'
  #-}

instance Prelude.FromText SuggesterFuzzyMatching where
  parser = SuggesterFuzzyMatching' Prelude.<$> Prelude.takeText

instance Prelude.ToText SuggesterFuzzyMatching where
  toText (SuggesterFuzzyMatching' x) = x

instance Prelude.Hashable SuggesterFuzzyMatching

instance Prelude.NFData SuggesterFuzzyMatching

instance Prelude.ToByteString SuggesterFuzzyMatching

instance Prelude.ToQuery SuggesterFuzzyMatching

instance Prelude.ToHeader SuggesterFuzzyMatching

instance Prelude.FromXML SuggesterFuzzyMatching where
  parseXML = Prelude.parseXMLText "SuggesterFuzzyMatching"
