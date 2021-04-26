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
-- Module      : Network.AWS.IoT.Types.ConfidenceLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ConfidenceLevel
  ( ConfidenceLevel
      ( ..,
        ConfidenceLevelHIGH,
        ConfidenceLevelLOW,
        ConfidenceLevelMEDIUM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConfidenceLevel = ConfidenceLevel'
  { fromConfidenceLevel ::
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

pattern ConfidenceLevelHIGH :: ConfidenceLevel
pattern ConfidenceLevelHIGH = ConfidenceLevel' "HIGH"

pattern ConfidenceLevelLOW :: ConfidenceLevel
pattern ConfidenceLevelLOW = ConfidenceLevel' "LOW"

pattern ConfidenceLevelMEDIUM :: ConfidenceLevel
pattern ConfidenceLevelMEDIUM = ConfidenceLevel' "MEDIUM"

{-# COMPLETE
  ConfidenceLevelHIGH,
  ConfidenceLevelLOW,
  ConfidenceLevelMEDIUM,
  ConfidenceLevel'
  #-}

instance Prelude.FromText ConfidenceLevel where
  parser = ConfidenceLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConfidenceLevel where
  toText (ConfidenceLevel' x) = x

instance Prelude.Hashable ConfidenceLevel

instance Prelude.NFData ConfidenceLevel

instance Prelude.ToByteString ConfidenceLevel

instance Prelude.ToQuery ConfidenceLevel

instance Prelude.ToHeader ConfidenceLevel

instance Prelude.ToJSON ConfidenceLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConfidenceLevel where
  parseJSON = Prelude.parseJSONText "ConfidenceLevel"
