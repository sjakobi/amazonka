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
-- Module      : Network.AWS.CodePipeline.Types.ActionConfigurationPropertyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionConfigurationPropertyType
  ( ActionConfigurationPropertyType
      ( ..,
        ActionConfigurationPropertyTypeBoolean,
        ActionConfigurationPropertyTypeNumber,
        ActionConfigurationPropertyTypeString
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionConfigurationPropertyType = ActionConfigurationPropertyType'
  { fromActionConfigurationPropertyType ::
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

pattern ActionConfigurationPropertyTypeBoolean :: ActionConfigurationPropertyType
pattern ActionConfigurationPropertyTypeBoolean = ActionConfigurationPropertyType' "Boolean"

pattern ActionConfigurationPropertyTypeNumber :: ActionConfigurationPropertyType
pattern ActionConfigurationPropertyTypeNumber = ActionConfigurationPropertyType' "Number"

pattern ActionConfigurationPropertyTypeString :: ActionConfigurationPropertyType
pattern ActionConfigurationPropertyTypeString = ActionConfigurationPropertyType' "String"

{-# COMPLETE
  ActionConfigurationPropertyTypeBoolean,
  ActionConfigurationPropertyTypeNumber,
  ActionConfigurationPropertyTypeString,
  ActionConfigurationPropertyType'
  #-}

instance Prelude.FromText ActionConfigurationPropertyType where
  parser = ActionConfigurationPropertyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionConfigurationPropertyType where
  toText (ActionConfigurationPropertyType' x) = x

instance Prelude.Hashable ActionConfigurationPropertyType

instance Prelude.NFData ActionConfigurationPropertyType

instance Prelude.ToByteString ActionConfigurationPropertyType

instance Prelude.ToQuery ActionConfigurationPropertyType

instance Prelude.ToHeader ActionConfigurationPropertyType

instance Prelude.ToJSON ActionConfigurationPropertyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ActionConfigurationPropertyType where
  parseJSON = Prelude.parseJSONText "ActionConfigurationPropertyType"
