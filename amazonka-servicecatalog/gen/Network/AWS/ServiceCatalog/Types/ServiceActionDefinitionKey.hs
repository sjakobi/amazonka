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
-- Module      : Network.AWS.ServiceCatalog.Types.ServiceActionDefinitionKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ServiceActionDefinitionKey
  ( ServiceActionDefinitionKey
      ( ..,
        ServiceActionDefinitionKeyAssumeRole,
        ServiceActionDefinitionKeyName,
        ServiceActionDefinitionKeyParameters,
        ServiceActionDefinitionKeyVersion
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceActionDefinitionKey = ServiceActionDefinitionKey'
  { fromServiceActionDefinitionKey ::
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

pattern ServiceActionDefinitionKeyAssumeRole :: ServiceActionDefinitionKey
pattern ServiceActionDefinitionKeyAssumeRole = ServiceActionDefinitionKey' "AssumeRole"

pattern ServiceActionDefinitionKeyName :: ServiceActionDefinitionKey
pattern ServiceActionDefinitionKeyName = ServiceActionDefinitionKey' "Name"

pattern ServiceActionDefinitionKeyParameters :: ServiceActionDefinitionKey
pattern ServiceActionDefinitionKeyParameters = ServiceActionDefinitionKey' "Parameters"

pattern ServiceActionDefinitionKeyVersion :: ServiceActionDefinitionKey
pattern ServiceActionDefinitionKeyVersion = ServiceActionDefinitionKey' "Version"

{-# COMPLETE
  ServiceActionDefinitionKeyAssumeRole,
  ServiceActionDefinitionKeyName,
  ServiceActionDefinitionKeyParameters,
  ServiceActionDefinitionKeyVersion,
  ServiceActionDefinitionKey'
  #-}

instance Prelude.FromText ServiceActionDefinitionKey where
  parser = ServiceActionDefinitionKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceActionDefinitionKey where
  toText (ServiceActionDefinitionKey' x) = x

instance Prelude.Hashable ServiceActionDefinitionKey

instance Prelude.NFData ServiceActionDefinitionKey

instance Prelude.ToByteString ServiceActionDefinitionKey

instance Prelude.ToQuery ServiceActionDefinitionKey

instance Prelude.ToHeader ServiceActionDefinitionKey

instance Prelude.ToJSON ServiceActionDefinitionKey where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ServiceActionDefinitionKey where
  parseJSON = Prelude.parseJSONText "ServiceActionDefinitionKey"
