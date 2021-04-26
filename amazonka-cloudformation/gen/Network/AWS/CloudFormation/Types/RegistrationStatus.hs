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
-- Module      : Network.AWS.CloudFormation.Types.RegistrationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.RegistrationStatus
  ( RegistrationStatus
      ( ..,
        RegistrationStatusCOMPLETE,
        RegistrationStatusFAILED,
        RegistrationStatusINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RegistrationStatus = RegistrationStatus'
  { fromRegistrationStatus ::
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

pattern RegistrationStatusCOMPLETE :: RegistrationStatus
pattern RegistrationStatusCOMPLETE = RegistrationStatus' "COMPLETE"

pattern RegistrationStatusFAILED :: RegistrationStatus
pattern RegistrationStatusFAILED = RegistrationStatus' "FAILED"

pattern RegistrationStatusINPROGRESS :: RegistrationStatus
pattern RegistrationStatusINPROGRESS = RegistrationStatus' "IN_PROGRESS"

{-# COMPLETE
  RegistrationStatusCOMPLETE,
  RegistrationStatusFAILED,
  RegistrationStatusINPROGRESS,
  RegistrationStatus'
  #-}

instance Prelude.FromText RegistrationStatus where
  parser = RegistrationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RegistrationStatus where
  toText (RegistrationStatus' x) = x

instance Prelude.Hashable RegistrationStatus

instance Prelude.NFData RegistrationStatus

instance Prelude.ToByteString RegistrationStatus

instance Prelude.ToQuery RegistrationStatus

instance Prelude.ToHeader RegistrationStatus

instance Prelude.FromXML RegistrationStatus where
  parseXML = Prelude.parseXMLText "RegistrationStatus"
