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
-- Module      : Network.AWS.XRay.Types.InsightState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.InsightState
  ( InsightState
      ( ..,
        InsightStateACTIVE,
        InsightStateCLOSED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InsightState = InsightState'
  { fromInsightState ::
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

pattern InsightStateACTIVE :: InsightState
pattern InsightStateACTIVE = InsightState' "ACTIVE"

pattern InsightStateCLOSED :: InsightState
pattern InsightStateCLOSED = InsightState' "CLOSED"

{-# COMPLETE
  InsightStateACTIVE,
  InsightStateCLOSED,
  InsightState'
  #-}

instance Prelude.FromText InsightState where
  parser = InsightState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InsightState where
  toText (InsightState' x) = x

instance Prelude.Hashable InsightState

instance Prelude.NFData InsightState

instance Prelude.ToByteString InsightState

instance Prelude.ToQuery InsightState

instance Prelude.ToHeader InsightState

instance Prelude.ToJSON InsightState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InsightState where
  parseJSON = Prelude.parseJSONText "InsightState"
