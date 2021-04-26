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
-- Module      : Network.AWS.CloudHSMv2.Types.ClusterState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.ClusterState
  ( ClusterState
      ( ..,
        ClusterStateACTIVE,
        ClusterStateCREATEINPROGRESS,
        ClusterStateDEGRADED,
        ClusterStateDELETED,
        ClusterStateDELETEINPROGRESS,
        ClusterStateINITIALIZED,
        ClusterStateINITIALIZEINPROGRESS,
        ClusterStateUNINITIALIZED,
        ClusterStateUPDATEINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ClusterState = ClusterState'
  { fromClusterState ::
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

pattern ClusterStateACTIVE :: ClusterState
pattern ClusterStateACTIVE = ClusterState' "ACTIVE"

pattern ClusterStateCREATEINPROGRESS :: ClusterState
pattern ClusterStateCREATEINPROGRESS = ClusterState' "CREATE_IN_PROGRESS"

pattern ClusterStateDEGRADED :: ClusterState
pattern ClusterStateDEGRADED = ClusterState' "DEGRADED"

pattern ClusterStateDELETED :: ClusterState
pattern ClusterStateDELETED = ClusterState' "DELETED"

pattern ClusterStateDELETEINPROGRESS :: ClusterState
pattern ClusterStateDELETEINPROGRESS = ClusterState' "DELETE_IN_PROGRESS"

pattern ClusterStateINITIALIZED :: ClusterState
pattern ClusterStateINITIALIZED = ClusterState' "INITIALIZED"

pattern ClusterStateINITIALIZEINPROGRESS :: ClusterState
pattern ClusterStateINITIALIZEINPROGRESS = ClusterState' "INITIALIZE_IN_PROGRESS"

pattern ClusterStateUNINITIALIZED :: ClusterState
pattern ClusterStateUNINITIALIZED = ClusterState' "UNINITIALIZED"

pattern ClusterStateUPDATEINPROGRESS :: ClusterState
pattern ClusterStateUPDATEINPROGRESS = ClusterState' "UPDATE_IN_PROGRESS"

{-# COMPLETE
  ClusterStateACTIVE,
  ClusterStateCREATEINPROGRESS,
  ClusterStateDEGRADED,
  ClusterStateDELETED,
  ClusterStateDELETEINPROGRESS,
  ClusterStateINITIALIZED,
  ClusterStateINITIALIZEINPROGRESS,
  ClusterStateUNINITIALIZED,
  ClusterStateUPDATEINPROGRESS,
  ClusterState'
  #-}

instance Prelude.FromText ClusterState where
  parser = ClusterState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClusterState where
  toText (ClusterState' x) = x

instance Prelude.Hashable ClusterState

instance Prelude.NFData ClusterState

instance Prelude.ToByteString ClusterState

instance Prelude.ToQuery ClusterState

instance Prelude.ToHeader ClusterState

instance Prelude.FromJSON ClusterState where
  parseJSON = Prelude.parseJSONText "ClusterState"
