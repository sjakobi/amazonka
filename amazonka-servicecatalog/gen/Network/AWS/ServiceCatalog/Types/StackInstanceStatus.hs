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
-- Module      : Network.AWS.ServiceCatalog.Types.StackInstanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.StackInstanceStatus
  ( StackInstanceStatus
      ( ..,
        StackInstanceStatusCURRENT,
        StackInstanceStatusINOPERABLE,
        StackInstanceStatusOUTDATED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackInstanceStatus = StackInstanceStatus'
  { fromStackInstanceStatus ::
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

pattern StackInstanceStatusCURRENT :: StackInstanceStatus
pattern StackInstanceStatusCURRENT = StackInstanceStatus' "CURRENT"

pattern StackInstanceStatusINOPERABLE :: StackInstanceStatus
pattern StackInstanceStatusINOPERABLE = StackInstanceStatus' "INOPERABLE"

pattern StackInstanceStatusOUTDATED :: StackInstanceStatus
pattern StackInstanceStatusOUTDATED = StackInstanceStatus' "OUTDATED"

{-# COMPLETE
  StackInstanceStatusCURRENT,
  StackInstanceStatusINOPERABLE,
  StackInstanceStatusOUTDATED,
  StackInstanceStatus'
  #-}

instance Prelude.FromText StackInstanceStatus where
  parser = StackInstanceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackInstanceStatus where
  toText (StackInstanceStatus' x) = x

instance Prelude.Hashable StackInstanceStatus

instance Prelude.NFData StackInstanceStatus

instance Prelude.ToByteString StackInstanceStatus

instance Prelude.ToQuery StackInstanceStatus

instance Prelude.ToHeader StackInstanceStatus

instance Prelude.FromJSON StackInstanceStatus where
  parseJSON = Prelude.parseJSONText "StackInstanceStatus"
