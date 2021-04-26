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
-- Module      : Network.AWS.EC2.Types.AddressStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AddressStatus
  ( AddressStatus
      ( ..,
        AddressStatusInClassic,
        AddressStatusInVpc,
        AddressStatusMoveInProgress
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AddressStatus = AddressStatus'
  { fromAddressStatus ::
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

pattern AddressStatusInClassic :: AddressStatus
pattern AddressStatusInClassic = AddressStatus' "InClassic"

pattern AddressStatusInVpc :: AddressStatus
pattern AddressStatusInVpc = AddressStatus' "InVpc"

pattern AddressStatusMoveInProgress :: AddressStatus
pattern AddressStatusMoveInProgress = AddressStatus' "MoveInProgress"

{-# COMPLETE
  AddressStatusInClassic,
  AddressStatusInVpc,
  AddressStatusMoveInProgress,
  AddressStatus'
  #-}

instance Prelude.FromText AddressStatus where
  parser = AddressStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AddressStatus where
  toText (AddressStatus' x) = x

instance Prelude.Hashable AddressStatus

instance Prelude.NFData AddressStatus

instance Prelude.ToByteString AddressStatus

instance Prelude.ToQuery AddressStatus

instance Prelude.ToHeader AddressStatus

instance Prelude.FromXML AddressStatus where
  parseXML = Prelude.parseXMLText "AddressStatus"
