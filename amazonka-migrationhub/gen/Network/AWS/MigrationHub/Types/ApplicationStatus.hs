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
-- Module      : Network.AWS.MigrationHub.Types.ApplicationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHub.Types.ApplicationStatus
  ( ApplicationStatus
      ( ..,
        ApplicationStatusCOMPLETED,
        ApplicationStatusINPROGRESS,
        ApplicationStatusNOTSTARTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApplicationStatus = ApplicationStatus'
  { fromApplicationStatus ::
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

pattern ApplicationStatusCOMPLETED :: ApplicationStatus
pattern ApplicationStatusCOMPLETED = ApplicationStatus' "COMPLETED"

pattern ApplicationStatusINPROGRESS :: ApplicationStatus
pattern ApplicationStatusINPROGRESS = ApplicationStatus' "IN_PROGRESS"

pattern ApplicationStatusNOTSTARTED :: ApplicationStatus
pattern ApplicationStatusNOTSTARTED = ApplicationStatus' "NOT_STARTED"

{-# COMPLETE
  ApplicationStatusCOMPLETED,
  ApplicationStatusINPROGRESS,
  ApplicationStatusNOTSTARTED,
  ApplicationStatus'
  #-}

instance Prelude.FromText ApplicationStatus where
  parser = ApplicationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApplicationStatus where
  toText (ApplicationStatus' x) = x

instance Prelude.Hashable ApplicationStatus

instance Prelude.NFData ApplicationStatus

instance Prelude.ToByteString ApplicationStatus

instance Prelude.ToQuery ApplicationStatus

instance Prelude.ToHeader ApplicationStatus

instance Prelude.ToJSON ApplicationStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ApplicationStatus where
  parseJSON = Prelude.parseJSONText "ApplicationStatus"
