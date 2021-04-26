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
-- Module      : Network.AWS.CloudFormation.Types.StackSetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetStatus
  ( StackSetStatus
      ( ..,
        StackSetStatusACTIVE,
        StackSetStatusDELETED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackSetStatus = StackSetStatus'
  { fromStackSetStatus ::
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

pattern StackSetStatusACTIVE :: StackSetStatus
pattern StackSetStatusACTIVE = StackSetStatus' "ACTIVE"

pattern StackSetStatusDELETED :: StackSetStatus
pattern StackSetStatusDELETED = StackSetStatus' "DELETED"

{-# COMPLETE
  StackSetStatusACTIVE,
  StackSetStatusDELETED,
  StackSetStatus'
  #-}

instance Prelude.FromText StackSetStatus where
  parser = StackSetStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackSetStatus where
  toText (StackSetStatus' x) = x

instance Prelude.Hashable StackSetStatus

instance Prelude.NFData StackSetStatus

instance Prelude.ToByteString StackSetStatus

instance Prelude.ToQuery StackSetStatus

instance Prelude.ToHeader StackSetStatus

instance Prelude.FromXML StackSetStatus where
  parseXML = Prelude.parseXMLText "StackSetStatus"
