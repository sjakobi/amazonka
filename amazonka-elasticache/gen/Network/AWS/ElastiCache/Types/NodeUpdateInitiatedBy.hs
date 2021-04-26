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
-- Module      : Network.AWS.ElastiCache.Types.NodeUpdateInitiatedBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.NodeUpdateInitiatedBy
  ( NodeUpdateInitiatedBy
      ( ..,
        NodeUpdateInitiatedByCustomer,
        NodeUpdateInitiatedBySystem
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NodeUpdateInitiatedBy = NodeUpdateInitiatedBy'
  { fromNodeUpdateInitiatedBy ::
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

pattern NodeUpdateInitiatedByCustomer :: NodeUpdateInitiatedBy
pattern NodeUpdateInitiatedByCustomer = NodeUpdateInitiatedBy' "customer"

pattern NodeUpdateInitiatedBySystem :: NodeUpdateInitiatedBy
pattern NodeUpdateInitiatedBySystem = NodeUpdateInitiatedBy' "system"

{-# COMPLETE
  NodeUpdateInitiatedByCustomer,
  NodeUpdateInitiatedBySystem,
  NodeUpdateInitiatedBy'
  #-}

instance Prelude.FromText NodeUpdateInitiatedBy where
  parser = NodeUpdateInitiatedBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText NodeUpdateInitiatedBy where
  toText (NodeUpdateInitiatedBy' x) = x

instance Prelude.Hashable NodeUpdateInitiatedBy

instance Prelude.NFData NodeUpdateInitiatedBy

instance Prelude.ToByteString NodeUpdateInitiatedBy

instance Prelude.ToQuery NodeUpdateInitiatedBy

instance Prelude.ToHeader NodeUpdateInitiatedBy

instance Prelude.FromXML NodeUpdateInitiatedBy where
  parseXML = Prelude.parseXMLText "NodeUpdateInitiatedBy"
