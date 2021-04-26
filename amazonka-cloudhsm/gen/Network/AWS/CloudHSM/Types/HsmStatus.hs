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
-- Module      : Network.AWS.CloudHSM.Types.HsmStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSM.Types.HsmStatus
  ( HsmStatus
      ( ..,
        HsmStatusDEGRADED,
        HsmStatusPENDING,
        HsmStatusRUNNING,
        HsmStatusSUSPENDED,
        HsmStatusTERMINATED,
        HsmStatusTERMINATING,
        HsmStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HsmStatus = HsmStatus'
  { fromHsmStatus ::
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

pattern HsmStatusDEGRADED :: HsmStatus
pattern HsmStatusDEGRADED = HsmStatus' "DEGRADED"

pattern HsmStatusPENDING :: HsmStatus
pattern HsmStatusPENDING = HsmStatus' "PENDING"

pattern HsmStatusRUNNING :: HsmStatus
pattern HsmStatusRUNNING = HsmStatus' "RUNNING"

pattern HsmStatusSUSPENDED :: HsmStatus
pattern HsmStatusSUSPENDED = HsmStatus' "SUSPENDED"

pattern HsmStatusTERMINATED :: HsmStatus
pattern HsmStatusTERMINATED = HsmStatus' "TERMINATED"

pattern HsmStatusTERMINATING :: HsmStatus
pattern HsmStatusTERMINATING = HsmStatus' "TERMINATING"

pattern HsmStatusUPDATING :: HsmStatus
pattern HsmStatusUPDATING = HsmStatus' "UPDATING"

{-# COMPLETE
  HsmStatusDEGRADED,
  HsmStatusPENDING,
  HsmStatusRUNNING,
  HsmStatusSUSPENDED,
  HsmStatusTERMINATED,
  HsmStatusTERMINATING,
  HsmStatusUPDATING,
  HsmStatus'
  #-}

instance Prelude.FromText HsmStatus where
  parser = HsmStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText HsmStatus where
  toText (HsmStatus' x) = x

instance Prelude.Hashable HsmStatus

instance Prelude.NFData HsmStatus

instance Prelude.ToByteString HsmStatus

instance Prelude.ToQuery HsmStatus

instance Prelude.ToHeader HsmStatus

instance Prelude.FromJSON HsmStatus where
  parseJSON = Prelude.parseJSONText "HsmStatus"
