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
-- Module      : Network.AWS.CloudFormation.Types.StackSetDriftStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetDriftStatus
  ( StackSetDriftStatus
      ( ..,
        StackSetDriftStatusDRIFTED,
        StackSetDriftStatusINSYNC,
        StackSetDriftStatusNOTCHECKED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackSetDriftStatus = StackSetDriftStatus'
  { fromStackSetDriftStatus ::
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

pattern StackSetDriftStatusDRIFTED :: StackSetDriftStatus
pattern StackSetDriftStatusDRIFTED = StackSetDriftStatus' "DRIFTED"

pattern StackSetDriftStatusINSYNC :: StackSetDriftStatus
pattern StackSetDriftStatusINSYNC = StackSetDriftStatus' "IN_SYNC"

pattern StackSetDriftStatusNOTCHECKED :: StackSetDriftStatus
pattern StackSetDriftStatusNOTCHECKED = StackSetDriftStatus' "NOT_CHECKED"

{-# COMPLETE
  StackSetDriftStatusDRIFTED,
  StackSetDriftStatusINSYNC,
  StackSetDriftStatusNOTCHECKED,
  StackSetDriftStatus'
  #-}

instance Prelude.FromText StackSetDriftStatus where
  parser = StackSetDriftStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackSetDriftStatus where
  toText (StackSetDriftStatus' x) = x

instance Prelude.Hashable StackSetDriftStatus

instance Prelude.NFData StackSetDriftStatus

instance Prelude.ToByteString StackSetDriftStatus

instance Prelude.ToQuery StackSetDriftStatus

instance Prelude.ToHeader StackSetDriftStatus

instance Prelude.FromXML StackSetDriftStatus where
  parseXML = Prelude.parseXMLText "StackSetDriftStatus"
