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
-- Module      : Network.AWS.CostExplorer.Types.TermInYears
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.TermInYears
  ( TermInYears
      ( ..,
        TermInYearsONEYEAR,
        TermInYearsTHREEYEARS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TermInYears = TermInYears'
  { fromTermInYears ::
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

pattern TermInYearsONEYEAR :: TermInYears
pattern TermInYearsONEYEAR = TermInYears' "ONE_YEAR"

pattern TermInYearsTHREEYEARS :: TermInYears
pattern TermInYearsTHREEYEARS = TermInYears' "THREE_YEARS"

{-# COMPLETE
  TermInYearsONEYEAR,
  TermInYearsTHREEYEARS,
  TermInYears'
  #-}

instance Prelude.FromText TermInYears where
  parser = TermInYears' Prelude.<$> Prelude.takeText

instance Prelude.ToText TermInYears where
  toText (TermInYears' x) = x

instance Prelude.Hashable TermInYears

instance Prelude.NFData TermInYears

instance Prelude.ToByteString TermInYears

instance Prelude.ToQuery TermInYears

instance Prelude.ToHeader TermInYears

instance Prelude.ToJSON TermInYears where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TermInYears where
  parseJSON = Prelude.parseJSONText "TermInYears"
