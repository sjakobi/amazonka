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
-- Module      : Network.AWS.GuardDuty.Types.IpSetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.IpSetStatus
  ( IpSetStatus
      ( ..,
        IpSetStatusACTIVATING,
        IpSetStatusACTIVE,
        IpSetStatusDEACTIVATING,
        IpSetStatusDELETED,
        IpSetStatusDELETEPENDING,
        IpSetStatusERROR,
        IpSetStatusINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IpSetStatus = IpSetStatus'
  { fromIpSetStatus ::
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

pattern IpSetStatusACTIVATING :: IpSetStatus
pattern IpSetStatusACTIVATING = IpSetStatus' "ACTIVATING"

pattern IpSetStatusACTIVE :: IpSetStatus
pattern IpSetStatusACTIVE = IpSetStatus' "ACTIVE"

pattern IpSetStatusDEACTIVATING :: IpSetStatus
pattern IpSetStatusDEACTIVATING = IpSetStatus' "DEACTIVATING"

pattern IpSetStatusDELETED :: IpSetStatus
pattern IpSetStatusDELETED = IpSetStatus' "DELETED"

pattern IpSetStatusDELETEPENDING :: IpSetStatus
pattern IpSetStatusDELETEPENDING = IpSetStatus' "DELETE_PENDING"

pattern IpSetStatusERROR :: IpSetStatus
pattern IpSetStatusERROR = IpSetStatus' "ERROR"

pattern IpSetStatusINACTIVE :: IpSetStatus
pattern IpSetStatusINACTIVE = IpSetStatus' "INACTIVE"

{-# COMPLETE
  IpSetStatusACTIVATING,
  IpSetStatusACTIVE,
  IpSetStatusDEACTIVATING,
  IpSetStatusDELETED,
  IpSetStatusDELETEPENDING,
  IpSetStatusERROR,
  IpSetStatusINACTIVE,
  IpSetStatus'
  #-}

instance Prelude.FromText IpSetStatus where
  parser = IpSetStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText IpSetStatus where
  toText (IpSetStatus' x) = x

instance Prelude.Hashable IpSetStatus

instance Prelude.NFData IpSetStatus

instance Prelude.ToByteString IpSetStatus

instance Prelude.ToQuery IpSetStatus

instance Prelude.ToHeader IpSetStatus

instance Prelude.FromJSON IpSetStatus where
  parseJSON = Prelude.parseJSONText "IpSetStatus"
