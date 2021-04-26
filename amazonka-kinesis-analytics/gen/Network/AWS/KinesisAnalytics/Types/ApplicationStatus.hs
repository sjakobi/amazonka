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
-- Module      : Network.AWS.KinesisAnalytics.Types.ApplicationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.ApplicationStatus
  ( ApplicationStatus
      ( ..,
        ApplicationStatusDELETING,
        ApplicationStatusREADY,
        ApplicationStatusRUNNING,
        ApplicationStatusSTARTING,
        ApplicationStatusSTOPPING,
        ApplicationStatusUPDATING
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

pattern ApplicationStatusDELETING :: ApplicationStatus
pattern ApplicationStatusDELETING = ApplicationStatus' "DELETING"

pattern ApplicationStatusREADY :: ApplicationStatus
pattern ApplicationStatusREADY = ApplicationStatus' "READY"

pattern ApplicationStatusRUNNING :: ApplicationStatus
pattern ApplicationStatusRUNNING = ApplicationStatus' "RUNNING"

pattern ApplicationStatusSTARTING :: ApplicationStatus
pattern ApplicationStatusSTARTING = ApplicationStatus' "STARTING"

pattern ApplicationStatusSTOPPING :: ApplicationStatus
pattern ApplicationStatusSTOPPING = ApplicationStatus' "STOPPING"

pattern ApplicationStatusUPDATING :: ApplicationStatus
pattern ApplicationStatusUPDATING = ApplicationStatus' "UPDATING"

{-# COMPLETE
  ApplicationStatusDELETING,
  ApplicationStatusREADY,
  ApplicationStatusRUNNING,
  ApplicationStatusSTARTING,
  ApplicationStatusSTOPPING,
  ApplicationStatusUPDATING,
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

instance Prelude.FromJSON ApplicationStatus where
  parseJSON = Prelude.parseJSONText "ApplicationStatus"
