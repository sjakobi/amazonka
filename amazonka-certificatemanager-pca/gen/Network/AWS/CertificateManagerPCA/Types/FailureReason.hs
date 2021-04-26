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
-- Module      : Network.AWS.CertificateManagerPCA.Types.FailureReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.FailureReason
  ( FailureReason
      ( ..,
        FailureReasonOTHER,
        FailureReasonREQUESTTIMEDOUT,
        FailureReasonUNSUPPORTEDALGORITHM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FailureReason = FailureReason'
  { fromFailureReason ::
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

pattern FailureReasonOTHER :: FailureReason
pattern FailureReasonOTHER = FailureReason' "OTHER"

pattern FailureReasonREQUESTTIMEDOUT :: FailureReason
pattern FailureReasonREQUESTTIMEDOUT = FailureReason' "REQUEST_TIMED_OUT"

pattern FailureReasonUNSUPPORTEDALGORITHM :: FailureReason
pattern FailureReasonUNSUPPORTEDALGORITHM = FailureReason' "UNSUPPORTED_ALGORITHM"

{-# COMPLETE
  FailureReasonOTHER,
  FailureReasonREQUESTTIMEDOUT,
  FailureReasonUNSUPPORTEDALGORITHM,
  FailureReason'
  #-}

instance Prelude.FromText FailureReason where
  parser = FailureReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText FailureReason where
  toText (FailureReason' x) = x

instance Prelude.Hashable FailureReason

instance Prelude.NFData FailureReason

instance Prelude.ToByteString FailureReason

instance Prelude.ToQuery FailureReason

instance Prelude.ToHeader FailureReason

instance Prelude.FromJSON FailureReason where
  parseJSON = Prelude.parseJSONText "FailureReason"
