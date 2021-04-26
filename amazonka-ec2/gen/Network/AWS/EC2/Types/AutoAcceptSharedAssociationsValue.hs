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
-- Module      : Network.AWS.EC2.Types.AutoAcceptSharedAssociationsValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AutoAcceptSharedAssociationsValue
  ( AutoAcceptSharedAssociationsValue
      ( ..,
        AutoAcceptSharedAssociationsValueDisable,
        AutoAcceptSharedAssociationsValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AutoAcceptSharedAssociationsValue = AutoAcceptSharedAssociationsValue'
  { fromAutoAcceptSharedAssociationsValue ::
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

pattern AutoAcceptSharedAssociationsValueDisable :: AutoAcceptSharedAssociationsValue
pattern AutoAcceptSharedAssociationsValueDisable = AutoAcceptSharedAssociationsValue' "disable"

pattern AutoAcceptSharedAssociationsValueEnable :: AutoAcceptSharedAssociationsValue
pattern AutoAcceptSharedAssociationsValueEnable = AutoAcceptSharedAssociationsValue' "enable"

{-# COMPLETE
  AutoAcceptSharedAssociationsValueDisable,
  AutoAcceptSharedAssociationsValueEnable,
  AutoAcceptSharedAssociationsValue'
  #-}

instance Prelude.FromText AutoAcceptSharedAssociationsValue where
  parser = AutoAcceptSharedAssociationsValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoAcceptSharedAssociationsValue where
  toText (AutoAcceptSharedAssociationsValue' x) = x

instance Prelude.Hashable AutoAcceptSharedAssociationsValue

instance Prelude.NFData AutoAcceptSharedAssociationsValue

instance Prelude.ToByteString AutoAcceptSharedAssociationsValue

instance Prelude.ToQuery AutoAcceptSharedAssociationsValue

instance Prelude.ToHeader AutoAcceptSharedAssociationsValue

instance Prelude.FromXML AutoAcceptSharedAssociationsValue where
  parseXML = Prelude.parseXMLText "AutoAcceptSharedAssociationsValue"
