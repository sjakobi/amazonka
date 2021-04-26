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
-- Module      : Network.AWS.CloudFormation.Types.StackResourceDriftStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackResourceDriftStatus
  ( StackResourceDriftStatus
      ( ..,
        StackResourceDriftStatusDELETED,
        StackResourceDriftStatusINSYNC,
        StackResourceDriftStatusMODIFIED,
        StackResourceDriftStatusNOTCHECKED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackResourceDriftStatus = StackResourceDriftStatus'
  { fromStackResourceDriftStatus ::
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

pattern StackResourceDriftStatusDELETED :: StackResourceDriftStatus
pattern StackResourceDriftStatusDELETED = StackResourceDriftStatus' "DELETED"

pattern StackResourceDriftStatusINSYNC :: StackResourceDriftStatus
pattern StackResourceDriftStatusINSYNC = StackResourceDriftStatus' "IN_SYNC"

pattern StackResourceDriftStatusMODIFIED :: StackResourceDriftStatus
pattern StackResourceDriftStatusMODIFIED = StackResourceDriftStatus' "MODIFIED"

pattern StackResourceDriftStatusNOTCHECKED :: StackResourceDriftStatus
pattern StackResourceDriftStatusNOTCHECKED = StackResourceDriftStatus' "NOT_CHECKED"

{-# COMPLETE
  StackResourceDriftStatusDELETED,
  StackResourceDriftStatusINSYNC,
  StackResourceDriftStatusMODIFIED,
  StackResourceDriftStatusNOTCHECKED,
  StackResourceDriftStatus'
  #-}

instance Prelude.FromText StackResourceDriftStatus where
  parser = StackResourceDriftStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackResourceDriftStatus where
  toText (StackResourceDriftStatus' x) = x

instance Prelude.Hashable StackResourceDriftStatus

instance Prelude.NFData StackResourceDriftStatus

instance Prelude.ToByteString StackResourceDriftStatus

instance Prelude.ToQuery StackResourceDriftStatus

instance Prelude.ToHeader StackResourceDriftStatus

instance Prelude.FromXML StackResourceDriftStatus where
  parseXML = Prelude.parseXMLText "StackResourceDriftStatus"
