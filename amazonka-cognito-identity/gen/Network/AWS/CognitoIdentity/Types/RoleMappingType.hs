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
-- Module      : Network.AWS.CognitoIdentity.Types.RoleMappingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.RoleMappingType
  ( RoleMappingType
      ( ..,
        RoleMappingTypeRules,
        RoleMappingTypeToken
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RoleMappingType = RoleMappingType'
  { fromRoleMappingType ::
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

pattern RoleMappingTypeRules :: RoleMappingType
pattern RoleMappingTypeRules = RoleMappingType' "Rules"

pattern RoleMappingTypeToken :: RoleMappingType
pattern RoleMappingTypeToken = RoleMappingType' "Token"

{-# COMPLETE
  RoleMappingTypeRules,
  RoleMappingTypeToken,
  RoleMappingType'
  #-}

instance Prelude.FromText RoleMappingType where
  parser = RoleMappingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RoleMappingType where
  toText (RoleMappingType' x) = x

instance Prelude.Hashable RoleMappingType

instance Prelude.NFData RoleMappingType

instance Prelude.ToByteString RoleMappingType

instance Prelude.ToQuery RoleMappingType

instance Prelude.ToHeader RoleMappingType

instance Prelude.ToJSON RoleMappingType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RoleMappingType where
  parseJSON = Prelude.parseJSONText "RoleMappingType"
