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
-- Module      : Network.AWS.Config.Types.ConformancePackState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConformancePackState
  ( ConformancePackState
      ( ..,
        ConformancePackStateCREATECOMPLETE,
        ConformancePackStateCREATEFAILED,
        ConformancePackStateCREATEINPROGRESS,
        ConformancePackStateDELETEFAILED,
        ConformancePackStateDELETEINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConformancePackState = ConformancePackState'
  { fromConformancePackState ::
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

pattern ConformancePackStateCREATECOMPLETE :: ConformancePackState
pattern ConformancePackStateCREATECOMPLETE = ConformancePackState' "CREATE_COMPLETE"

pattern ConformancePackStateCREATEFAILED :: ConformancePackState
pattern ConformancePackStateCREATEFAILED = ConformancePackState' "CREATE_FAILED"

pattern ConformancePackStateCREATEINPROGRESS :: ConformancePackState
pattern ConformancePackStateCREATEINPROGRESS = ConformancePackState' "CREATE_IN_PROGRESS"

pattern ConformancePackStateDELETEFAILED :: ConformancePackState
pattern ConformancePackStateDELETEFAILED = ConformancePackState' "DELETE_FAILED"

pattern ConformancePackStateDELETEINPROGRESS :: ConformancePackState
pattern ConformancePackStateDELETEINPROGRESS = ConformancePackState' "DELETE_IN_PROGRESS"

{-# COMPLETE
  ConformancePackStateCREATECOMPLETE,
  ConformancePackStateCREATEFAILED,
  ConformancePackStateCREATEINPROGRESS,
  ConformancePackStateDELETEFAILED,
  ConformancePackStateDELETEINPROGRESS,
  ConformancePackState'
  #-}

instance Prelude.FromText ConformancePackState where
  parser = ConformancePackState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConformancePackState where
  toText (ConformancePackState' x) = x

instance Prelude.Hashable ConformancePackState

instance Prelude.NFData ConformancePackState

instance Prelude.ToByteString ConformancePackState

instance Prelude.ToQuery ConformancePackState

instance Prelude.ToHeader ConformancePackState

instance Prelude.FromJSON ConformancePackState where
  parseJSON = Prelude.parseJSONText "ConformancePackState"
