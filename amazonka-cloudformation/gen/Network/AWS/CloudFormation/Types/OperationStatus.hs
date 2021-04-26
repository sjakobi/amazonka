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
-- Module      : Network.AWS.CloudFormation.Types.OperationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.OperationStatus
  ( OperationStatus
      ( ..,
        OperationStatusFAILED,
        OperationStatusINPROGRESS,
        OperationStatusPENDING,
        OperationStatusSUCCESS
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

pattern OperationStatusFAILED :: OperationStatus
pattern OperationStatusFAILED = OperationStatus' "FAILED"

pattern OperationStatusINPROGRESS :: OperationStatus
pattern OperationStatusINPROGRESS = OperationStatus' "IN_PROGRESS"

pattern OperationStatusPENDING :: OperationStatus
pattern OperationStatusPENDING = OperationStatus' "PENDING"

pattern OperationStatusSUCCESS :: OperationStatus
pattern OperationStatusSUCCESS = OperationStatus' "SUCCESS"

{-# COMPLETE
  OperationStatusFAILED,
  OperationStatusINPROGRESS,
  OperationStatusPENDING,
  OperationStatusSUCCESS,
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
