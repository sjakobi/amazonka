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
-- Module      : Network.AWS.Route53.Types.TagResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.TagResourceType
  ( TagResourceType
      ( ..,
        TagResourceTypeHealthcheck,
        TagResourceTypeHostedzone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype TagResourceType = TagResourceType'
  { fromTagResourceType ::
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

pattern TagResourceTypeHealthcheck :: TagResourceType
pattern TagResourceTypeHealthcheck = TagResourceType' "healthcheck"

pattern TagResourceTypeHostedzone :: TagResourceType
pattern TagResourceTypeHostedzone = TagResourceType' "hostedzone"

{-# COMPLETE
  TagResourceTypeHealthcheck,
  TagResourceTypeHostedzone,
  TagResourceType'
  #-}

instance Prelude.FromText TagResourceType where
  parser = TagResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TagResourceType where
  toText (TagResourceType' x) = x

instance Prelude.Hashable TagResourceType

instance Prelude.NFData TagResourceType

instance Prelude.ToByteString TagResourceType

instance Prelude.ToQuery TagResourceType

instance Prelude.ToHeader TagResourceType

instance Prelude.FromXML TagResourceType where
  parseXML = Prelude.parseXMLText "TagResourceType"

instance Prelude.ToXML TagResourceType where
  toXML = Prelude.toXMLText
