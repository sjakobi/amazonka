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
-- Module      : Network.AWS.SSM.Types.ParameterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ParameterType
  ( ParameterType
      ( ..,
        ParameterTypeSecureString,
        ParameterTypeString,
        ParameterTypeStringList
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ParameterType = ParameterType'
  { fromParameterType ::
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

pattern ParameterTypeSecureString :: ParameterType
pattern ParameterTypeSecureString = ParameterType' "SecureString"

pattern ParameterTypeString :: ParameterType
pattern ParameterTypeString = ParameterType' "String"

pattern ParameterTypeStringList :: ParameterType
pattern ParameterTypeStringList = ParameterType' "StringList"

{-# COMPLETE
  ParameterTypeSecureString,
  ParameterTypeString,
  ParameterTypeStringList,
  ParameterType'
  #-}

instance Prelude.FromText ParameterType where
  parser = ParameterType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ParameterType where
  toText (ParameterType' x) = x

instance Prelude.Hashable ParameterType

instance Prelude.NFData ParameterType

instance Prelude.ToByteString ParameterType

instance Prelude.ToQuery ParameterType

instance Prelude.ToHeader ParameterType

instance Prelude.ToJSON ParameterType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ParameterType where
  parseJSON = Prelude.parseJSONText "ParameterType"
