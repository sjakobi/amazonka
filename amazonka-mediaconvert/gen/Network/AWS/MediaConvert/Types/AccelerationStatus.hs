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
-- Module      : Network.AWS.MediaConvert.Types.AccelerationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AccelerationStatus
  ( AccelerationStatus
      ( ..,
        AccelerationStatusACCELERATED,
        AccelerationStatusINPROGRESS,
        AccelerationStatusNOTACCELERATED,
        AccelerationStatusNOTAPPLICABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Describes whether the current job is running with accelerated
-- transcoding. For jobs that have Acceleration (AccelerationMode) set to
-- DISABLED, AccelerationStatus is always NOT_APPLICABLE. For jobs that
-- have Acceleration (AccelerationMode) set to ENABLED or PREFERRED,
-- AccelerationStatus is one of the other states. AccelerationStatus is
-- IN_PROGRESS initially, while the service determines whether the input
-- files and job settings are compatible with accelerated transcoding. If
-- they are, AcclerationStatus is ACCELERATED. If your input files and job
-- settings aren\'t compatible with accelerated transcoding, the service
-- either fails your job or runs it without accelerated transcoding,
-- depending on how you set Acceleration (AccelerationMode). When the
-- service runs your job without accelerated transcoding,
-- AccelerationStatus is NOT_ACCELERATED.
newtype AccelerationStatus = AccelerationStatus'
  { fromAccelerationStatus ::
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

pattern AccelerationStatusACCELERATED :: AccelerationStatus
pattern AccelerationStatusACCELERATED = AccelerationStatus' "ACCELERATED"

pattern AccelerationStatusINPROGRESS :: AccelerationStatus
pattern AccelerationStatusINPROGRESS = AccelerationStatus' "IN_PROGRESS"

pattern AccelerationStatusNOTACCELERATED :: AccelerationStatus
pattern AccelerationStatusNOTACCELERATED = AccelerationStatus' "NOT_ACCELERATED"

pattern AccelerationStatusNOTAPPLICABLE :: AccelerationStatus
pattern AccelerationStatusNOTAPPLICABLE = AccelerationStatus' "NOT_APPLICABLE"

{-# COMPLETE
  AccelerationStatusACCELERATED,
  AccelerationStatusINPROGRESS,
  AccelerationStatusNOTACCELERATED,
  AccelerationStatusNOTAPPLICABLE,
  AccelerationStatus'
  #-}

instance Prelude.FromText AccelerationStatus where
  parser = AccelerationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccelerationStatus where
  toText (AccelerationStatus' x) = x

instance Prelude.Hashable AccelerationStatus

instance Prelude.NFData AccelerationStatus

instance Prelude.ToByteString AccelerationStatus

instance Prelude.ToQuery AccelerationStatus

instance Prelude.ToHeader AccelerationStatus

instance Prelude.FromJSON AccelerationStatus where
  parseJSON = Prelude.parseJSONText "AccelerationStatus"
