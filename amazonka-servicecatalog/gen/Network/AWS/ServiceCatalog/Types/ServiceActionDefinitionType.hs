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
-- Module      : Network.AWS.ServiceCatalog.Types.ServiceActionDefinitionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ServiceActionDefinitionType
  ( ServiceActionDefinitionType
      ( ..,
        ServiceActionDefinitionTypeSSMAUTOMATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceActionDefinitionType = ServiceActionDefinitionType'
  { fromServiceActionDefinitionType ::
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

pattern ServiceActionDefinitionTypeSSMAUTOMATION :: ServiceActionDefinitionType
pattern ServiceActionDefinitionTypeSSMAUTOMATION = ServiceActionDefinitionType' "SSM_AUTOMATION"

{-# COMPLETE
  ServiceActionDefinitionTypeSSMAUTOMATION,
  ServiceActionDefinitionType'
  #-}

instance Prelude.FromText ServiceActionDefinitionType where
  parser = ServiceActionDefinitionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceActionDefinitionType where
  toText (ServiceActionDefinitionType' x) = x

instance Prelude.Hashable ServiceActionDefinitionType

instance Prelude.NFData ServiceActionDefinitionType

instance Prelude.ToByteString ServiceActionDefinitionType

instance Prelude.ToQuery ServiceActionDefinitionType

instance Prelude.ToHeader ServiceActionDefinitionType

instance Prelude.ToJSON ServiceActionDefinitionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ServiceActionDefinitionType where
  parseJSON = Prelude.parseJSONText "ServiceActionDefinitionType"
