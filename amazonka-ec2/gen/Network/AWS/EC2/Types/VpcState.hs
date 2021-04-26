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
-- Module      : Network.AWS.EC2.Types.VpcState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpcState
  ( VpcState
      ( ..,
        VpcStateAvailable,
        VpcStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VpcState = VpcState'
  { fromVpcState ::
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

pattern VpcStateAvailable :: VpcState
pattern VpcStateAvailable = VpcState' "available"

pattern VpcStatePending :: VpcState
pattern VpcStatePending = VpcState' "pending"

{-# COMPLETE
  VpcStateAvailable,
  VpcStatePending,
  VpcState'
  #-}

instance Prelude.FromText VpcState where
  parser = VpcState' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpcState where
  toText (VpcState' x) = x

instance Prelude.Hashable VpcState

instance Prelude.NFData VpcState

instance Prelude.ToByteString VpcState

instance Prelude.ToQuery VpcState

instance Prelude.ToHeader VpcState

instance Prelude.FromXML VpcState where
  parseXML = Prelude.parseXMLText "VpcState"
