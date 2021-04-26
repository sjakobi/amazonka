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
-- Module      : Network.AWS.Route53Domains.Types.OperationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.OperationStatus
  ( OperationStatus
      ( ..,
        OperationStatusERROR,
        OperationStatusFAILED,
        OperationStatusINPROGRESS,
        OperationStatusSUBMITTED,
        OperationStatusSUCCESSFUL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OperationStatus = OperationStatus'
  { fromOperationStatus ::
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

pattern OperationStatusERROR :: OperationStatus
pattern OperationStatusERROR = OperationStatus' "ERROR"

pattern OperationStatusFAILED :: OperationStatus
pattern OperationStatusFAILED = OperationStatus' "FAILED"

pattern OperationStatusINPROGRESS :: OperationStatus
pattern OperationStatusINPROGRESS = OperationStatus' "IN_PROGRESS"

pattern OperationStatusSUBMITTED :: OperationStatus
pattern OperationStatusSUBMITTED = OperationStatus' "SUBMITTED"

pattern OperationStatusSUCCESSFUL :: OperationStatus
pattern OperationStatusSUCCESSFUL = OperationStatus' "SUCCESSFUL"

{-# COMPLETE
  OperationStatusERROR,
  OperationStatusFAILED,
  OperationStatusINPROGRESS,
  OperationStatusSUBMITTED,
  OperationStatusSUCCESSFUL,
  OperationStatus'
  #-}

instance Prelude.FromText OperationStatus where
  parser = OperationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperationStatus where
  toText (OperationStatus' x) = x

instance Prelude.Hashable OperationStatus

instance Prelude.NFData OperationStatus

instance Prelude.ToByteString OperationStatus

instance Prelude.ToQuery OperationStatus

instance Prelude.ToHeader OperationStatus

instance Prelude.FromJSON OperationStatus where
  parseJSON = Prelude.parseJSONText "OperationStatus"
