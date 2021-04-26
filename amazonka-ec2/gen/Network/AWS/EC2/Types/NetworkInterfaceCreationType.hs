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
-- Module      : Network.AWS.EC2.Types.NetworkInterfaceCreationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfaceCreationType
  ( NetworkInterfaceCreationType
      ( ..,
        NetworkInterfaceCreationTypeEfa
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype NetworkInterfaceCreationType = NetworkInterfaceCreationType'
  { fromNetworkInterfaceCreationType ::
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

pattern NetworkInterfaceCreationTypeEfa :: NetworkInterfaceCreationType
pattern NetworkInterfaceCreationTypeEfa = NetworkInterfaceCreationType' "efa"

{-# COMPLETE
  NetworkInterfaceCreationTypeEfa,
  NetworkInterfaceCreationType'
  #-}

instance Prelude.FromText NetworkInterfaceCreationType where
  parser = NetworkInterfaceCreationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkInterfaceCreationType where
  toText (NetworkInterfaceCreationType' x) = x

instance Prelude.Hashable NetworkInterfaceCreationType

instance Prelude.NFData NetworkInterfaceCreationType

instance Prelude.ToByteString NetworkInterfaceCreationType

instance Prelude.ToQuery NetworkInterfaceCreationType

instance Prelude.ToHeader NetworkInterfaceCreationType
