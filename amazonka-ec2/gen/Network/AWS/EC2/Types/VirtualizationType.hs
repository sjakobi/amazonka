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
-- Module      : Network.AWS.EC2.Types.VirtualizationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VirtualizationType
  ( VirtualizationType
      ( ..,
        VirtualizationTypeHvm,
        VirtualizationTypeParavirtual
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VirtualizationType = VirtualizationType'
  { fromVirtualizationType ::
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

pattern VirtualizationTypeHvm :: VirtualizationType
pattern VirtualizationTypeHvm = VirtualizationType' "hvm"

pattern VirtualizationTypeParavirtual :: VirtualizationType
pattern VirtualizationTypeParavirtual = VirtualizationType' "paravirtual"

{-# COMPLETE
  VirtualizationTypeHvm,
  VirtualizationTypeParavirtual,
  VirtualizationType'
  #-}

instance Prelude.FromText VirtualizationType where
  parser = VirtualizationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText VirtualizationType where
  toText (VirtualizationType' x) = x

instance Prelude.Hashable VirtualizationType

instance Prelude.NFData VirtualizationType

instance Prelude.ToByteString VirtualizationType

instance Prelude.ToQuery VirtualizationType

instance Prelude.ToHeader VirtualizationType

instance Prelude.FromXML VirtualizationType where
  parseXML = Prelude.parseXMLText "VirtualizationType"
