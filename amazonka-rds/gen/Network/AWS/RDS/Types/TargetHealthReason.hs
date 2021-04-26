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
-- Module      : Network.AWS.RDS.Types.TargetHealthReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.TargetHealthReason
  ( TargetHealthReason
      ( ..,
        TargetHealthReasonAUTHFAILURE,
        TargetHealthReasonCONNECTIONFAILED,
        TargetHealthReasonPENDINGPROXYCAPACITY,
        TargetHealthReasonUNREACHABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetHealthReason = TargetHealthReason'
  { fromTargetHealthReason ::
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

pattern TargetHealthReasonAUTHFAILURE :: TargetHealthReason
pattern TargetHealthReasonAUTHFAILURE = TargetHealthReason' "AUTH_FAILURE"

pattern TargetHealthReasonCONNECTIONFAILED :: TargetHealthReason
pattern TargetHealthReasonCONNECTIONFAILED = TargetHealthReason' "CONNECTION_FAILED"

pattern TargetHealthReasonPENDINGPROXYCAPACITY :: TargetHealthReason
pattern TargetHealthReasonPENDINGPROXYCAPACITY = TargetHealthReason' "PENDING_PROXY_CAPACITY"

pattern TargetHealthReasonUNREACHABLE :: TargetHealthReason
pattern TargetHealthReasonUNREACHABLE = TargetHealthReason' "UNREACHABLE"

{-# COMPLETE
  TargetHealthReasonAUTHFAILURE,
  TargetHealthReasonCONNECTIONFAILED,
  TargetHealthReasonPENDINGPROXYCAPACITY,
  TargetHealthReasonUNREACHABLE,
  TargetHealthReason'
  #-}

instance Prelude.FromText TargetHealthReason where
  parser = TargetHealthReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetHealthReason where
  toText (TargetHealthReason' x) = x

instance Prelude.Hashable TargetHealthReason

instance Prelude.NFData TargetHealthReason

instance Prelude.ToByteString TargetHealthReason

instance Prelude.ToQuery TargetHealthReason

instance Prelude.ToHeader TargetHealthReason

instance Prelude.FromXML TargetHealthReason where
  parseXML = Prelude.parseXMLText "TargetHealthReason"
