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
-- Module      : Network.AWS.DynamoDB.Types.ReplicaStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReplicaStatus
  ( ReplicaStatus
      ( ..,
        ReplicaStatusACTIVE,
        ReplicaStatusCREATING,
        ReplicaStatusCREATIONFAILED,
        ReplicaStatusDELETING,
        ReplicaStatusINACCESSIBLEENCRYPTIONCREDENTIALS,
        ReplicaStatusREGIONDISABLED,
        ReplicaStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplicaStatus = ReplicaStatus'
  { fromReplicaStatus ::
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

pattern ReplicaStatusACTIVE :: ReplicaStatus
pattern ReplicaStatusACTIVE = ReplicaStatus' "ACTIVE"

pattern ReplicaStatusCREATING :: ReplicaStatus
pattern ReplicaStatusCREATING = ReplicaStatus' "CREATING"

pattern ReplicaStatusCREATIONFAILED :: ReplicaStatus
pattern ReplicaStatusCREATIONFAILED = ReplicaStatus' "CREATION_FAILED"

pattern ReplicaStatusDELETING :: ReplicaStatus
pattern ReplicaStatusDELETING = ReplicaStatus' "DELETING"

pattern ReplicaStatusINACCESSIBLEENCRYPTIONCREDENTIALS :: ReplicaStatus
pattern ReplicaStatusINACCESSIBLEENCRYPTIONCREDENTIALS = ReplicaStatus' "INACCESSIBLE_ENCRYPTION_CREDENTIALS"

pattern ReplicaStatusREGIONDISABLED :: ReplicaStatus
pattern ReplicaStatusREGIONDISABLED = ReplicaStatus' "REGION_DISABLED"

pattern ReplicaStatusUPDATING :: ReplicaStatus
pattern ReplicaStatusUPDATING = ReplicaStatus' "UPDATING"

{-# COMPLETE
  ReplicaStatusACTIVE,
  ReplicaStatusCREATING,
  ReplicaStatusCREATIONFAILED,
  ReplicaStatusDELETING,
  ReplicaStatusINACCESSIBLEENCRYPTIONCREDENTIALS,
  ReplicaStatusREGIONDISABLED,
  ReplicaStatusUPDATING,
  ReplicaStatus'
  #-}

instance Prelude.FromText ReplicaStatus where
  parser = ReplicaStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicaStatus where
  toText (ReplicaStatus' x) = x

instance Prelude.Hashable ReplicaStatus

instance Prelude.NFData ReplicaStatus

instance Prelude.ToByteString ReplicaStatus

instance Prelude.ToQuery ReplicaStatus

instance Prelude.ToHeader ReplicaStatus

instance Prelude.FromJSON ReplicaStatus where
  parseJSON = Prelude.parseJSONText "ReplicaStatus"
