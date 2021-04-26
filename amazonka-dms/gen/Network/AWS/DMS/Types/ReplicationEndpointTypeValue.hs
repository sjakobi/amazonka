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
-- Module      : Network.AWS.DMS.Types.ReplicationEndpointTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReplicationEndpointTypeValue
  ( ReplicationEndpointTypeValue
      ( ..,
        ReplicationEndpointTypeValueSource,
        ReplicationEndpointTypeValueTarget
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplicationEndpointTypeValue = ReplicationEndpointTypeValue'
  { fromReplicationEndpointTypeValue ::
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

pattern ReplicationEndpointTypeValueSource :: ReplicationEndpointTypeValue
pattern ReplicationEndpointTypeValueSource = ReplicationEndpointTypeValue' "source"

pattern ReplicationEndpointTypeValueTarget :: ReplicationEndpointTypeValue
pattern ReplicationEndpointTypeValueTarget = ReplicationEndpointTypeValue' "target"

{-# COMPLETE
  ReplicationEndpointTypeValueSource,
  ReplicationEndpointTypeValueTarget,
  ReplicationEndpointTypeValue'
  #-}

instance Prelude.FromText ReplicationEndpointTypeValue where
  parser = ReplicationEndpointTypeValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicationEndpointTypeValue where
  toText (ReplicationEndpointTypeValue' x) = x

instance Prelude.Hashable ReplicationEndpointTypeValue

instance Prelude.NFData ReplicationEndpointTypeValue

instance Prelude.ToByteString ReplicationEndpointTypeValue

instance Prelude.ToQuery ReplicationEndpointTypeValue

instance Prelude.ToHeader ReplicationEndpointTypeValue

instance Prelude.ToJSON ReplicationEndpointTypeValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ReplicationEndpointTypeValue where
  parseJSON = Prelude.parseJSONText "ReplicationEndpointTypeValue"
