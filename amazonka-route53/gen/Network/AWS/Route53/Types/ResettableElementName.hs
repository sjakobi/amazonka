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
-- Module      : Network.AWS.Route53.Types.ResettableElementName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.ResettableElementName
  ( ResettableElementName
      ( ..,
        ResettableElementNameChildHealthChecks,
        ResettableElementNameFullyQualifiedDomainName,
        ResettableElementNameRegions,
        ResettableElementNameResourcePath
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype ResettableElementName = ResettableElementName'
  { fromResettableElementName ::
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

pattern ResettableElementNameChildHealthChecks :: ResettableElementName
pattern ResettableElementNameChildHealthChecks = ResettableElementName' "ChildHealthChecks"

pattern ResettableElementNameFullyQualifiedDomainName :: ResettableElementName
pattern ResettableElementNameFullyQualifiedDomainName = ResettableElementName' "FullyQualifiedDomainName"

pattern ResettableElementNameRegions :: ResettableElementName
pattern ResettableElementNameRegions = ResettableElementName' "Regions"

pattern ResettableElementNameResourcePath :: ResettableElementName
pattern ResettableElementNameResourcePath = ResettableElementName' "ResourcePath"

{-# COMPLETE
  ResettableElementNameChildHealthChecks,
  ResettableElementNameFullyQualifiedDomainName,
  ResettableElementNameRegions,
  ResettableElementNameResourcePath,
  ResettableElementName'
  #-}

instance Prelude.FromText ResettableElementName where
  parser = ResettableElementName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResettableElementName where
  toText (ResettableElementName' x) = x

instance Prelude.Hashable ResettableElementName

instance Prelude.NFData ResettableElementName

instance Prelude.ToByteString ResettableElementName

instance Prelude.ToQuery ResettableElementName

instance Prelude.ToHeader ResettableElementName

instance Prelude.ToXML ResettableElementName where
  toXML = Prelude.toXMLText
