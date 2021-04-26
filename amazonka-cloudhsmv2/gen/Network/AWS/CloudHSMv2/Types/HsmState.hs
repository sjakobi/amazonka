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
-- Module      : Network.AWS.CloudHSMv2.Types.HsmState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.HsmState
  ( HsmState
      ( ..,
        HsmStateACTIVE,
        HsmStateCREATEINPROGRESS,
        HsmStateDEGRADED,
        HsmStateDELETED,
        HsmStateDELETEINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HsmState = HsmState'
  { fromHsmState ::
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

pattern HsmStateACTIVE :: HsmState
pattern HsmStateACTIVE = HsmState' "ACTIVE"

pattern HsmStateCREATEINPROGRESS :: HsmState
pattern HsmStateCREATEINPROGRESS = HsmState' "CREATE_IN_PROGRESS"

pattern HsmStateDEGRADED :: HsmState
pattern HsmStateDEGRADED = HsmState' "DEGRADED"

pattern HsmStateDELETED :: HsmState
pattern HsmStateDELETED = HsmState' "DELETED"

pattern HsmStateDELETEINPROGRESS :: HsmState
pattern HsmStateDELETEINPROGRESS = HsmState' "DELETE_IN_PROGRESS"

{-# COMPLETE
  HsmStateACTIVE,
  HsmStateCREATEINPROGRESS,
  HsmStateDEGRADED,
  HsmStateDELETED,
  HsmStateDELETEINPROGRESS,
  HsmState'
  #-}

instance Prelude.FromText HsmState where
  parser = HsmState' Prelude.<$> Prelude.takeText

instance Prelude.ToText HsmState where
  toText (HsmState' x) = x

instance Prelude.Hashable HsmState

instance Prelude.NFData HsmState

instance Prelude.ToByteString HsmState

instance Prelude.ToQuery HsmState

instance Prelude.ToHeader HsmState

instance Prelude.FromJSON HsmState where
  parseJSON = Prelude.parseJSONText "HsmState"
