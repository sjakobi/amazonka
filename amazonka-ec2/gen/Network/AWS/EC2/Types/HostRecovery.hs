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
-- Module      : Network.AWS.EC2.Types.HostRecovery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HostRecovery
  ( HostRecovery
      ( ..,
        HostRecoveryON,
        HostRecoveryOff
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype HostRecovery = HostRecovery'
  { fromHostRecovery ::
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

pattern HostRecoveryON :: HostRecovery
pattern HostRecoveryON = HostRecovery' "on"

pattern HostRecoveryOff :: HostRecovery
pattern HostRecoveryOff = HostRecovery' "off"

{-# COMPLETE
  HostRecoveryON,
  HostRecoveryOff,
  HostRecovery'
  #-}

instance Prelude.FromText HostRecovery where
  parser = HostRecovery' Prelude.<$> Prelude.takeText

instance Prelude.ToText HostRecovery where
  toText (HostRecovery' x) = x

instance Prelude.Hashable HostRecovery

instance Prelude.NFData HostRecovery

instance Prelude.ToByteString HostRecovery

instance Prelude.ToQuery HostRecovery

instance Prelude.ToHeader HostRecovery

instance Prelude.FromXML HostRecovery where
  parseXML = Prelude.parseXMLText "HostRecovery"
