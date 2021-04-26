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
-- Module      : Network.AWS.Discovery.Types.ContinuousExportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ContinuousExportStatus
  ( ContinuousExportStatus
      ( ..,
        ContinuousExportStatusACTIVE,
        ContinuousExportStatusERROR,
        ContinuousExportStatusINACTIVE,
        ContinuousExportStatusSTARTFAILED,
        ContinuousExportStatusSTARTINPROGRESS,
        ContinuousExportStatusSTOPFAILED,
        ContinuousExportStatusSTOPINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContinuousExportStatus = ContinuousExportStatus'
  { fromContinuousExportStatus ::
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

pattern ContinuousExportStatusACTIVE :: ContinuousExportStatus
pattern ContinuousExportStatusACTIVE = ContinuousExportStatus' "ACTIVE"

pattern ContinuousExportStatusERROR :: ContinuousExportStatus
pattern ContinuousExportStatusERROR = ContinuousExportStatus' "ERROR"

pattern ContinuousExportStatusINACTIVE :: ContinuousExportStatus
pattern ContinuousExportStatusINACTIVE = ContinuousExportStatus' "INACTIVE"

pattern ContinuousExportStatusSTARTFAILED :: ContinuousExportStatus
pattern ContinuousExportStatusSTARTFAILED = ContinuousExportStatus' "START_FAILED"

pattern ContinuousExportStatusSTARTINPROGRESS :: ContinuousExportStatus
pattern ContinuousExportStatusSTARTINPROGRESS = ContinuousExportStatus' "START_IN_PROGRESS"

pattern ContinuousExportStatusSTOPFAILED :: ContinuousExportStatus
pattern ContinuousExportStatusSTOPFAILED = ContinuousExportStatus' "STOP_FAILED"

pattern ContinuousExportStatusSTOPINPROGRESS :: ContinuousExportStatus
pattern ContinuousExportStatusSTOPINPROGRESS = ContinuousExportStatus' "STOP_IN_PROGRESS"

{-# COMPLETE
  ContinuousExportStatusACTIVE,
  ContinuousExportStatusERROR,
  ContinuousExportStatusINACTIVE,
  ContinuousExportStatusSTARTFAILED,
  ContinuousExportStatusSTARTINPROGRESS,
  ContinuousExportStatusSTOPFAILED,
  ContinuousExportStatusSTOPINPROGRESS,
  ContinuousExportStatus'
  #-}

instance Prelude.FromText ContinuousExportStatus where
  parser = ContinuousExportStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContinuousExportStatus where
  toText (ContinuousExportStatus' x) = x

instance Prelude.Hashable ContinuousExportStatus

instance Prelude.NFData ContinuousExportStatus

instance Prelude.ToByteString ContinuousExportStatus

instance Prelude.ToQuery ContinuousExportStatus

instance Prelude.ToHeader ContinuousExportStatus

instance Prelude.FromJSON ContinuousExportStatus where
  parseJSON = Prelude.parseJSONText "ContinuousExportStatus"
