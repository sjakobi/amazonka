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
-- Module      : Network.AWS.CostExplorer.Types.MatchOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.MatchOption
  ( MatchOption
      ( ..,
        MatchOptionABSENT,
        MatchOptionCASEINSENSITIVE,
        MatchOptionCASESENSITIVE,
        MatchOptionCONTAINS,
        MatchOptionENDSWITH,
        MatchOptionEQUALS,
        MatchOptionSTARTSWITH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MatchOption = MatchOption'
  { fromMatchOption ::
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

pattern MatchOptionABSENT :: MatchOption
pattern MatchOptionABSENT = MatchOption' "ABSENT"

pattern MatchOptionCASEINSENSITIVE :: MatchOption
pattern MatchOptionCASEINSENSITIVE = MatchOption' "CASE_INSENSITIVE"

pattern MatchOptionCASESENSITIVE :: MatchOption
pattern MatchOptionCASESENSITIVE = MatchOption' "CASE_SENSITIVE"

pattern MatchOptionCONTAINS :: MatchOption
pattern MatchOptionCONTAINS = MatchOption' "CONTAINS"

pattern MatchOptionENDSWITH :: MatchOption
pattern MatchOptionENDSWITH = MatchOption' "ENDS_WITH"

pattern MatchOptionEQUALS :: MatchOption
pattern MatchOptionEQUALS = MatchOption' "EQUALS"

pattern MatchOptionSTARTSWITH :: MatchOption
pattern MatchOptionSTARTSWITH = MatchOption' "STARTS_WITH"

{-# COMPLETE
  MatchOptionABSENT,
  MatchOptionCASEINSENSITIVE,
  MatchOptionCASESENSITIVE,
  MatchOptionCONTAINS,
  MatchOptionENDSWITH,
  MatchOptionEQUALS,
  MatchOptionSTARTSWITH,
  MatchOption'
  #-}

instance Prelude.FromText MatchOption where
  parser = MatchOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText MatchOption where
  toText (MatchOption' x) = x

instance Prelude.Hashable MatchOption

instance Prelude.NFData MatchOption

instance Prelude.ToByteString MatchOption

instance Prelude.ToQuery MatchOption

instance Prelude.ToHeader MatchOption

instance Prelude.ToJSON MatchOption where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MatchOption where
  parseJSON = Prelude.parseJSONText "MatchOption"
