{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ChildHealthChecks,
        FullyQualifiedDomainName,
        Regions,
        ResourcePath
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

data ResettableElementName
  = ResettableElementName'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ChildHealthChecks :: ResettableElementName
pattern ChildHealthChecks = ResettableElementName' "ChildHealthChecks"

pattern FullyQualifiedDomainName :: ResettableElementName
pattern FullyQualifiedDomainName = ResettableElementName' "FullyQualifiedDomainName"

pattern Regions :: ResettableElementName
pattern Regions = ResettableElementName' "Regions"

pattern ResourcePath :: ResettableElementName
pattern ResourcePath = ResettableElementName' "ResourcePath"

{-# COMPLETE
  ChildHealthChecks,
  FullyQualifiedDomainName,
  Regions,
  ResourcePath,
  ResettableElementName'
  #-}

instance FromText ResettableElementName where
  parser = (ResettableElementName' . mk) <$> takeText

instance ToText ResettableElementName where
  toText (ResettableElementName' ci) = original ci

instance Hashable ResettableElementName

instance NFData ResettableElementName

instance ToByteString ResettableElementName

instance ToQuery ResettableElementName

instance ToHeader ResettableElementName

instance ToXML ResettableElementName where
  toXML = toXMLText
