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
-- Module      : Network.AWS.CloudFront.Types.OriginRequestPolicyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginRequestPolicyType
  ( OriginRequestPolicyType
      ( ..,
        OriginRequestPolicyTypeCustom,
        OriginRequestPolicyTypeManaged
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OriginRequestPolicyType = OriginRequestPolicyType'
  { fromOriginRequestPolicyType ::
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

pattern OriginRequestPolicyTypeCustom :: OriginRequestPolicyType
pattern OriginRequestPolicyTypeCustom = OriginRequestPolicyType' "custom"

pattern OriginRequestPolicyTypeManaged :: OriginRequestPolicyType
pattern OriginRequestPolicyTypeManaged = OriginRequestPolicyType' "managed"

{-# COMPLETE
  OriginRequestPolicyTypeCustom,
  OriginRequestPolicyTypeManaged,
  OriginRequestPolicyType'
  #-}

instance Prelude.FromText OriginRequestPolicyType where
  parser = OriginRequestPolicyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OriginRequestPolicyType where
  toText (OriginRequestPolicyType' x) = x

instance Prelude.Hashable OriginRequestPolicyType

instance Prelude.NFData OriginRequestPolicyType

instance Prelude.ToByteString OriginRequestPolicyType

instance Prelude.ToQuery OriginRequestPolicyType

instance Prelude.ToHeader OriginRequestPolicyType

instance Prelude.FromXML OriginRequestPolicyType where
  parseXML = Prelude.parseXMLText "OriginRequestPolicyType"

instance Prelude.ToXML OriginRequestPolicyType where
  toXML = Prelude.toXMLText
