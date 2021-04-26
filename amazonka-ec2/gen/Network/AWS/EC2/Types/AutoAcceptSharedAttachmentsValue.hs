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
-- Module      : Network.AWS.EC2.Types.AutoAcceptSharedAttachmentsValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AutoAcceptSharedAttachmentsValue
  ( AutoAcceptSharedAttachmentsValue
      ( ..,
        AutoAcceptSharedAttachmentsValueDisable,
        AutoAcceptSharedAttachmentsValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AutoAcceptSharedAttachmentsValue = AutoAcceptSharedAttachmentsValue'
  { fromAutoAcceptSharedAttachmentsValue ::
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

pattern AutoAcceptSharedAttachmentsValueDisable :: AutoAcceptSharedAttachmentsValue
pattern AutoAcceptSharedAttachmentsValueDisable = AutoAcceptSharedAttachmentsValue' "disable"

pattern AutoAcceptSharedAttachmentsValueEnable :: AutoAcceptSharedAttachmentsValue
pattern AutoAcceptSharedAttachmentsValueEnable = AutoAcceptSharedAttachmentsValue' "enable"

{-# COMPLETE
  AutoAcceptSharedAttachmentsValueDisable,
  AutoAcceptSharedAttachmentsValueEnable,
  AutoAcceptSharedAttachmentsValue'
  #-}

instance Prelude.FromText AutoAcceptSharedAttachmentsValue where
  parser = AutoAcceptSharedAttachmentsValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoAcceptSharedAttachmentsValue where
  toText (AutoAcceptSharedAttachmentsValue' x) = x

instance Prelude.Hashable AutoAcceptSharedAttachmentsValue

instance Prelude.NFData AutoAcceptSharedAttachmentsValue

instance Prelude.ToByteString AutoAcceptSharedAttachmentsValue

instance Prelude.ToQuery AutoAcceptSharedAttachmentsValue

instance Prelude.ToHeader AutoAcceptSharedAttachmentsValue

instance Prelude.FromXML AutoAcceptSharedAttachmentsValue where
  parseXML = Prelude.parseXMLText "AutoAcceptSharedAttachmentsValue"
