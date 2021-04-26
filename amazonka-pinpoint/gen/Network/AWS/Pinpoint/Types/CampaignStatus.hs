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
-- Module      : Network.AWS.Pinpoint.Types.CampaignStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.CampaignStatus
  ( CampaignStatus
      ( ..,
        CampaignStatusCOMPLETED,
        CampaignStatusDELETED,
        CampaignStatusEXECUTING,
        CampaignStatusINVALID,
        CampaignStatusPAUSED,
        CampaignStatusPENDINGNEXTRUN,
        CampaignStatusSCHEDULED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CampaignStatus = CampaignStatus'
  { fromCampaignStatus ::
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

pattern CampaignStatusCOMPLETED :: CampaignStatus
pattern CampaignStatusCOMPLETED = CampaignStatus' "COMPLETED"

pattern CampaignStatusDELETED :: CampaignStatus
pattern CampaignStatusDELETED = CampaignStatus' "DELETED"

pattern CampaignStatusEXECUTING :: CampaignStatus
pattern CampaignStatusEXECUTING = CampaignStatus' "EXECUTING"

pattern CampaignStatusINVALID :: CampaignStatus
pattern CampaignStatusINVALID = CampaignStatus' "INVALID"

pattern CampaignStatusPAUSED :: CampaignStatus
pattern CampaignStatusPAUSED = CampaignStatus' "PAUSED"

pattern CampaignStatusPENDINGNEXTRUN :: CampaignStatus
pattern CampaignStatusPENDINGNEXTRUN = CampaignStatus' "PENDING_NEXT_RUN"

pattern CampaignStatusSCHEDULED :: CampaignStatus
pattern CampaignStatusSCHEDULED = CampaignStatus' "SCHEDULED"

{-# COMPLETE
  CampaignStatusCOMPLETED,
  CampaignStatusDELETED,
  CampaignStatusEXECUTING,
  CampaignStatusINVALID,
  CampaignStatusPAUSED,
  CampaignStatusPENDINGNEXTRUN,
  CampaignStatusSCHEDULED,
  CampaignStatus'
  #-}

instance Prelude.FromText CampaignStatus where
  parser = CampaignStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CampaignStatus where
  toText (CampaignStatus' x) = x

instance Prelude.Hashable CampaignStatus

instance Prelude.NFData CampaignStatus

instance Prelude.ToByteString CampaignStatus

instance Prelude.ToQuery CampaignStatus

instance Prelude.ToHeader CampaignStatus

instance Prelude.FromJSON CampaignStatus where
  parseJSON = Prelude.parseJSONText "CampaignStatus"
