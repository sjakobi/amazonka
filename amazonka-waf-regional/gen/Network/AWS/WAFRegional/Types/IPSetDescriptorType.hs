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
-- Module      : Network.AWS.WAFRegional.Types.IPSetDescriptorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.IPSetDescriptorType
  ( IPSetDescriptorType
      ( ..,
        IPSetDescriptorTypeIPV4,
        IPSetDescriptorTypeIPV6
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IPSetDescriptorType = IPSetDescriptorType'
  { fromIPSetDescriptorType ::
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

pattern IPSetDescriptorTypeIPV4 :: IPSetDescriptorType
pattern IPSetDescriptorTypeIPV4 = IPSetDescriptorType' "IPV4"

pattern IPSetDescriptorTypeIPV6 :: IPSetDescriptorType
pattern IPSetDescriptorTypeIPV6 = IPSetDescriptorType' "IPV6"

{-# COMPLETE
  IPSetDescriptorTypeIPV4,
  IPSetDescriptorTypeIPV6,
  IPSetDescriptorType'
  #-}

instance Prelude.FromText IPSetDescriptorType where
  parser = IPSetDescriptorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText IPSetDescriptorType where
  toText (IPSetDescriptorType' x) = x

instance Prelude.Hashable IPSetDescriptorType

instance Prelude.NFData IPSetDescriptorType

instance Prelude.ToByteString IPSetDescriptorType

instance Prelude.ToQuery IPSetDescriptorType

instance Prelude.ToHeader IPSetDescriptorType

instance Prelude.ToJSON IPSetDescriptorType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON IPSetDescriptorType where
  parseJSON = Prelude.parseJSONText "IPSetDescriptorType"
