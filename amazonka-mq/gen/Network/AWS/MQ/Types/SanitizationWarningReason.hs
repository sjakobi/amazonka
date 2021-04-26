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
-- Module      : Network.AWS.MQ.Types.SanitizationWarningReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.SanitizationWarningReason
  ( SanitizationWarningReason
      ( ..,
        SanitizationWarningReasonDISALLOWEDATTRIBUTEREMOVED,
        SanitizationWarningReasonDISALLOWEDELEMENTREMOVED,
        SanitizationWarningReasonINVALIDATTRIBUTEVALUEREMOVED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The reason for which the XML elements or attributes were sanitized.
newtype SanitizationWarningReason = SanitizationWarningReason'
  { fromSanitizationWarningReason ::
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

pattern SanitizationWarningReasonDISALLOWEDATTRIBUTEREMOVED :: SanitizationWarningReason
pattern SanitizationWarningReasonDISALLOWEDATTRIBUTEREMOVED = SanitizationWarningReason' "DISALLOWED_ATTRIBUTE_REMOVED"

pattern SanitizationWarningReasonDISALLOWEDELEMENTREMOVED :: SanitizationWarningReason
pattern SanitizationWarningReasonDISALLOWEDELEMENTREMOVED = SanitizationWarningReason' "DISALLOWED_ELEMENT_REMOVED"

pattern SanitizationWarningReasonINVALIDATTRIBUTEVALUEREMOVED :: SanitizationWarningReason
pattern SanitizationWarningReasonINVALIDATTRIBUTEVALUEREMOVED = SanitizationWarningReason' "INVALID_ATTRIBUTE_VALUE_REMOVED"

{-# COMPLETE
  SanitizationWarningReasonDISALLOWEDATTRIBUTEREMOVED,
  SanitizationWarningReasonDISALLOWEDELEMENTREMOVED,
  SanitizationWarningReasonINVALIDATTRIBUTEVALUEREMOVED,
  SanitizationWarningReason'
  #-}

instance Prelude.FromText SanitizationWarningReason where
  parser = SanitizationWarningReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText SanitizationWarningReason where
  toText (SanitizationWarningReason' x) = x

instance Prelude.Hashable SanitizationWarningReason

instance Prelude.NFData SanitizationWarningReason

instance Prelude.ToByteString SanitizationWarningReason

instance Prelude.ToQuery SanitizationWarningReason

instance Prelude.ToHeader SanitizationWarningReason

instance Prelude.FromJSON SanitizationWarningReason where
  parseJSON = Prelude.parseJSONText "SanitizationWarningReason"
