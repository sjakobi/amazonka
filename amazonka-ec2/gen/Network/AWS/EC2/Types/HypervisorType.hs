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
-- Module      : Network.AWS.EC2.Types.HypervisorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HypervisorType
  ( HypervisorType
      ( ..,
        HypervisorTypeOvm,
        HypervisorTypeXen
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype HypervisorType = HypervisorType'
  { fromHypervisorType ::
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

pattern HypervisorTypeOvm :: HypervisorType
pattern HypervisorTypeOvm = HypervisorType' "ovm"

pattern HypervisorTypeXen :: HypervisorType
pattern HypervisorTypeXen = HypervisorType' "xen"

{-# COMPLETE
  HypervisorTypeOvm,
  HypervisorTypeXen,
  HypervisorType'
  #-}

instance Prelude.FromText HypervisorType where
  parser = HypervisorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HypervisorType where
  toText (HypervisorType' x) = x

instance Prelude.Hashable HypervisorType

instance Prelude.NFData HypervisorType

instance Prelude.ToByteString HypervisorType

instance Prelude.ToQuery HypervisorType

instance Prelude.ToHeader HypervisorType

instance Prelude.FromXML HypervisorType where
  parseXML = Prelude.parseXMLText "HypervisorType"
