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
-- Module      : Network.AWS.EC2.Types.ProtocolValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ProtocolValue
  ( ProtocolValue
      ( ..,
        ProtocolValueGre
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ProtocolValue = ProtocolValue'
  { fromProtocolValue ::
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

pattern ProtocolValueGre :: ProtocolValue
pattern ProtocolValueGre = ProtocolValue' "gre"

{-# COMPLETE
  ProtocolValueGre,
  ProtocolValue'
  #-}

instance Prelude.FromText ProtocolValue where
  parser = ProtocolValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProtocolValue where
  toText (ProtocolValue' x) = x

instance Prelude.Hashable ProtocolValue

instance Prelude.NFData ProtocolValue

instance Prelude.ToByteString ProtocolValue

instance Prelude.ToQuery ProtocolValue

instance Prelude.ToHeader ProtocolValue

instance Prelude.FromXML ProtocolValue where
  parseXML = Prelude.parseXMLText "ProtocolValue"
