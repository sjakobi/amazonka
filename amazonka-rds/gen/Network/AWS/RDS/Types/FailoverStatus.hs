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
-- Module      : Network.AWS.RDS.Types.FailoverStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.FailoverStatus
  ( FailoverStatus
      ( ..,
        FailoverStatusCancelling,
        FailoverStatusFailingOver,
        FailoverStatusPending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FailoverStatus = FailoverStatus'
  { fromFailoverStatus ::
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

pattern FailoverStatusCancelling :: FailoverStatus
pattern FailoverStatusCancelling = FailoverStatus' "cancelling"

pattern FailoverStatusFailingOver :: FailoverStatus
pattern FailoverStatusFailingOver = FailoverStatus' "failing-over"

pattern FailoverStatusPending :: FailoverStatus
pattern FailoverStatusPending = FailoverStatus' "pending"

{-# COMPLETE
  FailoverStatusCancelling,
  FailoverStatusFailingOver,
  FailoverStatusPending,
  FailoverStatus'
  #-}

instance Prelude.FromText FailoverStatus where
  parser = FailoverStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText FailoverStatus where
  toText (FailoverStatus' x) = x

instance Prelude.Hashable FailoverStatus

instance Prelude.NFData FailoverStatus

instance Prelude.ToByteString FailoverStatus

instance Prelude.ToQuery FailoverStatus

instance Prelude.ToHeader FailoverStatus

instance Prelude.FromXML FailoverStatus where
  parseXML = Prelude.parseXMLText "FailoverStatus"
