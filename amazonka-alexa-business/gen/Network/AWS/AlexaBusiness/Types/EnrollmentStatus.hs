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
-- Module      : Network.AWS.AlexaBusiness.Types.EnrollmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.EnrollmentStatus
  ( EnrollmentStatus
      ( ..,
        EnrollmentStatusDEREGISTERING,
        EnrollmentStatusDISASSOCIATING,
        EnrollmentStatusINITIALIZED,
        EnrollmentStatusPENDING,
        EnrollmentStatusREGISTERED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnrollmentStatus = EnrollmentStatus'
  { fromEnrollmentStatus ::
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

pattern EnrollmentStatusDEREGISTERING :: EnrollmentStatus
pattern EnrollmentStatusDEREGISTERING = EnrollmentStatus' "DEREGISTERING"

pattern EnrollmentStatusDISASSOCIATING :: EnrollmentStatus
pattern EnrollmentStatusDISASSOCIATING = EnrollmentStatus' "DISASSOCIATING"

pattern EnrollmentStatusINITIALIZED :: EnrollmentStatus
pattern EnrollmentStatusINITIALIZED = EnrollmentStatus' "INITIALIZED"

pattern EnrollmentStatusPENDING :: EnrollmentStatus
pattern EnrollmentStatusPENDING = EnrollmentStatus' "PENDING"

pattern EnrollmentStatusREGISTERED :: EnrollmentStatus
pattern EnrollmentStatusREGISTERED = EnrollmentStatus' "REGISTERED"

{-# COMPLETE
  EnrollmentStatusDEREGISTERING,
  EnrollmentStatusDISASSOCIATING,
  EnrollmentStatusINITIALIZED,
  EnrollmentStatusPENDING,
  EnrollmentStatusREGISTERED,
  EnrollmentStatus'
  #-}

instance Prelude.FromText EnrollmentStatus where
  parser = EnrollmentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnrollmentStatus where
  toText (EnrollmentStatus' x) = x

instance Prelude.Hashable EnrollmentStatus

instance Prelude.NFData EnrollmentStatus

instance Prelude.ToByteString EnrollmentStatus

instance Prelude.ToQuery EnrollmentStatus

instance Prelude.ToHeader EnrollmentStatus

instance Prelude.FromJSON EnrollmentStatus where
  parseJSON = Prelude.parseJSONText "EnrollmentStatus"
