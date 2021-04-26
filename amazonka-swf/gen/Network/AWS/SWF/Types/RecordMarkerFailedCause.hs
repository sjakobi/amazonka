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
-- Module      : Network.AWS.SWF.Types.RecordMarkerFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RecordMarkerFailedCause
  ( RecordMarkerFailedCause
      ( ..,
        RecordMarkerFailedCauseOPERATIONNOTPERMITTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecordMarkerFailedCause = RecordMarkerFailedCause'
  { fromRecordMarkerFailedCause ::
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

pattern RecordMarkerFailedCauseOPERATIONNOTPERMITTED :: RecordMarkerFailedCause
pattern RecordMarkerFailedCauseOPERATIONNOTPERMITTED = RecordMarkerFailedCause' "OPERATION_NOT_PERMITTED"

{-# COMPLETE
  RecordMarkerFailedCauseOPERATIONNOTPERMITTED,
  RecordMarkerFailedCause'
  #-}

instance Prelude.FromText RecordMarkerFailedCause where
  parser = RecordMarkerFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecordMarkerFailedCause where
  toText (RecordMarkerFailedCause' x) = x

instance Prelude.Hashable RecordMarkerFailedCause

instance Prelude.NFData RecordMarkerFailedCause

instance Prelude.ToByteString RecordMarkerFailedCause

instance Prelude.ToQuery RecordMarkerFailedCause

instance Prelude.ToHeader RecordMarkerFailedCause

instance Prelude.FromJSON RecordMarkerFailedCause where
  parseJSON = Prelude.parseJSONText "RecordMarkerFailedCause"
