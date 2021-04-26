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
-- Module      : Network.AWS.CloudFormation.Types.StackDriftStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackDriftStatus
  ( StackDriftStatus
      ( ..,
        StackDriftStatusDRIFTED,
        StackDriftStatusINSYNC,
        StackDriftStatusNOTCHECKED,
        StackDriftStatusUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackDriftStatus = StackDriftStatus'
  { fromStackDriftStatus ::
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

pattern StackDriftStatusDRIFTED :: StackDriftStatus
pattern StackDriftStatusDRIFTED = StackDriftStatus' "DRIFTED"

pattern StackDriftStatusINSYNC :: StackDriftStatus
pattern StackDriftStatusINSYNC = StackDriftStatus' "IN_SYNC"

pattern StackDriftStatusNOTCHECKED :: StackDriftStatus
pattern StackDriftStatusNOTCHECKED = StackDriftStatus' "NOT_CHECKED"

pattern StackDriftStatusUNKNOWN :: StackDriftStatus
pattern StackDriftStatusUNKNOWN = StackDriftStatus' "UNKNOWN"

{-# COMPLETE
  StackDriftStatusDRIFTED,
  StackDriftStatusINSYNC,
  StackDriftStatusNOTCHECKED,
  StackDriftStatusUNKNOWN,
  StackDriftStatus'
  #-}

instance Prelude.FromText StackDriftStatus where
  parser = StackDriftStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackDriftStatus where
  toText (StackDriftStatus' x) = x

instance Prelude.Hashable StackDriftStatus

instance Prelude.NFData StackDriftStatus

instance Prelude.ToByteString StackDriftStatus

instance Prelude.ToQuery StackDriftStatus

instance Prelude.ToHeader StackDriftStatus

instance Prelude.FromXML StackDriftStatus where
  parseXML = Prelude.parseXMLText "StackDriftStatus"
