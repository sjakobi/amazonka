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
-- Module      : Network.AWS.CodeBuild.Types.LanguageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.LanguageType
  ( LanguageType
      ( ..,
        LanguageTypeANDROID,
        LanguageTypeBASE,
        LanguageTypeDOCKER,
        LanguageTypeDOTNET,
        LanguageTypeGOLANG,
        LanguageTypeJAVA,
        LanguageTypeNODEJS,
        LanguageTypePHP,
        LanguageTypePYTHON,
        LanguageTypeRUBY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LanguageType = LanguageType'
  { fromLanguageType ::
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

pattern LanguageTypeANDROID :: LanguageType
pattern LanguageTypeANDROID = LanguageType' "ANDROID"

pattern LanguageTypeBASE :: LanguageType
pattern LanguageTypeBASE = LanguageType' "BASE"

pattern LanguageTypeDOCKER :: LanguageType
pattern LanguageTypeDOCKER = LanguageType' "DOCKER"

pattern LanguageTypeDOTNET :: LanguageType
pattern LanguageTypeDOTNET = LanguageType' "DOTNET"

pattern LanguageTypeGOLANG :: LanguageType
pattern LanguageTypeGOLANG = LanguageType' "GOLANG"

pattern LanguageTypeJAVA :: LanguageType
pattern LanguageTypeJAVA = LanguageType' "JAVA"

pattern LanguageTypeNODEJS :: LanguageType
pattern LanguageTypeNODEJS = LanguageType' "NODE_JS"

pattern LanguageTypePHP :: LanguageType
pattern LanguageTypePHP = LanguageType' "PHP"

pattern LanguageTypePYTHON :: LanguageType
pattern LanguageTypePYTHON = LanguageType' "PYTHON"

pattern LanguageTypeRUBY :: LanguageType
pattern LanguageTypeRUBY = LanguageType' "RUBY"

{-# COMPLETE
  LanguageTypeANDROID,
  LanguageTypeBASE,
  LanguageTypeDOCKER,
  LanguageTypeDOTNET,
  LanguageTypeGOLANG,
  LanguageTypeJAVA,
  LanguageTypeNODEJS,
  LanguageTypePHP,
  LanguageTypePYTHON,
  LanguageTypeRUBY,
  LanguageType'
  #-}

instance Prelude.FromText LanguageType where
  parser = LanguageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LanguageType where
  toText (LanguageType' x) = x

instance Prelude.Hashable LanguageType

instance Prelude.NFData LanguageType

instance Prelude.ToByteString LanguageType

instance Prelude.ToQuery LanguageType

instance Prelude.ToHeader LanguageType

instance Prelude.FromJSON LanguageType where
  parseJSON = Prelude.parseJSONText "LanguageType"
