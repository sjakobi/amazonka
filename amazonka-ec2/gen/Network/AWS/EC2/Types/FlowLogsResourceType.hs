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
-- Module      : Network.AWS.EC2.Types.FlowLogsResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FlowLogsResourceType
  ( FlowLogsResourceType
      ( ..,
        FlowLogsResourceTypeNetworkInterface,
        FlowLogsResourceTypeSubnet,
        FlowLogsResourceTypeVPC
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FlowLogsResourceType = FlowLogsResourceType'
  { fromFlowLogsResourceType ::
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

pattern FlowLogsResourceTypeNetworkInterface :: FlowLogsResourceType
pattern FlowLogsResourceTypeNetworkInterface = FlowLogsResourceType' "NetworkInterface"

pattern FlowLogsResourceTypeSubnet :: FlowLogsResourceType
pattern FlowLogsResourceTypeSubnet = FlowLogsResourceType' "Subnet"

pattern FlowLogsResourceTypeVPC :: FlowLogsResourceType
pattern FlowLogsResourceTypeVPC = FlowLogsResourceType' "VPC"

{-# COMPLETE
  FlowLogsResourceTypeNetworkInterface,
  FlowLogsResourceTypeSubnet,
  FlowLogsResourceTypeVPC,
  FlowLogsResourceType'
  #-}

instance Prelude.FromText FlowLogsResourceType where
  parser = FlowLogsResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FlowLogsResourceType where
  toText (FlowLogsResourceType' x) = x

instance Prelude.Hashable FlowLogsResourceType

instance Prelude.NFData FlowLogsResourceType

instance Prelude.ToByteString FlowLogsResourceType

instance Prelude.ToQuery FlowLogsResourceType

instance Prelude.ToHeader FlowLogsResourceType
