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
-- Module      : Network.AWS.ECR.Types.ScanStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ScanStatus
  ( ScanStatus
      ( ..,
        ScanStatusCOMPLETE,
        ScanStatusFAILED,
        ScanStatusINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScanStatus = ScanStatus'
  { fromScanStatus ::
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

pattern ScanStatusCOMPLETE :: ScanStatus
pattern ScanStatusCOMPLETE = ScanStatus' "COMPLETE"

pattern ScanStatusFAILED :: ScanStatus
pattern ScanStatusFAILED = ScanStatus' "FAILED"

pattern ScanStatusINPROGRESS :: ScanStatus
pattern ScanStatusINPROGRESS = ScanStatus' "IN_PROGRESS"

{-# COMPLETE
  ScanStatusCOMPLETE,
  ScanStatusFAILED,
  ScanStatusINPROGRESS,
  ScanStatus'
  #-}

instance Prelude.FromText ScanStatus where
  parser = ScanStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScanStatus where
  toText (ScanStatus' x) = x

instance Prelude.Hashable ScanStatus

instance Prelude.NFData ScanStatus

instance Prelude.ToByteString ScanStatus

instance Prelude.ToQuery ScanStatus

instance Prelude.ToHeader ScanStatus

instance Prelude.FromJSON ScanStatus where
  parseJSON = Prelude.parseJSONText "ScanStatus"
