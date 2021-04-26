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
-- Module      : Network.AWS.CodeBuild.Types.EnvironmentVariableType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.EnvironmentVariableType
  ( EnvironmentVariableType
      ( ..,
        EnvironmentVariableTypePARAMETERSTORE,
        EnvironmentVariableTypePLAINTEXT,
        EnvironmentVariableTypeSECRETSMANAGER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentVariableType = EnvironmentVariableType'
  { fromEnvironmentVariableType ::
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

pattern EnvironmentVariableTypePARAMETERSTORE :: EnvironmentVariableType
pattern EnvironmentVariableTypePARAMETERSTORE = EnvironmentVariableType' "PARAMETER_STORE"

pattern EnvironmentVariableTypePLAINTEXT :: EnvironmentVariableType
pattern EnvironmentVariableTypePLAINTEXT = EnvironmentVariableType' "PLAINTEXT"

pattern EnvironmentVariableTypeSECRETSMANAGER :: EnvironmentVariableType
pattern EnvironmentVariableTypeSECRETSMANAGER = EnvironmentVariableType' "SECRETS_MANAGER"

{-# COMPLETE
  EnvironmentVariableTypePARAMETERSTORE,
  EnvironmentVariableTypePLAINTEXT,
  EnvironmentVariableTypeSECRETSMANAGER,
  EnvironmentVariableType'
  #-}

instance Prelude.FromText EnvironmentVariableType where
  parser = EnvironmentVariableType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentVariableType where
  toText (EnvironmentVariableType' x) = x

instance Prelude.Hashable EnvironmentVariableType

instance Prelude.NFData EnvironmentVariableType

instance Prelude.ToByteString EnvironmentVariableType

instance Prelude.ToQuery EnvironmentVariableType

instance Prelude.ToHeader EnvironmentVariableType

instance Prelude.ToJSON EnvironmentVariableType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EnvironmentVariableType where
  parseJSON = Prelude.parseJSONText "EnvironmentVariableType"
