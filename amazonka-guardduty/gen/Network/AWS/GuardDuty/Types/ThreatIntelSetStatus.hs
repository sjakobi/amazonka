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
-- Module      : Network.AWS.GuardDuty.Types.ThreatIntelSetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.ThreatIntelSetStatus
  ( ThreatIntelSetStatus
      ( ..,
        ThreatIntelSetStatusACTIVATING,
        ThreatIntelSetStatusACTIVE,
        ThreatIntelSetStatusDEACTIVATING,
        ThreatIntelSetStatusDELETED,
        ThreatIntelSetStatusDELETEPENDING,
        ThreatIntelSetStatusERROR,
        ThreatIntelSetStatusINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ThreatIntelSetStatus = ThreatIntelSetStatus'
  { fromThreatIntelSetStatus ::
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

pattern ThreatIntelSetStatusACTIVATING :: ThreatIntelSetStatus
pattern ThreatIntelSetStatusACTIVATING = ThreatIntelSetStatus' "ACTIVATING"

pattern ThreatIntelSetStatusACTIVE :: ThreatIntelSetStatus
pattern ThreatIntelSetStatusACTIVE = ThreatIntelSetStatus' "ACTIVE"

pattern ThreatIntelSetStatusDEACTIVATING :: ThreatIntelSetStatus
pattern ThreatIntelSetStatusDEACTIVATING = ThreatIntelSetStatus' "DEACTIVATING"

pattern ThreatIntelSetStatusDELETED :: ThreatIntelSetStatus
pattern ThreatIntelSetStatusDELETED = ThreatIntelSetStatus' "DELETED"

pattern ThreatIntelSetStatusDELETEPENDING :: ThreatIntelSetStatus
pattern ThreatIntelSetStatusDELETEPENDING = ThreatIntelSetStatus' "DELETE_PENDING"

pattern ThreatIntelSetStatusERROR :: ThreatIntelSetStatus
pattern ThreatIntelSetStatusERROR = ThreatIntelSetStatus' "ERROR"

pattern ThreatIntelSetStatusINACTIVE :: ThreatIntelSetStatus
pattern ThreatIntelSetStatusINACTIVE = ThreatIntelSetStatus' "INACTIVE"

{-# COMPLETE
  ThreatIntelSetStatusACTIVATING,
  ThreatIntelSetStatusACTIVE,
  ThreatIntelSetStatusDEACTIVATING,
  ThreatIntelSetStatusDELETED,
  ThreatIntelSetStatusDELETEPENDING,
  ThreatIntelSetStatusERROR,
  ThreatIntelSetStatusINACTIVE,
  ThreatIntelSetStatus'
  #-}

instance Prelude.FromText ThreatIntelSetStatus where
  parser = ThreatIntelSetStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ThreatIntelSetStatus where
  toText (ThreatIntelSetStatus' x) = x

instance Prelude.Hashable ThreatIntelSetStatus

instance Prelude.NFData ThreatIntelSetStatus

instance Prelude.ToByteString ThreatIntelSetStatus

instance Prelude.ToQuery ThreatIntelSetStatus

instance Prelude.ToHeader ThreatIntelSetStatus

instance Prelude.FromJSON ThreatIntelSetStatus where
  parseJSON = Prelude.parseJSONText "ThreatIntelSetStatus"
